# Thao tác với Caddy Proxy

1. Format the Caddyfile

```
docker compose exec -w /etc/caddy caddy caddy fmt --overwrite
```

2. Reload Caddy:

```
docker compose exec -w /etc/caddy caddy caddy reload
```

3. Check Logs: Inspect Caddy logs to identify any potential issues:

```
docker compose logs caddy
```
