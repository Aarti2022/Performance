pipeline {
    agent any
 environment {
        OUTPUT_PATH = 'C:\Users\arti.tripathi\Desktop\Python_Script\Generatedreport'
}
    stages {
        stage('Checkout') {
            steps {
                // Checkout the repository from GitHub
                git url: 'https://github.com/Aarti2022/Performance.git', branch: 'main'
            }
        }
        
        stage('Run Script') {
            steps {
                // Execute the shell script
                script {
                    
                 powershell '''
                    # Navigate to the script directory
                    C:\Users\arti.tripathi\Desktop\Python_Script\script.ps1

                    # Ensure the script has execute permissions (optional)
                    icacls script.ps1 /grant Everyone:F

                    # Execute the script
                    ./script.ps1
                '''
                }
            }
        }
    }
}
