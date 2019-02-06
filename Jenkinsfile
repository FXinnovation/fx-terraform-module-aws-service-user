@Library('com.fxinnovation.fxinnovation-common-pipeline-library@feature/terraform-pipeline') _
@Library('com.fxinnovation.public-common-pipeline-jenkins@feature/docker-run') __

fx_terraform(
  testEnvironmentCredentialId: 'itoa-application-awscollectors-awscred',
  terraformCommandTargets:     ['examples/standard-user', 'examples/user-with-credentials']
)
