pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out the code...'
                checkout scm
            }
        }

        stage('Install Dependencies') {
            steps {
                echo 'Installing dependencies...'
                sh 'pip install -r requirements.txt || echo "No requirements file found"'
            }
        }

        stage('Run Tests') {
            steps {
                echo 'Running tests...'
                sh 'python -m unittest discover -s . -p "test_*.py"'
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution completed!'
        }
        success {
            echo 'Build was successful!'
        }
        failure {
            echo 'Build failed!'
            archiveArtifacts artifacts: '**/test-reports/*.xml', allowEmptyArchive: true
        }
    }
}
