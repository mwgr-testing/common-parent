#!/bin/bash
set -o errexit

echo "::group::Building the Maven package and verifying it"
mvn ${MAVEN_DEFAULT_ARGS} ${MAVEN_ADDITIONAL_ARGS} clean verify
echo "::endgroup::"
