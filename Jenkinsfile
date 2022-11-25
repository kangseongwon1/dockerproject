 pipeline {
        agent any

        stages {
            stage('github clone') {
                steps {
                    git branch: 'master',
                        credentialsId: 'repo-and-hook-access-token-credentials',
                        url: 'https://github.com/kangseongwon1/test'
                }
            }
            
            stage('build'){
                sh "'/home/ksw7734/test/test.sh'"
            }
        }
    }
