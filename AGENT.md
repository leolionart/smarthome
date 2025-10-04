# AGENT BRIEF

## Mission
This repository collects reusable configs and scripts to spin up self-hosted IoT and smart home services (mostly containerized). It serves as a vault you can clone into a new server and deploy stacks quickly.

## Quick Start Entry Points
- Base homelab bootstrap: `curl -sk https://raw.githubusercontent.com/leolionart/smarthome/main/HomeLab_basic_setup.sh | sudo bash -`
- Zigbee hub bundle (Dockge + Mosquitto + Zigbee2MQTT): `curl -sk https://raw.githubusercontent.com/leolionart/smarthome/refs/heads/main/Zigbee2MQTT/ZigbeeHub_setup.sh | sudo bash -`
- Services are primarily orchestrated through Docker Compose; Dockge and Portainer act as the lightweight/graphical managers.

## Repository Map
- `README.md` — Vietnamese overview describing goals, service bundles, and community links.
- `HomeLab_basic_setup.sh` — bootstrap script that installs Docker, Portainer, Watchtower, Dockge, etc. Runs as root and targets Debian/Raspberry Pi style hosts.
- `Dockge/` — stack library consumed by Dockge. Each subfolder (AdGuardHome, Frigate, Homebridge, NodeRED, n8n, PlexTraktSync, Prometheus, Paperless, etc.) stores a `compose.yaml` plus optional service-specific assets. Root-level `Dockge/compose.yaml` deploys Dockge itself and expects persistent stacks under `/mnt/sda1/Config/Dockge`.
- `Template/` — reusable templates:
  - `HomeAssistant/` (Blueprints, Config snippets, ESPHome, automations/scripts, Lovelace cards, Jellyfin webhook template).
  - `Homebridge/` sample config `hb-config.json`.
  - `IOS-widget/` and `NodeRED/` assets such as `homebridge-influxdb.json`.
  - `mountgdrive.sh` helper for mounting Google Drive.
- `Zigbee2MQTT/` — self-contained Zigbee stack:
  - `compose.yaml`, `configuration.yaml`, `dockge/compose.yaml`.
  - `MQTT/` holds the Mosquitto stack referenced in scripts.
  - `ZigbeeHub_setup.sh` automates Dockge + Mosquitto + Zigbee2MQTT deployment under `/opt/{dockge,stacks}`.
- `Template` and `Dockge` share naming conventions so you can copy a template into a stack folder and adjust volumes before deploying.

## Configuration Conventions
- Docker Compose version 3 syntax throughout; expects recent Docker Engine.
- Paths in compose files are absolute (e.g. `/opt/stacks`, `/mnt/sda1`) — update them before deploying to a new environment to avoid writing to unintended locations.
- Timezone defaults to `Asia/Ho_Chi_Minh`; change `TZ` as needed.
- MQTT and Zigbee configs currently store credentials in plain text (e.g. `Zigbee2MQTT/configuration.yaml`); rotate or externalize secrets when sharing.
- Scripts fetched via `wget`/`curl` always pull from the `main` branch; edits must be committed there for automated installers to pick them up.

## Working Notes
- When extending Dockge stacks, keep the stack directory name in sync with the desired Dockge display name and ensure volumes mount into `/opt/stacks/<service>`.
- Templates inside `Template/` are examples; copy them rather than editing directly if you need environment-specific values.
- Several README sections mention "Updating" or "Dang cap nhat" placeholders — expect to fill these in later with finished scripts or docs.

## Open Questions / TODO Slots
- Document the entertainment stack installer once the script is ready.
- Capture hardware requirements per service (e.g. camera models for Scrypted, storage guidance for Frigate).
- Add English summaries where Vietnamese-only instructions may block contributors.
