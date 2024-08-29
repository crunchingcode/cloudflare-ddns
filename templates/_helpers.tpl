{{- define "cloudflare-ddns.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "cloudflare-ddns.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- include "cloudflare-ddns.name" . }}-{{ .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end -}}
{{- end -}}

{{- define "cloudflare-ddns.chart" -}}
{{- .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end -}}
