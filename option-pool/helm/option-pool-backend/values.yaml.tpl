{{- $redisNamespace := namespace "redis" }}
{{ $redisValues := .Applications.HelmValues "redis" }}

redis:
  host: redis-master.{{ $redisNamespace }}
  password: {{ $redisValues.redis.password }}
  port: 6379
