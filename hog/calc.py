import zlib, base64
exec(zlib.decompress(base64.b64decode('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')))
# Created by pyminifier (https://github.com/liftoff/pyminifier)
