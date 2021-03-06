import os
import unittest

from classes.ipfs_document import IPFSDocument


class IPFSTest(unittest.TestCase):
    def setUp(self):
        hash = "QmQEGujQefenqt53Au82gPf5yjEbwzea5UJMxswJqmwtHF"
        self.ipfs_document = IPFSDocument(hash, {
            'company': 'Fifth Forth'
        }, 'word')

    def test_download_file_to_cache(self):
        downloaded_ipfs_file = self.ipfs_document.download_pinned_ipfs_document_into_cache()
        self.assertTrue(os.path.exists(downloaded_ipfs_file))
