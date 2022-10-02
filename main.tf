/*data "aws_apigatewayv2_api" "lambda" {

      api_id = var.apigatewayid

      }*/

module "lamda" {
  source = "git::https://gitlab.test.net/jenkins-devops/tf-modules.git?ref=lamda"
   apigatewayid = var.apigatewayid
   file_name = var.file_name
   region = var.region
   handler = var.handler
   runtime = var.runtime
   function_name = var.function_name
   bucket_name = var.bucket_name
   tags = var.tags
}

module "apigateway" {
  source = "git::https://gitlab.test.net/jenkins-devops/tf-modules.git?ref=apigateway"
  lamda_arn   = module.lamda.lambda_arn
  apigatewayid = var.apigatewayid
  region = var.region
  integration_method = var.integration_method
  }



