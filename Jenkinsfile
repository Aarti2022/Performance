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
                    
                         // Ensure the script has execute permissions
                //sh 'chmod +x ./test.sh'
                
                // Execute the script using the full path to the shell
                sh 'sh C:/Users/arti.tripathi/Downloads/Data/Performance-1/test.sh'
                    
					// else
     //                {
     //                    bat 'test.bat'
     //                }
                }
            }
        }
    }
}
