Looking at the existing README compared to the actual codebase, I found several discrepancies and areas for improvement:

1. **File structure mismatch**: README references `resources/db_code.sql` but actual file is `resources/dp_code.sql`
2. **Installation steps incomplete**: Missing specific compilation and execution commands
3. **Technical details lacking**: No mention of Swing GUI framework used
4. **Database connection details vague**: Could be more specific about configuration
5. **Code structure not explained**: No mention of the package structure

Here's a corrected and improved README:

```markdown
# Disease Predictor - Medical Diagnosis Application

A Java Swing-based desktop application that helps predict potential diseases based on user-selected symptoms. The application uses a MySQL database to store symptoms, diseases, and their relationships, providing an intuitive GUI for medical diagnosis assistance.

## Features

- **Interactive Symptom Selection**: Choose from a comprehensive list of symptoms via checkboxes
- **Disease Prediction**: Get possible diseases based on selected symptom combinations
- **Detailed Disease Information**: View descriptions and details of predicted diseases
- **Scrollable Interface**: User-friendly GUI with scrollable panels for better navigation
- **Database-Driven**: MySQL backend for reliable data storage and retrieval

## Tech Stack

- **Language**: Java 8+
- **GUI Framework**: Java Swing
- **Database**: MySQL
- **JDBC**: MySQL Connector/J
- **Architecture**: Desktop application with database connectivity

## Prerequisites

- Java Development Kit (JDK) 8 or higher
- MySQL Server 5.7+ or MySQL 8.0+
- MySQL JDBC Driver (mysql-connector-java)

## Installation & Setup

### 1. Clone the Repository

```bash
git clone https://github.com/np-nandanpatil/Disease-Predictor_Medical-Diagnosis-Application.git
cd Disease-Predictor_Medical-Diagnosis-Application
```

### 2. Database Setup

1. Create a MySQL database:
   ```sql
   CREATE DATABASE DiseasePredictor;
   ```

2. Import the database schema and sample data:
   ```bash
   mysql -u your_username -p DiseasePredictor < resources/dp_code.sql
   ```

### 3. Configure Database Connection

Update the `connectToDB()` method in `diseasepredictor/Main.java` with your MySQL credentials:

```java
private void connectToDB() throws SQLException {
    String url = "jdbc:mysql://localhost:3306/DiseasePredictor";
    String username = "your_mysql_username";
    String password = "your_mysql_password";
    conn = DriverManager.getConnection(url, username, password);
}
```

### 4. Download MySQL JDBC Driver

Download `mysql-connector-java-x.x.x.jar` and add it to your classpath.

### 5. Compile and Run

```bash
# Compile (ensure MySQL JDBC driver is in classpath)
javac -cp ".:mysql-connector-java-x.x.x.jar" diseasepredictor/Main.java

# Run
java -cp ".:mysql-connector-java-x.x.x.jar" diseasepredictor.Main
```

## Usage

1. **Launch Application**: Execute the compiled `Main.java` file
2. **Select Symptoms**: The GUI displays a scrollable list of available symptoms - check boxes for symptoms you're experiencing
3. **Get Diagnosis**: Click the "Diagnose" button to analyze selected symptoms
4. **View Results**: Possible diseases and their descriptions will appear in the results area

## Project Structure

```
Disease-Predictor_Medical-Diagnosis-Application/
├── README.md
├── diseasepredictor/
│   └── Main.java              # Main application class with GUI and database logic
└── resources/
    └── dp_code.sql           # Database schema and sample data
```

## Database Schema

The application expects the following MySQL tables:
- `Symptoms` - Contains symptom information
- `Diseases` - Contains disease information and descriptions
- Relationship tables linking symptoms to diseases

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-feature`)
3. Commit changes (`git commit -am 'Add new feature'`)
4. Push to branch (`git push origin feature/new-feature`)
5. Create a Pull Request

## Disclaimer

⚠️ **Important**: This application is for educational and informational purposes only. It should not be used as a substitute for professional medical advice, diagnosis, or treatment. Always consult qualified healthcare professionals for medical concerns.

## Author

Created by [np-nandanpatil](https://github.com/np-nandanpatil)

## Contact

For questions, issues, or suggestions, please:
- Open an issue on [GitHub](https://github.com/np-nandanpatil/Disease-Predictor_Medical-Diagnosis-Application/issues)
- Contact the author through GitHub

## License

This project is open source. Please check the repository for license details.
```