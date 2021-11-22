package boot

import (
	"github.com/defn/boot"
)

repo: boot.#Repo & {
	repo_name:     "katt-cert-manager"
	chart_repo:    "https://charts.jetstack.io"
	chart_name:    "cert-manager"
	chart_version: "1.5.3"
	install:       "cert-manager"
	namespace:     "cert-manager"
	variants: base: values: {}
}
