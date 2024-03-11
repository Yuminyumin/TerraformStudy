resource "local_file" "abc" {
  content  = "123!"
  filename = "${path.module}/abc.txt"
}

resource "local_file" "def" {
  depends_on = [ local_file.abc ]
  content  = local_file.abc.content
  filename = "${path.module}/def.txt"
}