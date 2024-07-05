pipeline {
    agent any
 environment {
        OUTPUT_PATH = 'C:\\Users\\arti.tripathi\\Desktop\\Python_Script\\Reports'
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
                    if (isUnix()) {
                        sh './test.sh'
                    } 
					// else
     //                {
     //                    bat 'test.bat'
     //                }
                }
            }
        }
    }
}
