#### POST /api/projects


| Param | Value |
| ----- | ----- |


Response: 401
```json
{
  "meta": {
    "success": false,
    "message": "Authentication failed."
  },
  "errors": [
    "Authorized users only."
  ]
}
```
#### POST /api/projects


| Param | Value |
| ----- | ----- |
| data | {"type"=>"projects", "attributes"=>{"github_page_url"=>"http://pouros.io/sanford.konopelski", "web_page_url"=>"http://cruickshankgleason.name/isabel", "title"=>"redundant", "description"=>"synthesizing the bus won't do anything, we need to bypass the open-source AI microchip!", "body"=>"Officiis iste sit ipsam. Soluta veritatis rerum. Neque aliquid deleniti qui in vel et.", "date_deployed"=>"2016-03-20"}, "relationships"=>{"color_set"=>{"data"=>{"background"=>"#4a9f1f", "button"=>"sky blue", "circle"=>"#1a6ac8"}}, "languages"=>{"data"=>[{"title"=>"firewall"}, {"title"=>"port"}]}, "devices"=>{"data"=>[{"title"=>"alarm"}, {"title"=>"feed"}]}}} |

Response: 200
```json
{
  "data": {
    "id": "78",
    "type": "projects",
    "attributes": {
      "github_page_url": "http://pouros.io/sanford.konopelski",
      "web_page_url": "http://cruickshankgleason.name/isabel",
      "title": "redundant",
      "description": "synthesizing the bus won't do anything, we need to bypass the open-source AI microchip!",
      "body": "Officiis iste sit ipsam. Soluta veritatis rerum. Neque aliquid deleniti qui in vel et.",
      "date_deployed": "2016-03-20"
    },
    "links": {
      "self": "/projects/78"
    },
    "relationships": {
      "color_set": {
        "links": {
          "self": "/projects/78/relationships/color_set",
          "related": "/projects/78/color_set"
        },
        "data": {
          "type": "color-sets",
          "id": "63"
        }
      },
      "languages": {
        "links": {
          "self": "/projects/78/relationships/languages",
          "related": "/projects/78/languages"
        },
        "data": [
          {
            "type": "languages",
            "id": "91"
          },
          {
            "type": "languages",
            "id": "92"
          }
        ]
      },
      "devices": {
        "links": {
          "self": "/projects/78/relationships/devices",
          "related": "/projects/78/devices"
        },
        "data": [
          {
            "type": "devices",
            "id": "108"
          },
          {
            "type": "devices",
            "id": "109"
          }
        ]
      }
    }
  },
  "included": [
    {
      "id": "63",
      "type": "color-sets",
      "attributes": {
        "background": "#4a9f1f",
        "button": "sky blue",
        "circle": "#1a6ac8"
      },
      "links": {
        "self": "/color-sets/63"
      }
    },
    {
      "id": "91",
      "type": "languages",
      "attributes": {
        "title": "firewall"
      },
      "links": {
        "self": "/languages/91"
      }
    },
    {
      "id": "92",
      "type": "languages",
      "attributes": {
        "title": "port"
      },
      "links": {
        "self": "/languages/92"
      }
    },
    {
      "id": "108",
      "type": "devices",
      "attributes": {
        "title": "alarm"
      },
      "links": {
        "self": "/devices/108"
      }
    },
    {
      "id": "109",
      "type": "devices",
      "attributes": {
        "title": "feed"
      },
      "links": {
        "self": "/devices/109"
      }
    }
  ]
}
```
#### POST /api/projects


| Param | Value |
| ----- | ----- |
| data | {"type"=>"projects"} |

Response: 422
```json
{
  "meta": {
    "success": false,
    "message": "Failure."
  },
  "errors": [
    {
      "status": "422",
      "title": "Validation Failed",
      "detail": "Params do not contain data for color_set, languages, or devices"
    }
  ]
}
```
