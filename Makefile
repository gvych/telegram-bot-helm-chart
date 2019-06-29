setup:
	curl -fsSL https://storage.googleapis.com/kubernetes-helm/helm-v2.12.3-linux-amd64.tar.gz |   sudo tar -xvz --strip=1 -f - -C /usr/local/bin/ linux-amd64/helm
	helm plugin install https://github.com/databus23/helm-diff --version master
	curl https://github.com/roboll/helmfile/releases/download/v0.45.3/helmfile_linux_amd64 > /usr/local/bin/helmfile
	helm plugin install https://github.com/futuresimple/helm-secrets

test:
	helmfile  -l name=telegram-bot template


all:
	helmfile  -l name=telegram-bot apply
