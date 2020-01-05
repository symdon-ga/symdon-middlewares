provider "mysql" {
  endpoint = "127.0.0.1:3306"
  username = "root"
  password = ""
}

resource "mysql_database" "sbk" {
  name = "sbk_local"
}

provider "postgresql" {
  host = "127.0.0.1"
  username = "postgres"
  password = ""
  sslmode  = "disable"
}

resource "postgresql_database" "inv" {
  provider = "postgresql"
  name = "inv_local"
}
