local pipeline = import 'pipeline.libsonnet';
local name = 'webhippie/python';

[
  pipeline.build(name, 'latest', 'latest', 'amd64'),
  pipeline.build(name, 'latest', 'latest', 'arm32v6'),
  pipeline.build(name, 'latest', 'latest', 'arm64v8'),
  pipeline.manifest('latest', 'latest', ['amd64', 'arm32v6', 'arm64v8']),
  pipeline.build(name, 'v3.7', '3.7', 'amd64'),
  pipeline.build(name, 'v3.7', '3.7', 'arm32v6'),
  pipeline.build(name, 'v3.7', '3.7', 'arm64v8'),
  pipeline.manifest('v3.7', '3.7', ['amd64', 'arm32v6', 'arm64v8']),
  pipeline.build(name, 'v2.7', '2.7', 'amd64'),
  pipeline.build(name, 'v2.7', '2.7', 'arm32v6'),
  pipeline.build(name, 'v2.7', '2.7', 'arm64v8'),
  pipeline.manifest('v2.7', '2.7', ['amd64', 'arm32v6', 'arm64v8']),
  pipeline.microbadger(['latest', '3.7', '2.7']),
  pipeline.downstream(['latest', '3.7', '2.7'], [
    'dockhippie/pretalx',
  ]),
]
