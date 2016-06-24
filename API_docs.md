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
| data | {"type"=>"projects", "attributes"=>{"github_page_url"=>"http://batz.name/angie", "web_page_url"=>"http://greenholt.name/darien", "title"=>"cross-platform", "description"=>"If we connect the bus, we can get to the SAS monitor through the haptic PCI port!", "opening_body"=>"Fugiat quia similique. Aut error ut. Minus nulla consectetur non consequatur cum. Aut veniam a aut itaque natus numquam. Atque earum excepturi nostrum itaque delectus.", "closing_body"=>"Enim est vel illum temporibus ducimus voluptates. Qui porro placeat et eaque autem qui. Dolorem quia tenetur vel sint. Omnis cupiditate unde. Dignissimos molestiae dolor adipisci esse.", "date_deployed"=>"2016-05-12", "featured"=>"false"}, "relationships"=>{"color_set"=>{"data"=>{"background"=>"#cf906f", "button"=>"orchid", "circle"=>"#667c00"}}, "languages"=>{"data"=>[{"title"=>"monitor"}, {"title"=>"pixel"}]}, "devices"=>{"data"=>[{"title"=>"alarm"}, {"title"=>"transmitter"}]}}} |

Response: 200
```json
{
  "data": {
    "id": "1065",
    "type": "projects",
    "attributes": {
      "github_page_url": "http://batz.name/angie",
      "web_page_url": "http://greenholt.name/darien",
      "title": "cross-platform",
      "description": "If we connect the bus, we can get to the SAS monitor through the haptic PCI port!",
      "opening_body": "Fugiat quia similique. Aut error ut. Minus nulla consectetur non consequatur cum. Aut veniam a aut itaque natus numquam. Atque earum excepturi nostrum itaque delectus.",
      "closing_body": "Enim est vel illum temporibus ducimus voluptates. Qui porro placeat et eaque autem qui. Dolorem quia tenetur vel sint. Omnis cupiditate unde. Dignissimos molestiae dolor adipisci esse.",
      "date_deployed": "2016-05-12",
      "featured": false,
      "header_image": null
    },
    "links": {
      "self": "/projects/1065"
    },
    "relationships": {
      "color_set": {
        "links": {
          "self": "/projects/1065/relationships/color_set",
          "related": "/projects/1065/color_set"
        },
        "data": {
          "type": "color-sets",
          "id": "1053"
        }
      },
      "languages": {
        "links": {
          "self": "/projects/1065/relationships/languages",
          "related": "/projects/1065/languages"
        },
        "data": [
          {
            "type": "languages",
            "id": "2093"
          },
          {
            "type": "languages",
            "id": "2094"
          }
        ]
      },
      "devices": {
        "links": {
          "self": "/projects/1065/relationships/devices",
          "related": "/projects/1065/devices"
        },
        "data": [
          {
            "type": "devices",
            "id": "2111"
          },
          {
            "type": "devices",
            "id": "2112"
          }
        ]
      }
    }
  },
  "included": [
    {
      "id": "1053",
      "type": "color-sets",
      "attributes": {
        "background": "#cf906f",
        "button": "orchid",
        "circle": "#667c00"
      },
      "links": {
        "self": "/color-sets/1053"
      }
    },
    {
      "id": "2093",
      "type": "languages",
      "attributes": {
        "title": "monitor"
      },
      "links": {
        "self": "/languages/2093"
      }
    },
    {
      "id": "2094",
      "type": "languages",
      "attributes": {
        "title": "pixel"
      },
      "links": {
        "self": "/languages/2094"
      }
    },
    {
      "id": "2111",
      "type": "devices",
      "attributes": {
        "title": "alarm"
      },
      "links": {
        "self": "/devices/2111"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2111/relationships/screenshot",
            "related": "/devices/2111/screenshot"
          }
        }
      }
    },
    {
      "id": "2112",
      "type": "devices",
      "attributes": {
        "title": "transmitter"
      },
      "links": {
        "self": "/devices/2112"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2112/relationships/screenshot",
            "related": "/devices/2112/screenshot"
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
      "id": "1067",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://runolfonsmith.io/orpha",
        "web_page_url": "http://hirthecrooks.com/tina",
        "title": "Ondricka and Sons",
        "description": "Quaerat qui consequatur earum totam eos asperiores itaque. Eveniet sed consequuntur saepe sunt. Fugiat eos et adipisci aliquid tempora ducimus. Ipsam eaque ducimus doloremque.",
        "opening_body": "[\"Atque et distinctio earum. Rerum optio deserunt. Delectus labore dolores dolores.\", \"Odio eos unde quia error ut commodi. Recusandae consequatur molestiae non omnis incidunt quia doloribus. Voluptates tenetur sed culpa. Velit perspiciatis sed alias atque.\", \"Aliquam eum quidem optio aut. Laboriosam repellat necessitatibus ratione unde nihil eum deserunt. Autem et sed qui.\"]",
        "closing_body": "[\"Amet minus incidunt aut aliquid numquam hic. Porro odio velit. Aut quisquam corrupti dolorem.\", \"Laborum distinctio amet. Et rerum sit provident quibusdam quos. Nam tenetur non consequuntur et. Rem eum voluptas quo omnis ipsam. Earum illo occaecati qui voluptatem doloribus.\", \"Animi consequatur quo libero laboriosam. Explicabo quos beatae. Qui dolores perspiciatis.\"]",
        "date_deployed": "2016-03-13",
        "featured": false,
        "header_image": "/uploads/project/header_image/1067/food-01.png"
      },
      "links": {
        "self": "/projects/1067"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/1067/relationships/color_set",
            "related": "/projects/1067/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "1055"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/1067/relationships/languages",
            "related": "/projects/1067/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "2097"
            },
            {
              "type": "languages",
              "id": "2098"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/1067/relationships/devices",
            "related": "/projects/1067/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "2115"
            },
            {
              "type": "devices",
              "id": "2116"
            }
          ]
        }
      }
    },
    {
      "id": "1068",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://runolfonsmith.io/orpha",
        "web_page_url": "http://hirthecrooks.com/tina",
        "title": "Adams, Gleichner and Rice",
        "description": "Est est et quisquam. Quia maiores sapiente consequatur laboriosam. Dolores eos nihil voluptas quis qui odio iure.",
        "opening_body": "[\"Non illo velit inventore nam dolor est. Nihil reiciendis quidem dolorem voluptas placeat consequatur. Illo architecto minima qui.\", \"Enim aut fugiat quod quos necessitatibus quasi. Molestiae dolor pariatur quo cumque dolores est et. Non officiis quo blanditiis. Beatae sit veritatis dolore. In non delectus voluptas.\", \"Dignissimos recusandae iure enim iste dolorem qui. At et aut quaerat quo commodi. Veniam voluptate consectetur.\"]",
        "closing_body": "[\"Tempore veritatis debitis. Cum dicta ipsam quos ea pariatur vel et. Quibusdam voluptas alias sed voluptas voluptatem quod. Quidem et ab eos itaque voluptatum.\", \"Est repudiandae temporibus repellat mollitia vel. Et quasi eum qui et perspiciatis. Molestiae error rerum.\", \"At deleniti aspernatur sed perspiciatis. Consequatur dolorum necessitatibus ea magnam accusamus et. Rerum explicabo sed culpa ut rerum voluptatem. Dolorum at ullam.\"]",
        "date_deployed": "2016-03-13",
        "featured": false,
        "header_image": "/uploads/project/header_image/1068/food-01.png"
      },
      "links": {
        "self": "/projects/1068"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/1068/relationships/color_set",
            "related": "/projects/1068/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "1056"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/1068/relationships/languages",
            "related": "/projects/1068/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "2099"
            },
            {
              "type": "languages",
              "id": "2100"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/1068/relationships/devices",
            "related": "/projects/1068/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "2117"
            },
            {
              "type": "devices",
              "id": "2118"
            }
          ]
        }
      }
    },
    {
      "id": "1069",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://runolfonsmith.io/orpha",
        "web_page_url": "http://hirthecrooks.com/tina",
        "title": "Sporer-Skiles",
        "description": "Sed est et. Vel doloremque velit explicabo fuga quia. Iusto optio illum aut ipsam voluptatum minima tempore.",
        "opening_body": "[\"Porro et cum rerum molestiae ea. Praesentium possimus consequuntur explicabo. Repellat blanditiis qui.\", \"Et quo dolorem et. Enim quae incidunt et blanditiis quam. Enim maxime blanditiis. Aliquid quas aperiam voluptatem nemo velit illo necessitatibus.\", \"Quam et voluptas. Est eveniet alias repudiandae et. In atque et.\"]",
        "closing_body": "[\"Delectus aut similique natus nesciunt. Omnis voluptas ratione et. Officiis fuga distinctio eum molestias et earum quia. Exercitationem laboriosam similique facere repudiandae est voluptatem.\", \"Sunt atque qui amet tempora nobis enim fugit. Minima autem sit perspiciatis non a dolorem sapiente. Saepe veniam eum quos.\", \"Laudantium ipsa placeat quod eum reprehenderit consequatur. Velit hic rerum aut id. Voluptates magnam omnis fuga. Mollitia doloremque occaecati ullam est.\"]",
        "date_deployed": "2016-03-13",
        "featured": false,
        "header_image": "/uploads/project/header_image/1069/food-01.png"
      },
      "links": {
        "self": "/projects/1069"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/1069/relationships/color_set",
            "related": "/projects/1069/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "1057"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/1069/relationships/languages",
            "related": "/projects/1069/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "2101"
            },
            {
              "type": "languages",
              "id": "2102"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/1069/relationships/devices",
            "related": "/projects/1069/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "2119"
            },
            {
              "type": "devices",
              "id": "2120"
            }
          ]
        }
      }
    },
    {
      "id": "1070",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://runolfonsmith.io/orpha",
        "web_page_url": "http://hirthecrooks.com/tina",
        "title": "Feest-Reichel",
        "description": "Error quidem atque ea. Iure laboriosam architecto dicta totam aperiam. Molestias quia quia vitae. Adipisci eum qui.",
        "opening_body": "[\"Cupiditate fuga explicabo ea id sit exercitationem. Et consequatur quasi quisquam placeat qui. Nihil qui qui saepe dolores vero sequi sit. Rerum magni quia.\", \"Aliquid iusto esse aut veniam. Beatae aspernatur quis at odio aut et. Fugiat ratione est voluptas explicabo recusandae occaecati labore. Ipsam aut porro et. Soluta adipisci repudiandae.\", \"Aut est est eaque. Laudantium cumque et. Ad officia voluptas fuga quisquam ut. Alias laudantium vitae. Fugit a ut dolorem deleniti error.\"]",
        "closing_body": "[\"Unde qui occaecati reiciendis consectetur. Delectus laudantium et aut voluptates. Odit et velit nihil ut omnis. Ut alias doloremque eveniet inventore fugit non.\", \"Voluptas voluptatem cupiditate dolore. Et et eveniet ipsa et. Quis voluptas corporis tempora sit.\", \"Molestiae est vel commodi voluptas ratione. Rerum molestiae est natus et. Facere a blanditiis.\"]",
        "date_deployed": "2016-03-13",
        "featured": false,
        "header_image": "/uploads/project/header_image/1070/food-01.png"
      },
      "links": {
        "self": "/projects/1070"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/1070/relationships/color_set",
            "related": "/projects/1070/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "1058"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/1070/relationships/languages",
            "related": "/projects/1070/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "2103"
            },
            {
              "type": "languages",
              "id": "2104"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/1070/relationships/devices",
            "related": "/projects/1070/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "2121"
            },
            {
              "type": "devices",
              "id": "2122"
            }
          ]
        }
      }
    },
    {
      "id": "1071",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://runolfonsmith.io/orpha",
        "web_page_url": "http://hirthecrooks.com/tina",
        "title": "Casper, Graham and Bahringer",
        "description": "Sed corporis impedit ipsum ut iste. Aliquam tempore quod laborum praesentium ut distinctio quibusdam. Veritatis beatae iure corporis. Non maxime rerum veniam autem velit voluptatem reiciendis.",
        "opening_body": "[\"Tempore sed iste nulla. Est voluptatem dolorum sit. A vero libero. Non quaerat sapiente necessitatibus quo iure laborum. Perferendis est laudantium.\", \"Unde quae doloribus dolorem corporis autem. Qui nostrum voluptatem recusandae voluptatem modi amet. Libero doloremque voluptatem necessitatibus. Ex delectus quibusdam eos repudiandae omnis. Nesciunt aut est ad totam.\", \"Sed voluptate ad amet. Est culpa sequi corrupti voluptatem eius. Ut ratione quam deserunt eum maxime. Et ea laboriosam quis qui est. Fuga illo architecto et quo qui enim eum.\"]",
        "closing_body": "[\"Neque non ut ea nostrum. Porro saepe ut. Voluptas delectus ex provident omnis. Odit ratione doloribus voluptatem unde assumenda.\", \"Qui reiciendis officiis fuga ex vitae voluptatem. Illo ut similique deserunt sint ut. Illo aspernatur perferendis aut qui cupiditate. Maxime animi mollitia. Nesciunt voluptas enim alias tempore.\", \"Nulla quod dignissimos et mollitia. Est non iure aut. Veritatis distinctio consequuntur architecto suscipit provident ipsa libero. Aut vel magni.\"]",
        "date_deployed": "2016-03-13",
        "featured": false,
        "header_image": "/uploads/project/header_image/1071/food-01.png"
      },
      "links": {
        "self": "/projects/1071"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/1071/relationships/color_set",
            "related": "/projects/1071/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "1059"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/1071/relationships/languages",
            "related": "/projects/1071/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "2105"
            },
            {
              "type": "languages",
              "id": "2106"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/1071/relationships/devices",
            "related": "/projects/1071/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "2123"
            },
            {
              "type": "devices",
              "id": "2124"
            }
          ]
        }
      }
    }
  ],
  "included": [
    {
      "id": "1055",
      "type": "color-sets",
      "attributes": {
        "background": "#785b54",
        "button": "#73f031",
        "circle": "#2f7c91"
      },
      "links": {
        "self": "/color-sets/1055"
      }
    },
    {
      "id": "2097",
      "type": "languages",
      "attributes": {
        "title": "adapter"
      },
      "links": {
        "self": "/languages/2097"
      }
    },
    {
      "id": "2098",
      "type": "languages",
      "attributes": {
        "title": "project"
      },
      "links": {
        "self": "/languages/2098"
      }
    },
    {
      "id": "2115",
      "type": "devices",
      "attributes": {
        "title": "Polarised"
      },
      "links": {
        "self": "/devices/2115"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2115/relationships/screenshot",
            "related": "/devices/2115/screenshot"
          }
        }
      }
    },
    {
      "id": "2116",
      "type": "devices",
      "attributes": {
        "title": "encompassing"
      },
      "links": {
        "self": "/devices/2116"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2116/relationships/screenshot",
            "related": "/devices/2116/screenshot"
          }
        }
      }
    },
    {
      "id": "1056",
      "type": "color-sets",
      "attributes": {
        "background": "#01f723",
        "button": "#b9c87a",
        "circle": "#03df27"
      },
      "links": {
        "self": "/color-sets/1056"
      }
    },
    {
      "id": "2099",
      "type": "languages",
      "attributes": {
        "title": "extranet"
      },
      "links": {
        "self": "/languages/2099"
      }
    },
    {
      "id": "2100",
      "type": "languages",
      "attributes": {
        "title": "high-level"
      },
      "links": {
        "self": "/languages/2100"
      }
    },
    {
      "id": "2117",
      "type": "devices",
      "attributes": {
        "title": "interactive"
      },
      "links": {
        "self": "/devices/2117"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2117/relationships/screenshot",
            "related": "/devices/2117/screenshot"
          }
        }
      }
    },
    {
      "id": "2118",
      "type": "devices",
      "attributes": {
        "title": "Adaptive"
      },
      "links": {
        "self": "/devices/2118"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2118/relationships/screenshot",
            "related": "/devices/2118/screenshot"
          }
        }
      }
    },
    {
      "id": "1057",
      "type": "color-sets",
      "attributes": {
        "background": "#778fd2",
        "button": "#ac355b",
        "circle": "#e131b0"
      },
      "links": {
        "self": "/color-sets/1057"
      }
    },
    {
      "id": "2101",
      "type": "languages",
      "attributes": {
        "title": "Ergonomic"
      },
      "links": {
        "self": "/languages/2101"
      }
    },
    {
      "id": "2102",
      "type": "languages",
      "attributes": {
        "title": "radical"
      },
      "links": {
        "self": "/languages/2102"
      }
    },
    {
      "id": "2119",
      "type": "devices",
      "attributes": {
        "title": "exuding"
      },
      "links": {
        "self": "/devices/2119"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2119/relationships/screenshot",
            "related": "/devices/2119/screenshot"
          }
        }
      }
    },
    {
      "id": "2120",
      "type": "devices",
      "attributes": {
        "title": "Enhanced"
      },
      "links": {
        "self": "/devices/2120"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2120/relationships/screenshot",
            "related": "/devices/2120/screenshot"
          }
        }
      }
    },
    {
      "id": "1058",
      "type": "color-sets",
      "attributes": {
        "background": "#1995f3",
        "button": "#ea2308",
        "circle": "#20f3d3"
      },
      "links": {
        "self": "/color-sets/1058"
      }
    },
    {
      "id": "2103",
      "type": "languages",
      "attributes": {
        "title": "maximized"
      },
      "links": {
        "self": "/languages/2103"
      }
    },
    {
      "id": "2104",
      "type": "languages",
      "attributes": {
        "title": "groupware"
      },
      "links": {
        "self": "/languages/2104"
      }
    },
    {
      "id": "2121",
      "type": "devices",
      "attributes": {
        "title": "zero administration"
      },
      "links": {
        "self": "/devices/2121"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2121/relationships/screenshot",
            "related": "/devices/2121/screenshot"
          }
        }
      }
    },
    {
      "id": "2122",
      "type": "devices",
      "attributes": {
        "title": "actuating"
      },
      "links": {
        "self": "/devices/2122"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2122/relationships/screenshot",
            "related": "/devices/2122/screenshot"
          }
        }
      }
    },
    {
      "id": "1059",
      "type": "color-sets",
      "attributes": {
        "background": "#eb33b7",
        "button": "#75387a",
        "circle": "#9a51d4"
      },
      "links": {
        "self": "/color-sets/1059"
      }
    },
    {
      "id": "2105",
      "type": "languages",
      "attributes": {
        "title": "Intuitive"
      },
      "links": {
        "self": "/languages/2105"
      }
    },
    {
      "id": "2106",
      "type": "languages",
      "attributes": {
        "title": "Networked"
      },
      "links": {
        "self": "/languages/2106"
      }
    },
    {
      "id": "2123",
      "type": "devices",
      "attributes": {
        "title": "monitoring"
      },
      "links": {
        "self": "/devices/2123"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2123/relationships/screenshot",
            "related": "/devices/2123/screenshot"
          }
        }
      }
    },
    {
      "id": "2124",
      "type": "devices",
      "attributes": {
        "title": "Secured"
      },
      "links": {
        "self": "/devices/2124"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2124/relationships/screenshot",
            "related": "/devices/2124/screenshot"
          }
        }
      }
    }
  ]
}
```
#### GET /api/projects/1087


