package diseasepredictor;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Main extends JFrame {

    private final List<JCheckBox> symptomCheckBoxes = new ArrayList<>();
    private final JTextArea resultArea = new JTextArea(10, 30);
    private Connection conn;

    public Main() {
        setTitle("Medical Diagnosis Application");
        setSize(600, 700);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLayout(new BorderLayout());

        JPanel symptomsPanel = new JPanel();
        symptomsPanel.setLayout(new GridLayout(0, 1));

        try {
            connectToDB();
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM Symptoms");

            while (rs.next()) {
                JCheckBox checkBox = new JCheckBox(rs.getString("name"));
                symptomCheckBoxes.add(checkBox);
                symptomsPanel.add(checkBox);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        JButton diagnoseButton = new JButton("Diagnose");
        diagnoseButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                diagnose();
            }
        });

        resultArea.setEditable(false);

        add(new JScrollPane(symptomsPanel), BorderLayout.CENTER);
        add(diagnoseButton, BorderLayout.SOUTH);
        add(new JScrollPane(resultArea), BorderLayout.NORTH);
    }

    private void connectToDB() {
        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:0305/diseasepredictor", "root", "myPass");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void diagnose() {
        List<Integer> selectedSymptomIds = new ArrayList<>();

        try {
            for (JCheckBox checkBox : symptomCheckBoxes) {
                if (checkBox.isSelected()) {
                    Statement statement = conn.createStatement();
                    ResultSet rs = statement.executeQuery("SELECT id FROM Symptoms WHERE name = '" + checkBox.getText() + "'");
                    if (rs.next()) {
                        selectedSymptomIds.add(rs.getInt("id"));
                    }
                }
            }

            if (selectedSymptomIds.isEmpty()) {
                resultArea.setText("No symptoms selected.");
                return;
            }

            String query = buildDiagnosisQuery(selectedSymptomIds);
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery(query);

            StringBuilder diagnosisResult = new StringBuilder();
            int i = 1;
            while (rs.next()) {
                diagnosisResult.append(i++).append(") ").append(rs.getString("name"))
                        .append(": ")
                        .append(rs.getString("description"))
                        .append("\n");
            }

            if (diagnosisResult.isEmpty()) {
                resultArea.setText("No matching diseases found.");
            } else {
                resultArea.setText(diagnosisResult.toString());
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private String buildDiagnosisQuery(List<Integer> symptomIds) {
        StringBuilder query = new StringBuilder(
                "SELECT d.name, d.description FROM Diseases d JOIN DiseaseSymptoms ds ON d.id = ds.disease_id WHERE ds.symptom_id IN (");

        for (int i = 0; i < symptomIds.size(); i++) {
            query.append(symptomIds.get(i));
            if (i < symptomIds.size() - 1) {
                query.append(", ");
            }
        }

        query.append(") GROUP BY d.id HAVING COUNT(DISTINCT ds.symptom_id) >= 1 ORDER BY COUNT(DISTINCT ds.symptom_id) DESC");
        return query.toString();
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                new Main().setVisible(true);
            }
        });
    }
}

