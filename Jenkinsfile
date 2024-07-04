pipeline {
    agent any

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
                        sh 'test.sh'
                    } 
                    // else {
                    //     bat 'bat.sh'
                    // }
                }
            }
        }
        
        // stage('Archive Report') {
            // steps {
                // Archive the generated report
                // archiveArtifacts artifacts: 'Desktop/Python_Script/reports/**'
            // }
        // }
        
//         stage('Publish HTML Report') {
//             steps {
//                 // Publish the generated HTML report
//                 publishHTML([reportDir: 'Desktop/Python_Script/reports', reportFiles: 'index.html', reportName: 'Chrome Report'])
//             }
//         }
//     }
// }