| Param | Value |
| ----- | ----- |
| id | 1087 |

Response: 200
```json
{
  "data": {
    "id": "1087",
    "type": "projects",
    "attributes": {
      "github_page_url": "http://runolfonsmith.io/orpha",
      "web_page_url": "http://hirthecrooks.com/tina",
      "title": "Howe, Carter and Lebsack",
      "description": "Neque molestiae quasi eum atque. Quasi veniam sed ut sunt vero sapiente minima. Ut laudantium qui quo facere at. Qui id ratione dolorem. Nisi saepe quas sequi alias doloremque nihil.",
      "opening_body": "[\"Dolor reprehenderit et minima doloribus et modi. Dicta in non. Reiciendis laudantium molestiae accusamus et qui odio. Aspernatur dolor sint iure nihil eveniet id neque. Molestiae dolorem et vel nam.\", \"Consectetur dolorum ratione porro mollitia et. Corporis vitae pariatur sint blanditiis facere maiores est. Tempore dignissimos eum et. Perspiciatis dignissimos aut enim. Reprehenderit alias deserunt.\", \"Cumque odit nihil voluptatem ipsum laboriosam ut. Eius nulla incidunt adipisci sunt aliquid. Sit saepe asperiores esse doloremque unde repudiandae. Omnis tempora enim.\"]",
      "closing_body": "[\"In minus et. Eveniet quia eos. Et nostrum sequi officiis. Rerum fugiat quas nulla aut in dolor.\", \"Natus aliquid et ipsa excepturi accusantium maxime. Consectetur vitae quam ipsa cumque provident. Earum tenetur fugit et optio est molestiae. Facere iusto itaque aut. Velit id voluptatum voluptate quia esse quasi.\", \"Illo vel occaecati. Natus quaerat repellat. Quasi modi nulla deleniti quia molestiae. Voluptatum illo explicabo velit et.\"]",
      "date_deployed": "2016-03-13",
      "featured": false,
      "header_image": "/uploads/project/header_image/1087/food-01.png"
    },
    "links": {
      "self": "/projects/1087"
    },
    "relationships": {
      "color_set": {
        "links": {
          "self": "/projects/1087/relationships/color_set",
          "related": "/projects/1087/color_set"
        },
        "data": {
          "type": "color-sets",
          "id": "1075"
        }
      },
      "languages": {
        "links": {
          "self": "/projects/1087/relationships/languages",
          "related": "/projects/1087/languages"
        },
        "data": [
          {
            "type": "languages",
            "id": "2137"
          },
          {
            "type": "languages",
            "id": "2138"
          }
        ]
      },
      "devices": {
        "links": {
          "self": "/projects/1087/relationships/devices",
          "related": "/projects/1087/devices"
        },
        "data": [
          {
            "type": "devices",
            "id": "2155"
          },
          {
            "type": "devices",
            "id": "2156"
          }
        ]
      }
    }
  },
  "included": [
    {
      "id": "1075",
      "type": "color-sets",
      "attributes": {
        "background": "#88d1e3",
        "button": "#094291",
        "circle": "#59bcb8"
      },
      "links": {
        "self": "/color-sets/1075"
      }
    },
    {
      "id": "2137",
      "type": "languages",
      "attributes": {
        "title": "3rd generation"
      },
      "links": {
        "self": "/languages/2137"
      }
    },
    {
      "id": "2138",
      "type": "languages",
      "attributes": {
        "title": "zero administration"
      },
      "links": {
        "self": "/languages/2138"
      }
    },
    {
      "id": "2155",
      "type": "devices",
      "attributes": {
        "title": "algorithm"
      },
      "links": {
        "self": "/devices/2155"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2155/relationships/screenshot",
            "related": "/devices/2155/screenshot"
          },
          "data": {
            "type": "screenshots",
            "id": "1437"
          }
        }
      }
    },
    {
      "id": "2156",
      "type": "devices",
      "attributes": {
        "title": "Face to face"
      },
      "links": {
        "self": "/devices/2156"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2156/relationships/screenshot",
            "related": "/devices/2156/screenshot"
          },
          "data": {
            "type": "screenshots",
            "id": "1438"
          }
        }
      }
    },
    {
      "id": "1437",
      "type": "screenshots",
      "attributes": {
        "caption": "In earum deleniti distinctio quae. Laboriosam voluptas et quia consequatur atque aperiam. Cupiditate fugit facilis molestiae optio. Voluptas atque rerum quia.",
        "image": "/uploads/screenshot/image/1437/food-01.png"
      },
      "links": {
        "self": "/screenshots/1437"
      }
    },
    {
      "id": "1438",
      "type": "screenshots",
      "attributes": {
        "caption": "Inventore eligendi autem. Soluta consectetur corrupti exercitationem commodi molestiae. Esse eum sequi. Ex ut et aut quam nam itaque quae. Numquam repudiandae dolor recusandae ut.",
        "image": "/uploads/screenshot/image/1438/food-01.png"
      },
      "links": {
        "self": "/screenshots/1438"
      }
    }
  ]
}
```
