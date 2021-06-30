cert-manager.yaml: clean/cert-manager.yaml
	kustomize build > $@

clean/cert-manager.yaml: clean/cert-manager-vendor.yaml
	kustomize build clean > $@

clean/cert-manager-vendor.yaml:
	curl -sSL https://github.com/jetstack/cert-manager/releases/download/v1.3.1/cert-manager.yaml > $@
