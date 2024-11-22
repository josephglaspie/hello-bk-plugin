#!/bin/bash

aws s3 cp s3://com-twilio-corp-us1-secrets/v1/buildkite-agent-terraform-cloud/GH_ENTERPRISE_TOKEN/latest test.txt
export GH_ENTERPRISE_TOKEN=$(cat test.txt)
aws s3 cp s3://com-twilio-corp-us1-secrets/v1/buildkite-agent-terraform-cloud/GITHUB_TOKEN/latest test2.txt
export GITHUB_TOKEN=$(cat test2.txt)
rm test.txt
rm test2.txt