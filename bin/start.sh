#!/usr/bin/env bash

command=$1

if [[ "$command" == "web" ]]; then
  exec /usr/local/bin/concourse web \
    --basic-auth-username $CONCOURSE_LOGIN \
    --basic-auth-password $CONCOURSE_PASSWORD \
    --session-signing-key /etc/concourse/keys/session_signing_key \
    --tsa-host-key /etc/concourse/keys/host_key \
    --tsa-authorized-keys /etc/concourse/keys/authorized_worker_keys \
    --external-url  $CONCOURSE_EXTERNAL_URL \
    --postgres-data-source postgres://concourse_user:concourse_pass@concourse-db:5432/concourse?sslmode=disable
elif [[ "$command" == "worker" ]]; then
  exec /usr/local/bin/concourse worker \
    --work-dir /opt/concourse/worker \
    --tsa-host concourse-web \
    --tsa-public-key /etc/concourse/keys/host_key.pub \
    --tsa-worker-private-key /etc/concourse/keys/worker_key
else
  echo "argument should be web or worker"
fi
