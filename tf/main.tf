provider "mysql" {
  endpoint = "127.0.0.1:3306"
  username = "root"
  password = ""
}

resource "mysql_database" "sbk" {
  name = "sbk_local"
}
