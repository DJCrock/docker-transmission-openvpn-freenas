# Transmission with WebUI and OpenVPN

This is a FreeNAS compatible build of [haugene/transmission-openvpn](https://hub.docker.com/r/haugene/transmission-openvpn/). Please visit that page for a full README; the instructions here are basic and incomplete.

### Environment Variables

| Variable | Function | Example | Required? |
|----------|----------|---------|----------|
|`OPENVPN_PROVIDER` | Sets the OpenVPN provider to use. | `OPENVPN_PROVIDER=PIA`. | yes |
|`OPENVPN_USERNAME`|Your OpenVPN username |`OPENVPN_USERNAME=asdf`| yes |
|`OPENVPN_PASSWORD`|Your OpenVPN password |`OPENVPN_PASSWORD=asdf`| yes |
|`OPENVPN_CONFIG` | The OpenVPN config file to use (see haugene's GitHub). | `OPENVPN_CONFIG=CA Toronto`| no |
|`OPENVPN_OPTS` | Passed to OpenVPN | | no |
|`LOCAL_NETWORK` | The local network you wish to access the WebUI and RPC over. | `LOCAL_NETWORK=192.168.0.0/24`| no |
|`PUID` | The user id for the transmission user | `PUID=4001`| no |
|`PGID` | The group id for the transmission user | `PGID=4001` | no |

**NOTE**: If you want to access the WebUI or RPC via the local network, you **must** set the `LOCAL_NETWORK` environment variable.

You may also set any transmission options using environment variables. For example, to set `rpc-username`, simply set the environment variable `TRANSMISSION_RPC_USERNAME`.
