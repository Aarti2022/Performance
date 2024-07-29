pipeline {
    agent any
 environment {
        OUTPUT_PATH = 'C:\\Users\\arti.tripathi\\Desktop\\Python_Script\\Results'
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
                    cd C:\\Users\\arti.tripathi\\Downloads\\Data\\Performance-1

                    # Ensure the script has execute permissions (optional)
                    icacls test.sh /grant Everyone:F

                    # Execute the script
                    ./test.sh
                '''
                }
            }
        }
    }
}
