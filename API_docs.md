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
| data | {"type"=>"projects", "attributes"=>{"github_page_url"=>"http://schaeferlittel.name/jacinthe_reinger", "web_page_url"=>"http://cummeratatrantow.co/sandrine.kertzmann", "title"=>"1080p", "description"=>"navigating the array won't do anything, we need to bypass the multi-byte AI transmitter!", "opening_body"=>"Sit a magnam est voluptatibus qui eos molestias. Et ducimus voluptatem aliquid aut aut dolores enim. Dolores illo sit voluptas ea. Rem rerum et dolor blanditiis tenetur ut. Libero pariatur officiis quo autem.", "closing_body"=>"Aut deleniti dolores est explicabo qui accusantium. Et error sapiente in tempore. Nostrum nobis fuga sapiente ea corrupti repellendus voluptatum.", "date_deployed"=>"2016-05-04", "featured"=>"false"}, "relationships"=>{"color_set"=>{"data"=>{"background"=>"#3339d9", "button"=>"magenta", "circle"=>"#9b4a0e"}}, "languages"=>{"data"=>[{"title"=>"hard drive"}, {"title"=>"protocol"}]}, "devices"=>{"data"=>[{"title"=>"sensor"}, {"title"=>"matrix"}]}}} |

Response: 200
```json
{
  "data": {
    "id": "1120",
    "type": "projects",
    "attributes": {
      "github_page_url": "http://schaeferlittel.name/jacinthe_reinger",
      "web_page_url": "http://cummeratatrantow.co/sandrine.kertzmann",
      "title": "1080p",
      "description": "navigating the array won't do anything, we need to bypass the multi-byte AI transmitter!",
      "opening_body": "Sit a magnam est voluptatibus qui eos molestias. Et ducimus voluptatem aliquid aut aut dolores enim. Dolores illo sit voluptas ea. Rem rerum et dolor blanditiis tenetur ut. Libero pariatur officiis quo autem.",
      "closing_body": "Aut deleniti dolores est explicabo qui accusantium. Et error sapiente in tempore. Nostrum nobis fuga sapiente ea corrupti repellendus voluptatum.",
      "date_deployed": "2016-05-04",
      "featured": false,
      "header_image": null
    },
    "links": {
      "self": "/projects/1120"
    },
    "relationships": {
      "color_set": {
        "links": {
          "self": "/projects/1120/relationships/color_set",
          "related": "/projects/1120/color_set"
        },
        "data": {
          "type": "color-sets",
          "id": "1107"
        }
      },
      "languages": {
        "links": {
          "self": "/projects/1120/relationships/languages",
          "related": "/projects/1120/languages"
        },
        "data": [
          {
            "type": "languages",
            "id": "2199"
          },
          {
            "type": "languages",
            "id": "2200"
          }
        ]
      },
      "devices": {
        "links": {
          "self": "/projects/1120/relationships/devices",
          "related": "/projects/1120/devices"
        },
        "data": [
          {
            "type": "devices",
            "id": "2220"
          },
          {
            "type": "devices",
            "id": "2221"
          }
        ]
      }
    }
  },
  "included": [
    {
      "id": "1107",
      "type": "color-sets",
      "attributes": {
        "background": "#3339d9",
        "button": "magenta",
        "circle": "#9b4a0e"
      },
      "links": {
        "self": "/color-sets/1107"
      }
    },
    {
      "id": "2199",
      "type": "languages",
      "attributes": {
        "title": "hard drive"
      },
      "links": {
        "self": "/languages/2199"
      }
    },
    {
      "id": "2200",
      "type": "languages",
      "attributes": {
        "title": "protocol"
      },
      "links": {
        "self": "/languages/2200"
      }
    },
    {
      "id": "2220",
      "type": "devices",
      "attributes": {
        "title": "sensor"
      },
      "links": {
        "self": "/devices/2220"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2220/relationships/screenshot",
            "related": "/devices/2220/screenshot"
          }
        }
      }
    },
    {
      "id": "2221",
      "type": "devices",
      "attributes": {
        "title": "matrix"
      },
      "links": {
        "self": "/devices/2221"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2221/relationships/screenshot",
            "related": "/devices/2221/screenshot"
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
      "id": "1122",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://lednerpowlowski.name/consuelo.zboncak",
        "web_page_url": "http://sawayn.org/paolo.goyette",
        "title": "Borer Inc",
        "description": "Quia quidem qui autem. Ducimus fuga facilis dolorem beatae. Quaerat voluptatem est maiores porro aut. Id nisi alias qui odit quae est ducimus. Adipisci ad repudiandae rem.",
        "opening_body": "[\"Ullam non dolorem consectetur temporibus est nesciunt. Aut quaerat quia excepturi dolor officia et et. Autem iure nihil sit quasi sequi. Hic inventore voluptatum in fuga voluptas.\", \"Aut nobis dolore est quod asperiores architecto. Pariatur nisi nam repellat eos. Quia dolores et nihil nihil. Exercitationem eos dolore explicabo illum recusandae. Quibusdam odio voluptates sed voluptatem pariatur aut.\", \"Quis sed modi ducimus ut a voluptas vitae. Accusantium corrupti quia quis. Voluptatem ea sint. Et sed minus doloremque asperiores nulla. Officiis consectetur id qui.\"]",
        "closing_body": "[\"Modi exercitationem sapiente. Nam porro aut. Magni modi natus. Magni fuga beatae. Maxime voluptates quis placeat pariatur sed porro.\", \"Illum officiis quod dicta et. Voluptate et ipsa asperiores facilis harum porro eum. Velit necessitatibus doloribus assumenda qui est nobis.\", \"Accusantium aut veniam ad minima est exercitationem ut. Ipsa deleniti sapiente molestiae rem tempora minus. Earum assumenda explicabo nihil. Dolores neque dolor ratione accusamus alias.\"]",
        "date_deployed": "2016-03-13",
        "featured": false,
        "header_image": "/uploads/project/header_image/1122/food-01.png"
      },
      "links": {
        "self": "/projects/1122"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/1122/relationships/color_set",
            "related": "/projects/1122/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "1109"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/1122/relationships/languages",
            "related": "/projects/1122/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "2203"
            },
            {
              "type": "languages",
              "id": "2204"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/1122/relationships/devices",
            "related": "/projects/1122/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "2224"
            },
            {
              "type": "devices",
              "id": "2225"
            }
          ]
        }
      }
    },
    {
      "id": "1123",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://lednerpowlowski.name/consuelo.zboncak",
        "web_page_url": "http://sawayn.org/paolo.goyette",
        "title": "Kuphal, Kihn and Streich",
        "description": "Accusantium sint et architecto praesentium aspernatur et. Reprehenderit qui enim blanditiis. Omnis omnis expedita architecto aut quod et facilis. Quasi quia vel molestias impedit laudantium.",
        "opening_body": "[\"Esse nulla quos fugiat eligendi quasi corrupti. Deleniti est consequatur sequi et illum qui corporis. Harum cum excepturi quo non rerum similique. Sunt quis dolor quidem alias non. Officiis laudantium impedit aliquam.\", \"Non alias itaque et similique doloribus. Enim nemo est laboriosam. Quo sequi dicta voluptate. Vero aut deleniti accusamus.\", \"Occaecati ab dolor. Ut incidunt suscipit nemo explicabo quaerat quos. Ipsum quibusdam sit sunt voluptas quisquam. Hic vel laudantium libero velit. Et sit voluptates sed error.\"]",
        "closing_body": "[\"Tenetur ducimus est reprehenderit dicta impedit non. Placeat eius sint nihil. Voluptas et id minus eaque.\", \"Velit non ea. Quo cupiditate consequatur. Natus eum eaque quis eos et placeat. Quo sapiente quis. Sit repellendus molestias error fugit reprehenderit.\", \"Vel incidunt id hic voluptate consequatur maxime. Deleniti nesciunt quo et est in consequatur. Quia dolores possimus laborum quia ut porro ut.\"]",
        "date_deployed": "2016-03-13",
        "featured": false,
        "header_image": "/uploads/project/header_image/1123/food-01.png"
      },
      "links": {
        "self": "/projects/1123"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/1123/relationships/color_set",
            "related": "/projects/1123/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "1110"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/1123/relationships/languages",
            "related": "/projects/1123/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "2205"
            },
            {
              "type": "languages",
              "id": "2206"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/1123/relationships/devices",
            "related": "/projects/1123/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "2226"
            },
            {
              "type": "devices",
              "id": "2227"
            }
          ]
        }
      }
    },
    {
      "id": "1124",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://lednerpowlowski.name/consuelo.zboncak",
        "web_page_url": "http://sawayn.org/paolo.goyette",
        "title": "Ortiz LLC",
        "description": "Enim vero alias velit sapiente eligendi debitis dolorem. Voluptates corrupti fuga et esse soluta. Consectetur ducimus sit fugit a aliquid id voluptatem. Labore est totam cum. Consequatur est voluptatem quibusdam excepturi ex.",
        "opening_body": "[\"Optio itaque quia in dolores. Est neque consequatur blanditiis. Qui labore ea eius sint facere. Reprehenderit non ullam omnis inventore et nisi et.\", \"Expedita aut iste voluptatem aut ipsam. Possimus explicabo aut. Repudiandae officiis placeat qui est sed quod consequatur. In neque quidem. Dolores excepturi ut occaecati voluptates sed dolore.\", \"Illo aut omnis. Molestiae adipisci earum voluptatem. Provident quam laboriosam sed impedit molestiae minus. Ut et enim voluptatum blanditiis. Nesciunt et voluptas non in ab est ullam.\"]",
        "closing_body": "[\"Molestiae qui ut ad fugit. Debitis enim consectetur repellat. Earum ipsam error voluptas.\", \"Ea voluptatem porro et. Consectetur id ut sequi laborum. Ipsam voluptatibus qui maiores excepturi et.\", \"Labore esse in dignissimos. Sed ullam ipsam ipsum et. Sint quisquam ut natus ut. Ut optio voluptatem odit et.\"]",
        "date_deployed": "2016-03-13",
        "featured": false,
        "header_image": "/uploads/project/header_image/1124/food-01.png"
      },
      "links": {
        "self": "/projects/1124"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/1124/relationships/color_set",
            "related": "/projects/1124/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "1111"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/1124/relationships/languages",
            "related": "/projects/1124/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "2207"
            },
            {
              "type": "languages",
              "id": "2208"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/1124/relationships/devices",
            "related": "/projects/1124/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "2228"
            },
            {
              "type": "devices",
              "id": "2229"
            }
          ]
        }
      }
    },
    {
      "id": "1125",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://lednerpowlowski.name/consuelo.zboncak",
        "web_page_url": "http://sawayn.org/paolo.goyette",
        "title": "Bednar Inc",
        "description": "Vel sit voluptatum. Ipsum soluta eligendi aperiam natus. Consequuntur voluptate id omnis nobis aspernatur.",
        "opening_body": "[\"Quis consequatur neque. Velit ab voluptatem. Et cumque nisi adipisci quia vero. Ipsam ipsa quia dolore optio sit. Eum molestias dolores laboriosam facilis officiis quis.\", \"Ad quia ea error modi. Animi natus nesciunt sunt officiis. Rerum laudantium non nostrum quidem.\", \"Nobis sed laborum. Fugiat sit ut ad. Non sed eos nihil consequatur. Quo est ut quae eaque optio magni.\"]",
        "closing_body": "[\"Distinctio rerum ea enim necessitatibus exercitationem. Modi ut excepturi quo adipisci. Consectetur enim non debitis velit et ab. Aut sint nostrum maxime.\", \"Ut porro sed. Quis omnis impedit earum rem in nam quibusdam. Omnis repudiandae corporis molestias quia architecto. Sunt et placeat repellat laudantium.\", \"Ducimus culpa minima voluptatem quo ea est. Id quia sint molestias omnis illum eius rem. Aut in voluptatem. Aut provident consequuntur. Enim eum culpa.\"]",
        "date_deployed": "2016-03-13",
        "featured": false,
        "header_image": "/uploads/project/header_image/1125/food-01.png"
      },
      "links": {
        "self": "/projects/1125"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/1125/relationships/color_set",
            "related": "/projects/1125/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "1112"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/1125/relationships/languages",
            "related": "/projects/1125/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "2209"
            },
            {
              "type": "languages",
              "id": "2210"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/1125/relationships/devices",
            "related": "/projects/1125/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "2230"
            },
            {
              "type": "devices",
              "id": "2231"
            }
          ]
        }
      }
    },
    {
      "id": "1126",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://lednerpowlowski.name/consuelo.zboncak",
        "web_page_url": "http://sawayn.org/paolo.goyette",
        "title": "Jones, McGlynn and Daugherty",
        "description": "Veritatis sed non aut. Consectetur vel dolorem accusantium cum quibusdam. Qui praesentium esse excepturi deleniti repudiandae autem. Exercitationem officia numquam nostrum voluptatum rerum. Voluptatem animi blanditiis corrupti dolorem.",
        "opening_body": "[\"Dicta ea sint totam incidunt. Id dolor harum adipisci. Et et voluptatibus pariatur tempore velit aut illum. Quia alias vero qui. Temporibus occaecati error nostrum.\", \"Dolor quia et. Ut qui maxime sint sunt. Aspernatur ratione molestiae. Necessitatibus quod et eos ipsam voluptatem.\", \"Non soluta vitae voluptatibus nostrum. Qui neque nobis. Accusantium adipisci error assumenda esse quasi.\"]",
        "closing_body": "[\"Omnis tempora praesentium dignissimos sint repudiandae dolor aspernatur. Totam qui enim. Commodi molestias repudiandae magnam libero voluptatem. Aut sapiente magni praesentium aperiam non aspernatur.\", \"Porro magnam voluptatem. Sit voluptatem ipsa. Tempora quidem sint rerum consectetur officia consequuntur. Corrupti occaecati quasi tempora reprehenderit.\", \"Quis odit saepe aliquam excepturi nobis quia. Deleniti ratione est aut autem similique. Eligendi nihil tempora.\"]",
        "date_deployed": "2016-03-13",
        "featured": false,
        "header_image": "/uploads/project/header_image/1126/food-01.png"
      },
      "links": {
        "self": "/projects/1126"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/1126/relationships/color_set",
            "related": "/projects/1126/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "1113"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/1126/relationships/languages",
            "related": "/projects/1126/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "2211"
            },
            {
              "type": "languages",
              "id": "2212"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/1126/relationships/devices",
            "related": "/projects/1126/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "2232"
            },
            {
              "type": "devices",
              "id": "2233"
            }
          ]
        }
      }
    }
  ],
  "included": [
    {
      "id": "1109",
      "type": "color-sets",
      "attributes": {
        "background": "#6ec372",
        "button": "#12476b",
        "circle": "#f2be3a"
      },
      "links": {
        "self": "/color-sets/1109"
      }
    },
    {
      "id": "2203",
      "type": "languages",
      "attributes": {
        "title": "background"
      },
      "links": {
        "self": "/languages/2203"
      }
    },
    {
      "id": "2204",
      "type": "languages",
      "attributes": {
        "title": "Fully-configurable"
      },
      "links": {
        "self": "/languages/2204"
      }
    },
    {
      "id": "2224",
      "type": "devices",
      "attributes": {
        "title": "zero administration"
      },
      "links": {
        "self": "/devices/2224"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2224/relationships/screenshot",
            "related": "/devices/2224/screenshot"
          }
        }
      }
    },
    {
      "id": "2225",
      "type": "devices",
      "attributes": {
        "title": "mission-critical"
      },
      "links": {
        "self": "/devices/2225"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2225/relationships/screenshot",
            "related": "/devices/2225/screenshot"
          }
        }
      }
    },
    {
      "id": "1110",
      "type": "color-sets",
      "attributes": {
        "background": "#85f840",
        "button": "#22c23a",
        "circle": "#431efb"
      },
      "links": {
        "self": "/color-sets/1110"
      }
    },
    {
      "id": "2205",
      "type": "languages",
      "attributes": {
        "title": "Fundamental"
      },
      "links": {
        "self": "/languages/2205"
      }
    },
    {
      "id": "2206",
      "type": "languages",
      "attributes": {
        "title": "website"
      },
      "links": {
        "self": "/languages/2206"
      }
    },
    {
      "id": "2226",
      "type": "devices",
      "attributes": {
        "title": "productivity"
      },
      "links": {
        "self": "/devices/2226"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2226/relationships/screenshot",
            "related": "/devices/2226/screenshot"
          }
        }
      }
    },
    {
      "id": "2227",
      "type": "devices",
      "attributes": {
        "title": "Cross-group"
      },
      "links": {
        "self": "/devices/2227"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2227/relationships/screenshot",
            "related": "/devices/2227/screenshot"
          }
        }
      }
    },
    {
      "id": "1111",
      "type": "color-sets",
      "attributes": {
        "background": "#17e6b0",
        "button": "#1d9429",
        "circle": "#c7412c"
      },
      "links": {
        "self": "/color-sets/1111"
      }
    },
    {
      "id": "2207",
      "type": "languages",
      "attributes": {
        "title": "artificial intelligence"
      },
      "links": {
        "self": "/languages/2207"
      }
    },
    {
      "id": "2208",
      "type": "languages",
      "attributes": {
        "title": "Horizontal"
      },
      "links": {
        "self": "/languages/2208"
      }
    },
    {
      "id": "2228",
      "type": "devices",
      "attributes": {
        "title": "support"
      },
      "links": {
        "self": "/devices/2228"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2228/relationships/screenshot",
            "related": "/devices/2228/screenshot"
          }
        }
      }
    },
    {
      "id": "2229",
      "type": "devices",
      "attributes": {
        "title": "website"
      },
      "links": {
        "self": "/devices/2229"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2229/relationships/screenshot",
            "related": "/devices/2229/screenshot"
          }
        }
      }
    },
    {
      "id": "1112",
      "type": "color-sets",
      "attributes": {
        "background": "#916c79",
        "button": "#d4ec87",
        "circle": "#d57c8e"
      },
      "links": {
        "self": "/color-sets/1112"
      }
    },
    {
      "id": "2209",
      "type": "languages",
      "attributes": {
        "title": "Extended"
      },
      "links": {
        "self": "/languages/2209"
      }
    },
    {
      "id": "2210",
      "type": "languages",
      "attributes": {
        "title": "Synchronised"
      },
      "links": {
        "self": "/languages/2210"
      }
    },
    {
      "id": "2230",
      "type": "devices",
      "attributes": {
        "title": "conglomeration"
      },
      "links": {
        "self": "/devices/2230"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2230/relationships/screenshot",
            "related": "/devices/2230/screenshot"
          }
        }
      }
    },
    {
      "id": "2231",
      "type": "devices",
      "attributes": {
        "title": "Synergized"
      },
      "links": {
        "self": "/devices/2231"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2231/relationships/screenshot",
            "related": "/devices/2231/screenshot"
          }
        }
      }
    },
    {
      "id": "1113",
      "type": "color-sets",
      "attributes": {
        "background": "#d60f57",
        "button": "#2a75eb",
        "circle": "#040361"
      },
      "links": {
        "self": "/color-sets/1113"
      }
    },
    {
      "id": "2211",
      "type": "languages",
      "attributes": {
        "title": "Re-contextualized"
      },
      "links": {
        "self": "/languages/2211"
      }
    },
    {
      "id": "2212",
      "type": "languages",
      "attributes": {
        "title": "local"
      },
      "links": {
        "self": "/languages/2212"
      }
    },
    {
      "id": "2232",
      "type": "devices",
      "attributes": {
        "title": "policy"
      },
      "links": {
        "self": "/devices/2232"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2232/relationships/screenshot",
            "related": "/devices/2232/screenshot"
          }
        }
      }
    },
    {
      "id": "2233",
      "type": "devices",
      "attributes": {
        "title": "Reduced"
      },
      "links": {
        "self": "/devices/2233"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2233/relationships/screenshot",
            "related": "/devices/2233/screenshot"
          }
        }
      }
    }
  ]
}
```
#### GET /api/projects/1142


