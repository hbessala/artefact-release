pipeline {
    agent any
    environment {
        REPO_DIR = '/home/control/work'
        BACKUP_SERVER = '46.101.209.213'
    }
    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the repository
                git branch: 'main', url: 'https://github.com/hbessala/artefact-release.git'
            }
        }
        stage('Execute Script') {
            steps {
                // Execute the shell script present in the repository
                sh "./backup.sh"
            }
        }
        stage('Backup Result') {
            steps {
                // Copy the result to the backup server
                sh "scp ${REPO_DIR}/$FILE  ${BACKUP_SERVER}:/home/webapp/backups"
            }
        }
    }
}
