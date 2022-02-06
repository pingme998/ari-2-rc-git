import subprocess
import os
import time
while True:
   os.system("bash /ari-2-rc-git/script-plus-conf/downscaled")
   ls_output=subprocess.Popen(["bash", "/ari-2-rc-git/script-plus-conf/process/download.sh"])
   time.sleep(5)
