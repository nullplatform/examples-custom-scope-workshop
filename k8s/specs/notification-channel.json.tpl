{
  "nrn": "{{ env.Getenv "NRN" }}",
  "status": "active",
  "type": "agent",
  "source": [
    "telemetry",
    "service"
  ],
  "configuration": {
      "api_key": "{{ env.Getenv "NP_API_KEY" }}",
      "command": {
        "data": {
          "cmdline": "/root/.np/services/entrypoint --service-path=/root/.np/services/{{ env.Getenv "SERVICE_PATH" }}",
          "environment": {
            "NP_ACTION_CONTEXT": "'${NOTIFICATION_CONTEXT}'"
          }
        },
        "type": "exec"
      },
      "selector": {
        "{{ (default (env.Getenv "USER") (env.Getenv "NAME")) }}": "local"
      }
  },
  "filters": {
    "$or": [
      {
        "service.specification.slug": "{{ env.Getenv "SERVICE_SLUG" }}"
      },
      {
        "arguments.scope_provider": "{{ env.Getenv "SERVICE_SPECIFICATION_ID" }}"
      }
    ]
  }
}