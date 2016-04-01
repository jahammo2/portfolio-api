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
| data | {"type"=>"projects", "attributes"=>{"github_page_url"=>"http://huelsdubuque.net/camille.quitzon", "web_page_url"=>"http://sawaynleffler.com/kaleigh", "title"=>"redundant", "description"=>"You can't program the microchip without parsing the back-end PNG monitor!", "body"=>"Cupiditate repellat illo. Dicta dolorem enim et autem quo aspernatur. Quibusdam molestiae culpa autem ratione omnis sunt. Non quo odit dolorem. Minima qui consectetur id voluptate ipsa.", "date_deployed"=>"2016-02-07"}, "relationships"=>{"color_set"=>{"data"=>{"background"=>"#f06cdf", "button"=>"turquoise", "circle"=>"#53fd41"}}, "languages"=>{"data"=>[{"title"=>"bus"}, {"title"=>"sensor"}]}, "devices"=>{"data"=>[{"title"=>"feed"}, {"title"=>"circuit"}]}}} |

Response: 200
```json
{
  "data": {
    "id": "69",
    "type": "projects",
    "attributes": {
      "github_page_url": "http://huelsdubuque.net/camille.quitzon",
      "web_page_url": "http://sawaynleffler.com/kaleigh",
      "title": "redundant",
      "description": "You can't program the microchip without parsing the back-end PNG monitor!",
      "body": "Cupiditate repellat illo. Dicta dolorem enim et autem quo aspernatur. Quibusdam molestiae culpa autem ratione omnis sunt. Non quo odit dolorem. Minima qui consectetur id voluptate ipsa.",
      "date_deployed": "2016-02-07"
    },
    "links": {
      "self": "/projects/69"
    },
    "relationships": {
      "color_set": {
        "links": {
          "self": "/projects/69/relationships/color_set",
          "related": "/projects/69/color_set"
        },
        "data": {
          "type": "color-sets",
          "id": "57"
        }
      },
      "languages": {
        "links": {
          "self": "/projects/69/relationships/languages",
          "related": "/projects/69/languages"
        },
        "data": [
          {
            "type": "languages",
            "id": "85"
          },
          {
            "type": "languages",
            "id": "86"
          }
        ]
      },
      "devices": {
        "links": {
          "self": "/projects/69/relationships/devices",
          "related": "/projects/69/devices"
        },
        "data": [
          {
            "type": "devices",
            "id": "99"
          },
          {
            "type": "devices",
            "id": "100"
          }
        ]
      }
    }
  },
  "included": [
    {
      "id": "57",
      "type": "color-sets",
      "attributes": {
        "background": "#f06cdf",
        "button": "turquoise",
        "circle": "#53fd41"
      },
      "links": {
        "self": "/color-sets/57"
      }
    },
    {
      "id": "85",
      "type": "languages",
      "attributes": {
        "title": "bus"
      },
      "links": {
        "self": "/languages/85"
      }
    },
    {
      "id": "86",
      "type": "languages",
      "attributes": {
        "title": "sensor"
      },
      "links": {
        "self": "/languages/86"
      }
    },
    {
      "id": "99",
      "type": "devices",
      "attributes": {
        "title": "feed"
      },
      "links": {
        "self": "/devices/99"
      }
    },
    {
      "id": "100",
      "type": "devices",
      "attributes": {
        "title": "circuit"
      },
      "links": {
        "self": "/devices/100"
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
