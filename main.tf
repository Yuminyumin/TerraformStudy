# variable "file_name" {
#   default = "step0.txt"
# }

resource "local_file" "step7" {
  content  = ""
  filename = "${path.module}/step7.txt"

  lifecycle {
    precondition {
      condition     = self.content != ""
      error_message = "content cannot empty"
    }
  }
}

output "step7_content"{
  value = local_file.step7.id
}