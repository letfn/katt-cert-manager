build: clean cert-manager.yaml

cert-manager.yaml: clean/cert-manager.yaml
	kustomize build > $@

clean/cert-manager.yaml: clean/cert-manager-vendor.yaml
	kustomize build clean > $@

clean/cert-manager-vendor.yaml:
	curl -sSL https://github.com/jetstack/cert-manager/releases/download/v1.5.3/cert-manager.yaml > $@

.PHONY: clean
clean:
	rm -f clean/cert-manager.yaml clean/cert-manager-vendor.yaml
