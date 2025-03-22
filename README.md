
A container-based test environment for Network IDS/IPS. Currently supports Suricata and Snort.

Sets up a simple network in this fashion:

```
attacker [172.16.100.15] --> [172.16.100.10] IDS/IPDS [10.0.100.10] -->  [10.0.100.20] target
```

## Running

To get the network set up, use the following commands:

```
./nidstest [suricata|snort] [build|run|start|stop|restart]
```

To get info about the currently running environment, use `status` or `logs`:

```
./nidstest [suricata|snort] [status|logs]
```

To get shells on different systems:

```
./nidstest [suricata|snort|attacker|target] shell
```