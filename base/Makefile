build: clean cert-manager.yaml

cert-manager.yaml: clean/cert-manager.yaml
	kustomize build > $@

clean/cert-manager.yaml:
	-helm repo add jetstack https://charts.jetstack.io
	helm repo update
	helm template cert-manager jetstack/cert-manager --namespace cert-manager --create-namespace --version v1.5.3 --set installCRDs=true > $@

.PHONY: clean
clean:
	rm -f clean/cert-manager.yaml
