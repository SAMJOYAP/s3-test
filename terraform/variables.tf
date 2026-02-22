variable "bucket_name" {
  description = "Base name of the S3 bucket (a random suffix will be appended)"
  type        = string
  default     = "s3-test"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-northeast-2"
}

variable "versioning" {
  description = "Enable S3 versioning"
  type        = bool
  default     = true
}

variable "kms_encryption" {
  description = "Use AWS KMS key for SSE-KMS encryption (false = SSE-S3 AES-256)"
  type        = bool
  default     = false
}

variable "force_destroy" {
  description = "Allow Terraform to delete the bucket even if it contains objects"
  type        = bool
  default     = false
}

variable "lifecycle_enabled" {
  description = "Enable S3 lifecycle rules"
  type        = bool
  default     = false
}

variable "lifecycle_ia_days" {
  description = "Days after which objects transition to Standard-IA (0 = skip)"
  type        = number
  default     = 0
}

variable "lifecycle_glacier_days" {
  description = "Days after which objects transition to Glacier (0 = skip)"
  type        = number
  default     = 0
}

variable "lifecycle_expire_days" {
  description = "Days after which objects are permanently deleted (0 = never)"
  type        = number
  default     = 0
}

variable "access_logging" {
  description = "Enable S3 server access logging to a separate bucket"
  type        = bool
  default     = false
}

variable "website_enabled" {
  description = "Enable static website hosting"
  type        = bool
  default     = false
}
