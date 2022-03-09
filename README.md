# Prerequisites

### 1. Windows or Linux OS

* Feel free to tweak or create a PR for a different OS

### 2. Python 3.x

* Blender 2.49+ relies on Python 3.x anyhow 

# Setup (Windows)

1. Download (and extract from downloaded folder) the scripts in this repository

2. Modify the 3 file-path variables (`PATH`, `WEB_DIR`, `PY_SCRIPT`) in `Localhost_&_Redirects.cmd` to fit your local file-structure

3. Run `Localhost_&_Redirects.cmd` once everything is setup properly

4. Type in `localhost` or `localhost:80` in a browser URL address<br />
**NOTE:** You may need to tweak the port number in `Localhost_&_Redirects.py` if port `80` is already taken

# File-Paths Explained (Windows)

1. The `PATH` variable represents where your downloaded Python executable resides<br />
**NOTE:** Blender ships with Python, meaning no need to download Python if you already have Blender installed<br />
You will still need to state the path to your Python version however

2. The `WEB_DIR` variable represents where your downloaded [armory_web](https://github.com/armory3d/armory_web) folder resides

3. THe `PY_SCRIPT` variable represents where the downloaded PY script from this repository resides

# Credits

Thanks to @sus-impost0r for the Linux script conversion!

# Resources

* <https://stackabuse.com/serving-files-with-pythons-simplehttpserver-module/>

* <https://pythonbasics.org/webserver/>
