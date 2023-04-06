import os

os.environ["HMD_HOME"] = os.path.join(os.environ["HMD_REPO_PATH"], "hmd_home")
os.environ["HMD_NEURONSPHERE_LOCALHOST"] = "host.docker.internal"
