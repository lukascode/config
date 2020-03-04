#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <package> <project_name>"
    exit 1
fi

package=$1
project=$2

mvn archetype:generate -DgroupId=$package -DartifactId=$project -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
