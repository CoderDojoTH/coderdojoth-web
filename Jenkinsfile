pipeline {
  agent {
    node {
      label 'Infra'
    }
  }
  stages {
    stage('Build updater image') {
      steps {
        dir('docker'){
          dir('code-compiler') {
            sh '''
            ./build.sh
            '''      
          }
        }
      }    
    }
    stage('Compile Code') {
      steps {
        dir('docker'){
          dir('code-compiler'){
            sh '''
            sed -i "s/1000/1001/g" compiler-compose.yml
            docker-compose -f compiler-compose.yml run --rm compiler.coderdojo
            '''
          }
        }
      }  
    }
    stage('Build coderdojo website') {
      steps {
        dir('docker'){
          dir('coderdojo') {
              sh '''
              ./build.sh
              '''      
          }
        }
      }    
    }
    stage('Push image to registry') {
      steps {
        sh'''
        docker push registry-infra.proteus-tech.com/coderdojo
        '''
      }  
    }
    stage('Deploy') {
      steps {
        dir('coderdojoth-web') {
            sh'''
            ssh proteus@bkk-csl-01.proteus-tech.com "docker-compose -f /home/proteus/coderdojo/coderdojo-compose.yml up -d"
            '''
        }
      }
    }
    stage('Clean') {
      steps {
         sh 'rm -rf * .git*'
      }
    }
  }
}
