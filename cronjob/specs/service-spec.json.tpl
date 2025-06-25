{
  "assignable_to": "any",
  "attributes": {
    "schema": {
      "properties": {
        "asset_type": {
          "default": "docker-image",
          "export": false,
          "type": "string"
        },
        "cpu_millicores": {
          "default": 500,
          "description": "Amount of CPU to allocate (in millicores, 1000m = 1 CPU core)",
          "maximum": 4000,
          "minimum": 100,
          "title": "CPU Millicores",
          "type": "integer"
        },
        "cron": {
          "description": "Specifies how frequently the job should run using a standard cron expression.",
          "export": false,
          "pattern": "^(((\\*|\\d+)(/\\d+)?)(,((\\*|\\d+)(/\\d+)?))*)\\s+(((\\*|\\d+)(/\\d+)?)(,((\\*|\\d+)(/\\d+)?))*)\\s+(((\\*|\\d+)(/\\d+)?)(,((\\*|\\d+)(/\\d+)?))*)\\s+(((\\*|\\d+)(/\\d+)?)(,((\\*|\\d+)(/\\d+)?))*)\\s+(((\\*|\\d+)(/\\d+)?)(,((\\*|\\d+)(/\\d+)?))*)$",
          "placeholder": "e.g. */5 * * * * (every 5 minutes)",
          "readOnly": false,
          "title": "Cron Expression",
          "type": "string"
        },
        "ram_memory": {
          "default": 64,
          "description": "Amount of RAM memory to allocate to the container (in MB)",
          "oneOf": [
            {
              "const": 64,
              "title": "64 MB"
            },
            {
              "const": 128,
              "title": "128 MB"
            },
            {
              "const": 256,
              "title": "256 MB"
            },
            {
              "const": 512,
              "title": "512 MB"
            },
            {
              "const": 1024,
              "title": "1 GB"
            },
            {
              "const": 2048,
              "title": "2 GB"
            },
            {
              "const": 4096,
              "title": "4 GB"
            },
            {
              "const": 8192,
              "title": "8 GB"
            },
            {
              "const": 16384,
              "title": "16 GB"
            }
          ],
          "title": "RAM Memory",
          "type": "integer"
        }
      },
      "required": [
        "ram_memory",
        "cpu_millicores",
        "cron"
      ],
      "type": "object",
      "uiSchema": {
        "elements": [
          {
            "label": "Cron expression",
            "scope": "#/properties/cron",
            "type": "Control"
          },
          {
            "label": "RAM Memory",
            "scope": "#/properties/ram_memory",
            "type": "Control"
          },
          {
            "label": "CPU Millicores",
            "scope": "#/properties/cpu_millicores",
            "type": "Control"
          }
        ],
        "type": "VerticalLayout"
      }
    },
    "values": {}
  },
  "dimensions": {},
  "name": "Cronjob-{{ (default (env.Getenv "USER") (env.Getenv "NAME")) }}",
  "selectors": {
    "category": "any",
    "imported": false,
    "provider": "any",
    "sub_category": "any"
  },
  "type": "scope",
  "use_default_actions": false,
  "visible_to": [
    "{{ env.Getenv "NRN" }}"
  ]
}
