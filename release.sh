#!/bin/bash
last_version=$(curl -Ls "https://api.github.com/repos/AikoCute-Offical/X-ui/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
if [[ "$last_version" == "$VERSIONS" ]]; then
	gh release delete $VERSIONS -y
fi
