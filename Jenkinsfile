pipeline {
    agent { 
        node {
            label 'tennog_data_transformer'
            }
    }
    stages {
        stage('Build') {
            steps {
                echo "Building.."
                sh '''
                dbt deps --project-dir ./tenog_data_transformer
                '''
            }
        }
        stage('Testing') {
            steps {
                echo "Testing.."
                sh '''
                '''
            }
        }
        stage('Running ODS') {
            steps {
                echo 'Running....'
                sh '''
                dbt run --project-dir ./tenog_data_transformer --profiles-dir ./tenog_data_transformer/profiles --select ODS
                '''
            }
        }
		
		stage('Running DWH') {
            steps {
                echo 'Running....'
                sh '''
                dbt run --project-dir ./tenog_data_transformer --profiles-dir ./tenog_data_transformer/profiles --select DWH
                '''
            }
        }
    }
}