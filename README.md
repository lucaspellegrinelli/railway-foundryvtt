# Foundry Virtual Tabletop on Railway

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/deploy/X5tR6G?referralCode=trH3DH)

Runs [Foundry Virtual Tabletop](https://foundryvtt.com) on Railway with the
[felddy/foundryvtt](https://github.com/felddy/foundryvtt-docker) image. Your
worlds, systems and modules are kept on a volume at `/data`.

## Before you deploy

You need a Foundry license, bought at <https://foundryvtt.com>. The server
downloads Foundry with your foundryvtt.com account, so the deploy fails without
a valid username and password.

## Variables

| Variable | Purpose |
| --- | --- |
| `FOUNDRY_USERNAME`, `FOUNDRY_PASSWORD` | Your foundryvtt.com account. Used to download Foundry and fetch your license. |
| `FOUNDRY_RELEASE_URL` | Instead of your account, a timed download link from your [licenses page](https://foundryvtt.com/me/licenses) (choose "Node.js", then "Timed URL"). |
| `FOUNDRY_VERSION` | The Foundry release to install, such as `14.370`. The image is picked to match it. A world cannot be opened by an older release than the one that last saved it. |
| `FOUNDRY_ADMIN_KEY` | The password for Foundry's setup screen. Set one: the server is public. |

Every option of the image is listed in its
[documentation](https://github.com/felddy/foundryvtt-docker#environment-variables).

## Updating Foundry

Change `FOUNDRY_VERSION` and redeploy. Back up `/data` before moving to a new
major version.
