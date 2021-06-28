{{- define "iiidevops.annotations" -}}
iiidevops.org/project_name: {{ .Values.git.repoName }}
iiidevops.org/branch: {{ include "numericSafe" .Values.git.branch | quote }}
iiidevops.org/commit_id: {{ include "numericSafe" .Values.git.commitID | quote }}
iiidevops.org/type: test-postman
{{- end }}

{{- define "numericSafe" -}}
{{- if . | toString | contains "e+" -}}
{{ . | toString | replace "." "" | regexFind "^\\d+" }}
{{- else -}}
{{ . | toString }}
{{- end -}}
{{- end -}}

{{- define "extractAfterSlash" -}}
{{- if . | hasPrefix "https://" -}}
{{ . | substr 8 (len .) }}
{{- else -}}
{{ . | substr 7 (len .) }}
{{- end -}}
{{- end -}}