#!/bin/bash
set -o errexit

echo "::group::Building the Maven package and verifying it"
mvn ${MAVEN_DEFAULT_ARGS} ${MAVEN_ADDITIONAL_ARGS_FOR_BUILDING_PACKAGE} clean verify
echo "::endgroup::"
