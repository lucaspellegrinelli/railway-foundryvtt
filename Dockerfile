# Railway passes the service's FOUNDRY_VERSION variable to the build, so the
# base image always matches the Foundry release it installs. Without this, the
# newest image would install whatever older release the variable asks for.
ARG FOUNDRY_VERSION=14.370
FROM felddy/foundryvtt:${FOUNDRY_VERSION}

# Railway mounts volumes owned by root. The image runs as an unprivileged user
# by default, cannot write to /data, and never starts.
USER root
