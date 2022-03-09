{{- $redisNamespace := namespace "redis" }}
{{ $redisValues := .Applications.HelmValues "redis" }}

global:
  application:
    links:
    - description: option-pool web ui
      url: {{ .Values.hostname }}

ingress:
  enabled: true
  hosts:
    - host: {{ .Values.hostname }}
      paths:
        - path: /
          pathType: ImplementationSpecific
  tls:
    - secretName: chart-example-tls
      hosts:
        - {{ .Values.hostname }}

redis:
  host: redis-master.{{ $redisNamespace }}
  password: {{ $redisValues.redis.password }}
  port: 6379