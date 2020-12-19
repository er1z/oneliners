def md5sum(filename):
import hashlib
md5 = hashlib.md5()
with open(filename,'rb') as f:
for chunk in iter(lambda: f.read(128*md5.block_size), b''):
md5.update(chunk)
return md5.hexdigest(
