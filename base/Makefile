build: clean cert-manager.yaml

cert-manager.yaml: clean/cert-manager.yaml
	kustomize build > $@

clean/cert-manager.yaml:
	-helm repo add jetstack https://charts.jetstack.io
	helm repo update
	helm template cert-manager jetstack/cert-manager --namespace cert-manager --create-namespace --version v1.5.3 --set installCRDs=true --set 'extraArgs={--dns01-recursive-nameservers=108.162.193.160:53}' > $@

.PHONY: clean
clean:
	rm -f clean/cert-manager.yaml
