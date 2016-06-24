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
| data | {"type"=>"projects", "attributes"=>{"github_page_url"=>"http://cummingsprosacco.io/philip.jacobson", "web_page_url"=>"http://macgyvermayert.info/presley_littel", "title"=>"neural", "description"=>"If we back up the interface, we can get to the JBOD feed through the digital AGP driver!", "opening_body"=>"Inventore ipsam exercitationem deserunt facere velit nisi velit. Quis accusamus tenetur ex qui. Enim et eius omnis.", "closing_body"=>"Laborum debitis consequatur atque. Occaecati dolorum animi odit. Et ut aut. Optio asperiores dolorem odio illo occaecati. Reprehenderit repellat maxime vel fugit ut.", "date_deployed"=>"2016-06-22", "featured"=>"false"}, "relationships"=>{"color_set"=>{"data"=>{"background"=>"#b32d24", "button"=>"silver", "circle"=>"#543008"}}, "languages"=>{"data"=>[{"title"=>"feed"}, {"title"=>"bandwidth"}]}, "devices"=>{"data"=>[{"title"=>"card"}, {"title"=>"feed"}]}}} |

Response: 200
```json
{
  "data": {
    "id": "985",
    "type": "projects",
    "attributes": {
      "github_page_url": "http://cummingsprosacco.io/philip.jacobson",
      "web_page_url": "http://macgyvermayert.info/presley_littel",
      "title": "neural",
      "description": "If we back up the interface, we can get to the JBOD feed through the digital AGP driver!",
      "opening_body": "Inventore ipsam exercitationem deserunt facere velit nisi velit. Quis accusamus tenetur ex qui. Enim et eius omnis.",
      "closing_body": "Laborum debitis consequatur atque. Occaecati dolorum animi odit. Et ut aut. Optio asperiores dolorem odio illo occaecati. Reprehenderit repellat maxime vel fugit ut.",
      "date_deployed": "2016-06-22",
      "featured": false,
      "header_image": null
    },
    "links": {
      "self": "/projects/985"
    },
    "relationships": {
      "color_set": {
        "links": {
          "self": "/projects/985/relationships/color_set",
          "related": "/projects/985/color_set"
        },
        "data": {
          "type": "color-sets",
          "id": "975"
        }
      },
      "languages": {
        "links": {
          "self": "/projects/985/relationships/languages",
          "related": "/projects/985/languages"
        },
        "data": [
          {
            "type": "languages",
            "id": "1941"
          },
          {
            "type": "languages",
            "id": "1942"
          }
        ]
      },
      "devices": {
        "links": {
          "self": "/projects/985/relationships/devices",
          "related": "/projects/985/devices"
        },
        "data": [
          {
            "type": "devices",
            "id": "1953"
          },
          {
            "type": "devices",
            "id": "1954"
          }
        ]
      }
    }
  },
  "included": [
    {
      "id": "975",
      "type": "color-sets",
      "attributes": {
        "background": "#b32d24",
        "button": "silver",
        "circle": "#543008"
      },
      "links": {
        "self": "/color-sets/975"
      }
    },
    {
      "id": "1941",
      "type": "languages",
      "attributes": {
        "title": "feed"
      },
      "links": {
        "self": "/languages/1941"
      }
    },
    {
      "id": "1942",
      "type": "languages",
      "attributes": {
        "title": "bandwidth"
      },
      "links": {
        "self": "/languages/1942"
      }
    },
    {
      "id": "1953",
      "type": "devices",
      "attributes": {
        "title": "card"
      },
      "links": {
        "self": "/devices/1953"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/1953/relationships/screenshot",
            "related": "/devices/1953/screenshot"
          }
        }
      }
    },
    {
      "id": "1954",
      "type": "devices",
      "attributes": {
        "title": "feed"
      },
      "links": {
        "self": "/devices/1954"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/1954/relationships/screenshot",
            "related": "/devices/1954/screenshot"
          }
        }
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
#### GET /api/projects


| Param | Value |
| ----- | ----- |


Response: 200
```json
{
  "data": [
    {
      "id": "987",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://murphymurray.net/sammie",
        "web_page_url": "http://batzmacgyver.biz/eric",
        "title": "Brown, Okuneva and Casper",
        "description": "Incidunt iusto numquam. Ullam blanditiis id eos itaque dicta. Sint iste magnam odio quaerat vel at. Quas quia laboriosam sed ducimus velit eos.",
        "opening_body": "[\"Ut qui nobis ducimus ipsum porro. Molestias harum commodi eaque dolorem quam. Adipisci tempora alias modi velit facilis sunt. Soluta ad quos veniam eum error. Deserunt atque repellendus explicabo rerum vel.\", \"Quos iste harum porro rerum. Eligendi beatae veritatis dolores non ut consectetur. Architecto explicabo et nihil. Saepe sit ab voluptate autem quia dolorem.\", \"Perferendis et sequi. Molestiae et minima. Soluta in ut commodi accusamus tempore accusantium.\"]",
        "closing_body": "[\"Alias minima animi accusamus. Consequuntur hic vero. Minus quidem sapiente aspernatur ullam nemo impedit. Ab natus magnam. Ipsa enim sed doloribus qui fuga mollitia nulla.\", \"Provident praesentium ut earum. Exercitationem consequatur rerum labore perspiciatis dolorem. Repellendus culpa tenetur sit cum.\", \"Quibusdam non commodi cumque maiores. Ipsa sint qui consequatur libero animi et. Quia quam impedit ut saepe. Velit et est necessitatibus natus voluptas. Dolorum aut perferendis alias vero earum.\"]",
        "date_deployed": "2016-03-13",
        "featured": false,
        "header_image": "/uploads/project/header_image/987/food-01.png"
      },
      "links": {
        "self": "/projects/987"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/987/relationships/color_set",
            "related": "/projects/987/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "977"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/987/relationships/languages",
            "related": "/projects/987/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "1945"
            },
            {
              "type": "languages",
              "id": "1946"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/987/relationships/devices",
            "related": "/projects/987/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "1957"
            },
            {
              "type": "devices",
              "id": "1958"
            }
          ]
        }
      }
    },
    {
      "id": "988",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://murphymurray.net/sammie",
        "web_page_url": "http://batzmacgyver.biz/eric",
        "title": "Quitzon Inc",
        "description": "Ipsam eligendi magni. Deleniti harum aut expedita doloremque non. Dolor porro quam saepe non adipisci atque ut.",
        "opening_body": "[\"Natus voluptates quisquam autem velit. Nisi consectetur possimus. Qui aliquid aut sed sit odio. Voluptas alias placeat dolorum.\", \"Sit molestias ducimus pariatur aut. Ad veritatis natus eius aliquid officiis. Qui nihil doloribus voluptas odit.\", \"Voluptas consequuntur esse maxime neque atque. Rem doloremque et quia corporis reprehenderit iure alias. Vel ratione ullam minus veritatis voluptatem.\"]",
        "closing_body": "[\"Eius voluptatem sunt eos. Aperiam quis qui et ab qui. Odit veniam quia eos inventore. Temporibus qui incidunt eos distinctio in repellendus vel. Rerum esse aut.\", \"Autem vel quibusdam. Exercitationem qui temporibus accusantium. Aspernatur facere perspiciatis perferendis.\", \"Ea illo voluptatibus. Laudantium voluptate vitae minus dolor vel eum. Ullam saepe aut. Voluptatum tempora quia itaque magni.\"]",
        "date_deployed": "2016-03-13",
        "featured": false,
        "header_image": "/uploads/project/header_image/988/food-01.png"
      },
      "links": {
        "self": "/projects/988"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/988/relationships/color_set",
            "related": "/projects/988/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "978"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/988/relationships/languages",
            "related": "/projects/988/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "1947"
            },
            {
              "type": "languages",
              "id": "1948"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/988/relationships/devices",
            "related": "/projects/988/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "1959"
            },
            {
              "type": "devices",
              "id": "1960"
            }
          ]
        }
      }
    },
    {
      "id": "989",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://murphymurray.net/sammie",
        "web_page_url": "http://batzmacgyver.biz/eric",
        "title": "Cronin, Schuppe and Ondricka",
        "description": "Aut laborum iure. Ipsam sed quia unde et laudantium. Qui est sed nihil libero. Id sequi ut dignissimos totam a. Facere cum assumenda suscipit.",
        "opening_body": "[\"Quia et qui magnam dignissimos id. Eum cupiditate velit id est eius voluptatem aliquam. Iste animi eveniet architecto voluptatem et neque. Repellat reprehenderit quibusdam consequatur reiciendis omnis enim in.\", \"Eius voluptatum dolor eos neque non animi temporibus. Consequuntur eos aut consectetur dignissimos quisquam dolor velit. Dolorum a officiis mollitia corporis eos incidunt eligendi. Aut vitae occaecati voluptatem earum. Quae eveniet ullam in soluta et voluptatem libero.\", \"Dolorem pariatur omnis deleniti. Unde in molestiae totam doloremque harum eum. Est impedit ut sint facilis omnis. Quos consequatur corrupti. Vel molestiae libero sit velit.\"]",
        "closing_body": "[\"Distinctio nulla soluta dolores et accusantium vel. Aut repudiandae porro vel tenetur. Harum et voluptates. Enim deleniti dicta rem dignissimos non.\", \"Expedita mollitia et aperiam eum dolores ut molestiae. Nihil iure et qui enim quia quis laudantium. Omnis voluptatum in. Possimus dolorem et tempore exercitationem minus.\", \"Enim nobis voluptate non. Qui quisquam omnis harum odit. Sed non excepturi.\"]",
        "date_deployed": "2016-03-13",
        "featured": false,
        "header_image": "/uploads/project/header_image/989/food-01.png"
      },
      "links": {
        "self": "/projects/989"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/989/relationships/color_set",
            "related": "/projects/989/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "979"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/989/relationships/languages",
            "related": "/projects/989/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "1949"
            },
            {
              "type": "languages",
              "id": "1950"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/989/relationships/devices",
            "related": "/projects/989/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "1961"
            },
            {
              "type": "devices",
              "id": "1962"
            }
          ]
        }
      }
    },
    {
      "id": "990",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://murphymurray.net/sammie",
        "web_page_url": "http://batzmacgyver.biz/eric",
        "title": "Boehm Inc",
        "description": "Officia sint mollitia similique molestiae. Esse sed omnis enim necessitatibus. Cumque odio doloremque quod temporibus molestias maxime et.",
        "opening_body": "[\"Eius et quis non dolor. Tempore impedit voluptatem magni optio unde. Aut ratione sapiente architecto et illum minima.\", \"Ipsam totam fugit eius corrupti. Consequatur illo iusto aliquid quas qui. Eum omnis non consequatur dolor ut minima.\", \"Ut provident id. Adipisci voluptatum consequatur quasi. Aspernatur error ipsum.\"]",
        "closing_body": "[\"Ad omnis impedit veniam vel sint voluptatum quo. Optio non dicta quas. Id officiis modi facilis eius occaecati.\", \"Distinctio ut fugiat architecto neque non. Rerum aut repellat possimus. Quibusdam quia corporis perspiciatis est qui tempore. Aliquam et consequatur et doloribus magni rerum.\", \"Enim quaerat quia tempore iste nulla. Provident ad sunt. Reiciendis minus quod sunt. Consequatur non libero quas.\"]",
        "date_deployed": "2016-03-13",
        "featured": false,
        "header_image": "/uploads/project/header_image/990/food-01.png"
      },
      "links": {
        "self": "/projects/990"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/990/relationships/color_set",
            "related": "/projects/990/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "980"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/990/relationships/languages",
            "related": "/projects/990/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "1951"
            },
            {
              "type": "languages",
              "id": "1952"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/990/relationships/devices",
            "related": "/projects/990/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "1963"
            },
            {
              "type": "devices",
              "id": "1964"
            }
          ]
        }
      }
    },
    {
      "id": "991",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://murphymurray.net/sammie",
        "web_page_url": "http://batzmacgyver.biz/eric",
        "title": "Weissnat-Satterfield",
        "description": "Dolorem unde harum deserunt qui. Dolore molestias quia ipsam natus alias id quis. Nihil facilis sunt.",
        "opening_body": "[\"Voluptas est eaque et. Dolorem et ex dolore quia. Facilis saepe incidunt rerum facere rem. Quibusdam dolor soluta ut tempora animi incidunt. Sequi quia ad aut sit.\", \"Veniam ipsa eveniet tempore sed sint voluptas. Magni aut esse sit numquam et. Voluptatem nulla necessitatibus quia magnam impedit. Ad hic quasi ipsa autem voluptatum.\", \"Similique illum doloribus eius laboriosam error. Rerum velit laborum. Sit repellat blanditiis at excepturi molestias. Sit laboriosam quis.\"]",
        "closing_body": "[\"Aut omnis qui enim amet doloribus labore. Illo culpa aliquid eos rerum aspernatur pariatur aut. Minus sed aut ipsum est ipsa hic.\", \"Vitae vel quia iste ut laudantium corporis veniam. In quam qui voluptatum rerum mollitia. Sit occaecati maiores illum. Autem perferendis consectetur minima dolor quae. Voluptas aut molestiae.\", \"Eum et alias perspiciatis. Odit molestias consequatur ut dolor repellat autem. Illo quia neque sit beatae voluptate.\"]",
        "date_deployed": "2016-03-13",
        "featured": false,
        "header_image": "/uploads/project/header_image/991/food-01.png"
      },
      "links": {
        "self": "/projects/991"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/991/relationships/color_set",
            "related": "/projects/991/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "981"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/991/relationships/languages",
            "related": "/projects/991/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "1953"
            },
            {
              "type": "languages",
              "id": "1954"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/991/relationships/devices",
            "related": "/projects/991/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "1965"
            },
            {
              "type": "devices",
              "id": "1966"
            }
          ]
        }
      }
    }
  ],
  "included": [
    {
      "id": "977",
      "type": "color-sets",
      "attributes": {
        "background": "#7894d7",
        "button": "#30cf05",
        "circle": "#055ad2"
      },
      "links": {
        "self": "/color-sets/977"
      }
    },
    {
      "id": "1945",
      "type": "languages",
      "attributes": {
        "title": "Cross-group"
      },
      "links": {
        "self": "/languages/1945"
      }
    },
    {
      "id": "1946",
      "type": "languages",
      "attributes": {
        "title": "Seamless"
      },
      "links": {
        "self": "/languages/1946"
      }
    },
    {
      "id": "1957",
      "type": "devices",
      "attributes": {
        "title": "multi-state"
      },
      "links": {
        "self": "/devices/1957"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/1957/relationships/screenshot",
            "related": "/devices/1957/screenshot"
          }
        }
      }
    },
    {
      "id": "1958",
      "type": "devices",
      "attributes": {
        "title": "Intuitive"
      },
      "links": {
        "self": "/devices/1958"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/1958/relationships/screenshot",
            "related": "/devices/1958/screenshot"
          }
        }
      }
    },
    {
      "id": "978",
      "type": "color-sets",
      "attributes": {
        "background": "#86d973",
        "button": "#b4aa9a",
        "circle": "#96ed79"
      },
      "links": {
        "self": "/color-sets/978"
      }
    },
    {
      "id": "1947",
      "type": "languages",
      "attributes": {
        "title": "benchmark"
      },
      "links": {
        "self": "/languages/1947"
      }
    },
    {
      "id": "1948",
      "type": "languages",
      "attributes": {
        "title": "5th generation"
      },
      "links": {
        "self": "/languages/1948"
      }
    },
    {
      "id": "1959",
      "type": "devices",
      "attributes": {
        "title": "even-keeled"
      },
      "links": {
        "self": "/devices/1959"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/1959/relationships/screenshot",
            "related": "/devices/1959/screenshot"
          }
        }
      }
    },
    {
      "id": "1960",
      "type": "devices",
      "attributes": {
        "title": "database"
      },
      "links": {
        "self": "/devices/1960"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/1960/relationships/screenshot",
            "related": "/devices/1960/screenshot"
          }
        }
      }
    },
    {
      "id": "979",
      "type": "color-sets",
      "attributes": {
        "background": "#ddcb65",
        "button": "#b26a4f",
        "circle": "#58c12c"
      },
      "links": {
        "self": "/color-sets/979"
      }
    },
    {
      "id": "1949",
      "type": "languages",
      "attributes": {
        "title": "forecast"
      },
      "links": {
        "self": "/languages/1949"
      }
    },
    {
      "id": "1950",
      "type": "languages",
      "attributes": {
        "title": "Decentralized"
      },
      "links": {
        "self": "/languages/1950"
      }
    },
    {
      "id": "1961",
      "type": "devices",
      "attributes": {
        "title": "systematic"
      },
      "links": {
        "self": "/devices/1961"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/1961/relationships/screenshot",
            "related": "/devices/1961/screenshot"
          }
        }
      }
    },
    {
      "id": "1962",
      "type": "devices",
      "attributes": {
        "title": "Switchable"
      },
      "links": {
        "self": "/devices/1962"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/1962/relationships/screenshot",
            "related": "/devices/1962/screenshot"
          }
        }
      }
    },
    {
      "id": "980",
      "type": "color-sets",
      "attributes": {
        "background": "#a9f6d6",
        "button": "#2f2398",
        "circle": "#8331d4"
      },
      "links": {
        "self": "/color-sets/980"
      }
    },
    {
      "id": "1951",
      "type": "languages",
      "attributes": {
        "title": "help-desk"
      },
      "links": {
        "self": "/languages/1951"
      }
    },
    {
      "id": "1952",
      "type": "languages",
      "attributes": {
        "title": "task-force"
      },
      "links": {
        "self": "/languages/1952"
      }
    },
    {
      "id": "1963",
      "type": "devices",
      "attributes": {
        "title": "Grass-roots"
      },
      "links": {
        "self": "/devices/1963"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/1963/relationships/screenshot",
            "related": "/devices/1963/screenshot"
          }
        }
      }
    },
    {
      "id": "1964",
      "type": "devices",
      "attributes": {
        "title": "web-enabled"
      },
      "links": {
        "self": "/devices/1964"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/1964/relationships/screenshot",
            "related": "/devices/1964/screenshot"
          }
        }
      }
    },
    {
      "id": "981",
      "type": "color-sets",
      "attributes": {
        "background": "#f51158",
        "button": "#ecff2c",
        "circle": "#8be3d2"
      },
      "links": {
        "self": "/color-sets/981"
      }
    },
    {
      "id": "1953",
      "type": "languages",
      "attributes": {
        "title": "value-added"
      },
      "links": {
        "self": "/languages/1953"
      }
    },
    {
      "id": "1954",
      "type": "languages",
      "attributes": {
        "title": "Optimized"
      },
      "links": {
        "self": "/languages/1954"
      }
    },
    {
      "id": "1965",
      "type": "devices",
      "attributes": {
        "title": "radical"
      },
      "links": {
        "self": "/devices/1965"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/1965/relationships/screenshot",
            "related": "/devices/1965/screenshot"
          }
        }
      }
    },
    {
      "id": "1966",
      "type": "devices",
      "attributes": {
        "title": "content-based"
      },
      "links": {
        "self": "/devices/1966"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/1966/relationships/screenshot",
            "related": "/devices/1966/screenshot"
          }
        }
      }
    }
  ]
}
```
#### GET /api/projects/1007


| Param | Value |
| ----- | ----- |
| id | 1007 |

Response: 200
```json
{
  "data": {
    "id": "1007",
    "type": "projects",
    "attributes": {
      "github_page_url": "http://murphymurray.net/sammie",
      "web_page_url": "http://batzmacgyver.biz/eric",
      "title": "Klein-Adams",
      "description": "Molestiae quia et illo consequuntur impedit in qui. Pariatur aperiam est illum dolorem illo aut. Nulla corporis dolorem quam et debitis. Dolorem dicta ut impedit. Nobis magnam quaerat sunt aut voluptatem ab.",
      "opening_body": "[\"Quis quidem voluptatem vel dolorem et. Ipsam debitis velit optio quae voluptas. Natus ut et fugit in voluptatem dignissimos eum. Sed animi impedit ratione suscipit.\", \"Repudiandae occaecati tempora commodi eos voluptatum. Ullam animi aut. Velit odit sapiente sequi. Repudiandae sequi est. Nobis possimus velit culpa perferendis repellat reprehenderit quis.\", \"Nesciunt et eos impedit non voluptas. Illo ea quia et iusto blanditiis dicta. Asperiores neque aut reiciendis. Distinctio vitae quis impedit voluptas doloribus.\"]",
      "closing_body": "[\"Excepturi at in tenetur quia deleniti. Velit quibusdam ad quia est saepe. Voluptatem velit repudiandae et labore dolores perferendis.\", \"Ea sed suscipit ut. Omnis et velit nulla. Quia optio porro. Ad mollitia et et.\", \"Culpa alias omnis consequatur nostrum veniam quis. Est ipsam iure. Quae voluptates sequi harum. Laudantium cum dolor corrupti totam ut sit tempore.\"]",
      "date_deployed": "2016-03-13",
      "featured": false,
      "header_image": "/uploads/project/header_image/1007/food-01.png"
    },
    "links": {
      "self": "/projects/1007"
    },
    "relationships": {
      "color_set": {
        "links": {
          "self": "/projects/1007/relationships/color_set",
          "related": "/projects/1007/color_set"
        },
        "data": {
          "type": "color-sets",
          "id": "997"
        }
      },
      "languages": {
        "links": {
          "self": "/projects/1007/relationships/languages",
          "related": "/projects/1007/languages"
        },
        "data": [
          {
            "type": "languages",
            "id": "1985"
          },
          {
            "type": "languages",
            "id": "1986"
          }
        ]
      },
      "devices": {
        "links": {
          "self": "/projects/1007/relationships/devices",
          "related": "/projects/1007/devices"
        },
        "data": [
          {
            "type": "devices",
            "id": "1997"
          },
          {
            "type": "devices",
            "id": "1998"
          }
        ]
      }
    }
  },
  "included": [
    {
      "id": "997",
      "type": "color-sets",
      "attributes": {
        "background": "#61619c",
        "button": "#f13647",
        "circle": "#774d1b"
      },
      "links": {
        "self": "/color-sets/997"
      }
    },
    {
      "id": "1985",
      "type": "languages",
      "attributes": {
        "title": "support"
      },
      "links": {
        "self": "/languages/1985"
      }
    },
    {
      "id": "1986",
      "type": "languages",
      "attributes": {
        "title": "conglomeration"
      },
      "links": {
        "self": "/languages/1986"
      }
    },
    {
      "id": "1997",
      "type": "devices",
      "attributes": {
        "title": "Persistent"
      },
      "links": {
        "self": "/devices/1997"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/1997/relationships/screenshot",
            "related": "/devices/1997/screenshot"
          },
          "data": {
            "type": "screenshots",
            "id": "1289"
          }
        }
      }
    },
    {
      "id": "1998",
      "type": "devices",
      "attributes": {
        "title": "logistical"
      },
      "links": {
        "self": "/devices/1998"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/1998/relationships/screenshot",
            "related": "/devices/1998/screenshot"
          },
          "data": {
            "type": "screenshots",
            "id": "1290"
          }
        }
      }
    },
    {
      "id": "1289",
      "type": "screenshots",
      "attributes": {
        "caption": "Totam aut cupiditate fugiat ut. Rerum placeat nihil eaque. Minima culpa laboriosam quasi blanditiis recusandae non odio. Officia aut ratione occaecati non rerum tempora qui. Aut quia ad repellendus labore et.",
        "image": "/uploads/screenshot/image/1289/food-01.png"
      },
      "links": {
        "self": "/screenshots/1289"
      }
    },
    {
      "id": "1290",
      "type": "screenshots",
      "attributes": {
        "caption": "Quia vero error quo voluptatem necessitatibus. Dolor dolorem sed quo quia saepe excepturi. Cumque eligendi error incidunt distinctio quia eius. Aut sed perspiciatis. Veritatis quidem corporis.",
        "image": "/uploads/screenshot/image/1290/food-01.png"
      },
      "links": {
        "self": "/screenshots/1290"
      }
    }
  ]
}
```
