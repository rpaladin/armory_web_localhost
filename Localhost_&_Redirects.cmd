@echo off

SET PATH=python;C:\Program Files\Blender\2.93\python\bin
SET WEB_DIR="D:\Projects\Web\Armory3D"
SET PY_SCRIPT="D:\Scripts\Python\Localhost_&_Redirects.py"

cd %WEB_DIR%
python %PY_SCRIPT%

pause
