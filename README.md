# Backend Service

## Table of contents

0. [Description](#description)
0. [Setup](#setup)
0. [API](#usage)
    0. [Connecting to WiFi](#1-connecting-to-wifi)
    0. [Control](#2-control)


---
## Description


---
## Setup

Simply run the setup script

```
sudo python3 initial_setup.py
```

The RPI will now reboot and create an access point named ``FeedoCam``

---
## API

### 1. Connecting to WiFi

Connect to the FeedoCam network. The backend is now available at ``http://10.0.0.1``

- Get WiFi scan and current configuration info

```
/api/v1/wifi/info
```

- Enter WiFi credentials

```
/api/v1/wifi/credentials?ssid=<SSID>&enc=<ENCRYPTION>&key=<KEY>
```

- Reset WiFi settings

```
/api/v1/wifi/reset
```

### 2. Control

- Start streaming

```
api/v1/control/start
```

- Stop streaming

```
api/v1/control/stop
```