| Param | Value |
| ----- | ----- |
| id | 1142 |

Response: 200
```json
{
  "data": {
    "id": "1142",
    "type": "projects",
    "attributes": {
      "github_page_url": "http://lednerpowlowski.name/consuelo.zboncak",
      "web_page_url": "http://sawayn.org/paolo.goyette",
      "title": "Treutel LLC",
      "description": "Enim maiores doloribus commodi ipsa corrupti aut nobis. Rerum provident labore aperiam. Et eos dicta temporibus eveniet blanditiis. Error consequatur distinctio.",
      "opening_body": "[\"Commodi veniam et ut sint dolores. Rem perspiciatis odit sed earum natus nobis explicabo. Dolorum quidem at est ratione odit.\", \"Et fugiat sint et omnis. Esse at totam quia voluptate sit maiores et. In quo ea voluptatem.\", \"Totam est magnam mollitia. Excepturi suscipit sed. Qui cumque dolorem.\"]",
      "closing_body": "[\"Saepe nostrum temporibus sed natus rerum neque. Sed optio et. Molestias sed vel et ut esse.\", \"Repudiandae vitae quia sunt aut fugit. Cupiditate qui nam est perferendis. Totam enim sed ut asperiores qui est quis.\", \"Accusantium quis dolore et. Hic consequatur quia omnis voluptatum. Consequuntur necessitatibus qui quia qui cum.\"]",
      "date_deployed": "2016-03-13",
      "featured": false,
      "header_image": "/uploads/project/header_image/1142/food-01.png"
    },
    "links": {
      "self": "/projects/1142"
    },
    "relationships": {
      "color_set": {
        "links": {
          "self": "/projects/1142/relationships/color_set",
          "related": "/projects/1142/color_set"
        },
        "data": {
          "type": "color-sets",
          "id": "1129"
        }
      },
      "languages": {
        "links": {
          "self": "/projects/1142/relationships/languages",
          "related": "/projects/1142/languages"
        },
        "data": [
          {
            "type": "languages",
            "id": "2243"
          },
          {
            "type": "languages",
            "id": "2244"
          }
        ]
      },
      "devices": {
        "links": {
          "self": "/projects/1142/relationships/devices",
          "related": "/projects/1142/devices"
        },
        "data": [
          {
            "type": "devices",
            "id": "2264"
          },
          {
            "type": "devices",
            "id": "2265"
          }
        ]
      }
    }
  },
  "included": [
    {
      "id": "1129",
      "type": "color-sets",
      "attributes": {
        "background": "#9390e6",
        "button": "#477bb3",
        "circle": "#d92714"
      },
      "links": {
        "self": "/color-sets/1129"
      }
    },
    {
      "id": "2243",
      "type": "languages",
      "attributes": {
        "title": "protocol"
      },
      "links": {
        "self": "/languages/2243"
      }
    },
    {
      "id": "2244",
      "type": "languages",
      "attributes": {
        "title": "conglomeration"
      },
      "links": {
        "self": "/languages/2244"
      }
    },
    {
      "id": "2264",
      "type": "devices",
      "attributes": {
        "title": "matrix"
      },
      "links": {
        "self": "/devices/2264"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2264/relationships/screenshot",
            "related": "/devices/2264/screenshot"
          },
          "data": {
            "type": "screenshots",
            "id": "1541"
          }
        }
      }
    },
    {
      "id": "2265",
      "type": "devices",
      "attributes": {
        "title": "policy"
      },
      "links": {
        "self": "/devices/2265"
      },
      "relationships": {
        "screenshot": {
          "links": {
            "self": "/devices/2265/relationships/screenshot",
            "related": "/devices/2265/screenshot"
          },
          "data": {
            "type": "screenshots",
            "id": "1542"
          }
        }
      }
    },
    {
      "id": "1541",
      "type": "screenshots",
      "attributes": {
        "caption": "Dolorem accusantium ducimus. Magni sed recusandae nesciunt ut quo autem. Quisquam quidem nisi quibusdam voluptatem.",
        "image": "/uploads/screenshot/image/1541/food-01.png"
      },
      "links": {
        "self": "/screenshots/1541"
      }
    },
    {
      "id": "1542",
      "type": "screenshots",
      "attributes": {
        "caption": "Ut deserunt provident itaque iusto eius. Sapiente inventore labore placeat cumque ut iste omnis. Et molestiae qui cupiditate dolorem. Ex vel dolorum. Distinctio et temporibus aut fugiat rem.",
        "image": "/uploads/screenshot/image/1542/food-01.png"
      },
      "links": {
        "self": "/screenshots/1542"
      }
    }
  ]
}
```
