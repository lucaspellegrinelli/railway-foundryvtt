FROM felddy/foundryvtt:release

ARG FOUNDRY_PASSWORD
ARG FOUNDRY_USERNAME
ARG FOUNDRY_VERSION=11.307

EXPOSE 30000/TCP

ENTRYPOINT ["./entrypoint.sh"]
CMD ["resources/app/main.mjs", "--port=30000", "--headless", "--noupdate", "--dataPath=/data"]
HEALTHCHECK --start-period=3m --interval=30s --timeout=5s CMD ./check_health.sh
