#!/bin/bash

pullContentAndBuild() {
  git clone https://$USERNAME:$PASSWORD@github.com/$USERNAME/$GIT_ENDPOINT.git /workspace/src
  cd /workspace/src
  mvn package
}

"$@"