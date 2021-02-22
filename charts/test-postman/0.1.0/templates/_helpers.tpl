{{- define "iiidevops.labels" -}}
iiidevops.org/project_name: {{ .Values.git.repoName }}
iiidevops.org/branch: {{ include "numericSafe" .Values.git.branch | quote }}
{{- end }}

{{- define "numericSafe" -}}
{{- if . | toString | contains "e+" -}}
{{ . | toString | replace "." "" | regexFind "^\\d+" }}
{{- else -}}
{{ . | toString }}
{{- end -}}
{{- end -}}
