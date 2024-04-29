pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the repository
                git branch: 'main', url: 'git@github.com:hbessala/artefact-release.git'
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
                sh "scp backup.04-29-2024.tar.gz webapp@46.101.209.213:/home/webapp/backups"
            }
        }
    }
}
