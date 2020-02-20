storage "consul" {
address = "consul:8500"
path    = "vault/"
scheme  = "http"
service = "vault"
}

listener "tcp" {
  address         = "0.0.0.0:8200"
  cluster_address = "0.0.0.0:8201"
  tls_disable     = 1
}


# HA settings
cluster_addr  = "http://vault-2:8201"
api_addr      = "http://vault-2:8200"


ui = true
