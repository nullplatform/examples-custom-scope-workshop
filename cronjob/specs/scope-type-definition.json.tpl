{
  "description": "Allows you to deploy periodic jobs in Kubernetes",
  "name": "Cronjob-{{ (default (env.Getenv "USER") (env.Getenv "NAME")) }}",
  "nrn": "{{ env.Getenv "NRN" }}",
  "provider_id": "{{ env.Getenv "SERVICE_SPECIFICATION_ID" }}",
  "provider_type": "service",
  "status": "active",
  "type": "custom"
}