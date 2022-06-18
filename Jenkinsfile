pipeline {
   agent any
   tools {
      terraform 'terraform'
 }
  stages {
      stage('Source Code Checkout') {
      steps{
        git branch: 'main', changelog: false, poll: false, url: 'https://github.com/orop2021/terraform-pipeline.git'
    }
   }

    stage('Terraform Validate') {
      steps{
        sh 'terraform validate'
    }
   }
    stage('Terraform Init') {
      steps{
        sh 'terraform init'
    } 
   }
    stage('Terraform Plan') {
      steps{
        sh 'terraform plan'
    }
   }
    stage('Terraform Apply') {
      steps{
        sh 'terraform apply' --auto-approve
    }
   }
  }
}
