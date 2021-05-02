---
created: 2021-05-01T23:21:28-04:00
modified: 2021-05-01T23:22:37-04:00
---

# HIDDEN EYE

pkg up -y
pkg install git -y
pkg install python -y
git clone https://github.com/DarkSecDevelopers/HiddenEye-Legacy.git
cd HiddenEye-Legacy
chmod 777 *
pip install -r requirements.txt
python HiddenEye.py
I accept EULA