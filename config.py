import os

DOWNLOADS_DIR = "downloads"
CONVERTED_DIR = "converted"
CURRENT_DIRECTORY = os.path.dirname(os.path.realpath(__file__))
IPFS_NODE_URL = "https://ipfs.io/ipfs"

LOG_LEVEL='INFO'
LOG_FORMAT= '{asctime}'#{levelname}#{filename}#{funcName}#{lineno}#{message}
LOG_COLOR=False