# Disease Predictor

A Java application that helps diagnose diseases based on selected symptoms. This project uses a MySQL database to store symptoms and diseases and their relationships.

## Features

- Select symptoms from a list.
- Click "Diagnose" to get a list of possible diseases based on selected symptoms.
- View detailed descriptions of the diseases.

## Requirements

- Java 8 or higher
- MySQL Database
- MySQL JDBC Driver

## Setup

1. **Clone the Repository**

   ```sh
   git clone https://github.com/np-nandanpatil/Disease-Predictor_Medical-Diagnosis-Application.git
   
   cd diseasepredictor
   ```

2. **Set Up the Database**

    - Create a MySQL database named `DiseasePredictor`.
    - Run the provided SQL script (`db_code.sql`) to set up the necessary tables and sample data.

3. **Configure Database Connection**

    - Update the `connectToDB()` method in `Main.java` with your MySQL database credentials.

4. **Compile and Run**

   ```sh
   javac -cp .:mysql-connector-java.jar diseasepredictor/Main.java
   
   java -cp .:mysql-connector-java.jar diseasepredictor.Main
   ```

## Usage

1. **Launch the Application**

    - Run the application using the command above.
    - The GUI will open, displaying a list of symptoms.

2. **Diagnose**

    - Select the symptoms you are experiencing.
    - Click the "Diagnose" button to see possible diseases and their descriptions.

## Contact

For any questions or issues, please open an issue on the [GitHub repository](https://github.com/np-nandanpatil/Disease-Predictor_Medical-Diagnosis-Application.git).
