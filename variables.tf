variable "handler" {
description = "lamda function entry point"
type =  string

}
variable "runtime" {
description = "lamda function runtime env"
type = string

}

variable "file_name" {
description = "Provide name of the file in archived format (zip or jar) along with the extention"
type = string

}
variable "function_name" {
description = "Provide name to the lambda function"
type = string

}


variable "region" {
type = string
description = "name of region"
}
variable "tags" {
type = map
}
variable "apigatewayid" {
    type = string

    description = "id of apigateway"
}
variable "bucket_name"{
description = "Provide the details of S3 Bucket where the lambda fuction code is stored"
type = string

}

variable "integration_method" {
type = string

description = "name of integration method"
}

