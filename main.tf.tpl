{{ range (datasource "data") -}}
{{ $project := .project }}
# project : {{ $project }}
{{ range .members -}}
{{ $alias_name := .alias_name }}
{{ $name := .name }}
{{ range .roles }}
resource "google_project_iam_member" "{{ $project }}_{{ $alias_name }}" {
  project = "{{ $project }}"
  member  = "user:{{ $name }}"
  role    = "{{ . }}"
}
{{- end -}}

{{ range .roles }}
resource "google_project_iam_binding" "{{ $project }}_{{ $alias_name }}_{{ . | strings.ReplaceAll "/" "-" | strings.ReplaceAll "." "-" }}" {
  project = "{{ $project }}"
  role    = "{{ . }}"
  members = [
    "user:{{ $name }}",
  ]
}
{{- end -}}

{{- end -}}

{{ range .service_accounts -}}
{{ $account_id := .account_id }}
resource "google_service_account" "{{ $project }}_{{ $account_id }}" {
  project          = "{{ $project }}"
  account_id       = "{{ $account_id }}"
  display_name     = "{{ .display_name }}"
}

{{ range .roles }}
resource "google_project_iam_binding" "{{ $project }}_{{ $account_id }}_{{ . | strings.ReplaceAll "/" "-" | strings.ReplaceAll "." "-" }}" {
  project = "{{ $project }}"
  role    = "{{ . }}"
  members = [
    "serviceAccount:${google_service_account.{{ $project }}_{{ $account_id }}.email}",
  ]
}
{{- end -}}

{{- end -}}

{{ end }}

