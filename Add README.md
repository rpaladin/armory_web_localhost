# Prerequisites

### 1. Windows OS

* Feel free to tweak the scripts to fit a different OS

### 2. Python 3.x

* Blender 2.49+ relies on Python 3.x anyhow 

# Setup

1. Download (and extract from downloaded folder) the scripts in this repository

2. Modify the 3 file-path variables (`PATH`, `WEB_DIR`, `PY_SCRIPT`) in `Localhost_&_Redirects.cmd` to fit your local file-structure

3. Run `Localhost_&_Redirects.cmd` once everything is setup properly

4. Type in `localhost` or `localhost:80` in a browser URL address<br />
**NOTE:** You may need to tweak the port number in `Localhost_&_Redirects.py` if port `80` is already taken

## File-Paths Explained

1. The `PATH` variable represents where your downloaded Python executable resides<br />
**NOTE:** Blender ships with Python, meaning no need to download Python if you already have Blender installed<br />
You will still need to state the path to your Python version however

2. The `WEB_DIR` variable represents where your downloaded [armory_web](https://github.com/armory3d/armory_web) folder resides

3. THe `PY_SCRIPT` variable represents where the downloaded PY script from this repository resides
