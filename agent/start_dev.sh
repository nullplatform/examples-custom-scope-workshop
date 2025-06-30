#!/bin/bash
if [[ "$NP_API_KEY" == "" ]]; then
	echo "NP_API_KEY should be defined"
	exit 1
fi

TAGS="${TAGS:-$(whoami)}:local"
docker build ./agent -t agent-local
docker run --rm --name agent-local -it \
	-e NP_LOG_LEVEL=DEBUG \
	-e NP_API_KEY=$NP_API_KEY \
	-e K8S_CONTEXT=test \
	-e TAGS="$TAGS" \
	-v ~/.kube/:/root/.kube \
	-v ~/.aws:/root/.aws \
	-v .:/root/.np/services \
	agent-local
