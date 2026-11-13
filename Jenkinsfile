pipeline {
  agent {
    kubernetes {
      yaml '''
        spec:
          containers:
            - name: maven
              image: maven:3.9-eclipse-temurin-21
              command: [sleep]
              args: [infinity]      # giữ container sống để Jenkins exec lệnh vào
      '''
    }
  }
  stages {
    stage('Test') {
      steps {
        container('maven') {        // chọn container nào chạy lệnh
          sh 'mvn -B test'
        }
      }
    }
  }
}