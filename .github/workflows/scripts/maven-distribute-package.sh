#!/bin/bash
set -o errexit

source .github/workflows/scripts/check-maven-distribution-settings.sh

echo "::group::Building the Maven package and distributing it"
mvn ${MAVEN_DEFAULT_ARGS} ${MAVEN_ADDITIONAL_ARGS_FOR_BUILDING_PACKAGE} clean deploy
echo "::endgroup::"
