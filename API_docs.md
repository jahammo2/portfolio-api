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
| data | {"type"=>"projects", "attributes"=>{"github_page_url"=>"http://osinski.net/isabella", "web_page_url"=>"http://millermohr.info/jerrold_smitham", "title"=>"auxiliary", "description"=>"calculating the panel won't do anything, we need to connect the digital SDD application!", "opening_body"=>"Saepe voluptatum odit itaque. Ipsam quia sint minus. Ipsum rerum blanditiis qui sunt est voluptatem accusamus. Voluptate culpa doloribus laboriosam. Non et tenetur aspernatur eum.", "closing_body"=>"Accusamus voluptatem maxime quo et quidem quia. Itaque sit dolorem eos odit. Nulla dolore animi rerum. Ut ipsum ut et animi dolore et. Architecto deleniti expedita cupiditate doloremque et.", "date_deployed"=>"2016-05-24", "featured"=>"false"}, "relationships"=>{"color_set"=>{"data"=>{"background"=>"#0d0f37", "button"=>"orchid", "circle"=>"#97d648"}}, "languages"=>{"data"=>[{"title"=>"port"}, {"title"=>"capacitor"}]}, "devices"=>{"data"=>[{"title"=>"card"}, {"title"=>"monitor"}]}}} |

Response: 200
```json
{
  "data": {
    "id": "8",
    "type": "projects",
    "attributes": {
      "github_page_url": "http://osinski.net/isabella",
      "web_page_url": "http://millermohr.info/jerrold_smitham",
      "title": "auxiliary",
      "description": "calculating the panel won't do anything, we need to connect the digital SDD application!",
      "opening_body": "Saepe voluptatum odit itaque. Ipsam quia sint minus. Ipsum rerum blanditiis qui sunt est voluptatem accusamus. Voluptate culpa doloribus laboriosam. Non et tenetur aspernatur eum.",
      "closing_body": "Accusamus voluptatem maxime quo et quidem quia. Itaque sit dolorem eos odit. Nulla dolore animi rerum. Ut ipsum ut et animi dolore et. Architecto deleniti expedita cupiditate doloremque et.",
      "date_deployed": "2016-05-24",
      "featured": false
    },
    "links": {
      "self": "/projects/8"
    },
    "relationships": {
      "color_set": {
        "links": {
          "self": "/projects/8/relationships/color_set",
          "related": "/projects/8/color_set"
        },
        "data": {
          "type": "color-sets",
          "id": "7"
        }
      },
      "languages": {
        "links": {
          "self": "/projects/8/relationships/languages",
          "related": "/projects/8/languages"
        },
        "data": [
          {
            "type": "languages",
            "id": "11"
          },
          {
            "type": "languages",
            "id": "12"
          }
        ]
      },
      "devices": {
        "links": {
          "self": "/projects/8/relationships/devices",
          "related": "/projects/8/devices"
        },
        "data": [
          {
            "type": "devices",
            "id": "12"
          },
          {
            "type": "devices",
            "id": "13"
          }
        ]
      }
    }
  },
  "included": [
    {
      "id": "7",
      "type": "color-sets",
      "attributes": {
        "background": "#0d0f37",
        "button": "orchid",
        "circle": "#97d648"
      },
      "links": {
        "self": "/color-sets/7"
      }
    },
    {
      "id": "11",
      "type": "languages",
      "attributes": {
        "title": "port"
      },
      "links": {
        "self": "/languages/11"
      }
    },
    {
      "id": "12",
      "type": "languages",
      "attributes": {
        "title": "capacitor"
      },
      "links": {
        "self": "/languages/12"
      }
    },
    {
      "id": "12",
      "type": "devices",
      "attributes": {
        "title": "card"
      },
      "links": {
        "self": "/devices/12"
      }
    },
    {
      "id": "13",
      "type": "devices",
      "attributes": {
        "title": "monitor"
      },
      "links": {
        "self": "/devices/13"
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
      "id": "10",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://schaden.org/walker",
        "web_page_url": "http://hoegerwaelchi.info/reba.rohan",
        "title": "Jones, Jenkins and Jaskolski",
        "description": "Voluptas possimus qui sit ipsam. Magnam est quam voluptas architecto aut dignissimos. Sint qui esse aut error aut est.",
        "opening_body": "[\"Vitae dolores nesciunt. Maxime ex nihil eligendi. Et perferendis sit. Id molestiae et non quo.\", \"Odit eos distinctio repellendus voluptatem explicabo. Voluptas exercitationem temporibus ut in omnis aut esse. Dolores dignissimos repellendus. Architecto veritatis voluptatum dolores laboriosam illum. Id deserunt blanditiis deleniti illum.\", \"Rerum ut ipsum architecto unde perspiciatis quia. Veniam ea deserunt perferendis occaecati natus optio explicabo. Iste hic nesciunt sint sed. Architecto aut ipsum quo molestias consequuntur perferendis. Enim sint repellat eum vero magnam soluta sit.\"]",
        "closing_body": "[\"Sit aut distinctio. Optio voluptatibus et ab. Maiores voluptatem accusamus quis. Voluptatem quam ex sunt nihil rerum.\", \"Quos autem eveniet id. Consequatur vero adipisci est maxime numquam ratione necessitatibus. Maiores porro in qui excepturi temporibus reprehenderit dolorem. Mollitia ad sint accusantium non esse sit culpa. Eligendi earum sint nobis perferendis deleniti voluptatem.\", \"Dignissimos sint accusantium ratione laudantium. Dolores tempora molestiae. Quia animi est est quasi suscipit ut commodi.\"]",
        "date_deployed": "2016-03-13",
        "featured": false
      },
      "links": {
        "self": "/projects/10"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/10/relationships/color_set",
            "related": "/projects/10/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "9"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/10/relationships/languages",
            "related": "/projects/10/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "15"
            },
            {
              "type": "languages",
              "id": "16"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/10/relationships/devices",
            "related": "/projects/10/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "16"
            },
            {
              "type": "devices",
              "id": "17"
            }
          ]
        }
      }
    },
    {
      "id": "11",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://schaden.org/walker",
        "web_page_url": "http://hoegerwaelchi.info/reba.rohan",
        "title": "Graham, Skiles and Goldner",
        "description": "Sit quisquam nemo enim tempore. Magnam consequatur voluptatem omnis tempore id enim. Fuga quia soluta rerum sit fugiat illum.",
        "opening_body": "[\"Ipsam excepturi dicta reprehenderit ea vel sit tenetur. Asperiores quasi perferendis voluptatem necessitatibus commodi et et. Omnis reiciendis et libero et. Autem animi nulla aliquid quae doloremque.\", \"Harum iure quia. Hic qui autem neque necessitatibus odio ut iure. Non iure consequatur debitis culpa et. Molestiae distinctio praesentium et facere. Tempore et et.\", \"Maiores voluptas cumque. Iure quo et eum et ut. Illo est facere. In eum debitis. Vitae veritatis ratione repellat voluptas aut velit rerum.\"]",
        "closing_body": "[\"Ullam asperiores sapiente error voluptatem quasi enim. Sit accusamus cumque. Dolorem facere ipsa nostrum est perferendis sit quaerat.\", \"Maxime impedit quas debitis sapiente ad. Voluptas incidunt doloremque repellendus voluptate soluta. Omnis error animi delectus amet suscipit quasi. Aspernatur quia accusamus.\", \"Quod cumque voluptatem asperiores beatae quia. Est ut qui hic laudantium eaque dolorem est. Cumque quod voluptas et voluptatem. Quam corporis eum.\"]",
        "date_deployed": "2016-03-13",
        "featured": false
      },
      "links": {
        "self": "/projects/11"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/11/relationships/color_set",
            "related": "/projects/11/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "10"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/11/relationships/languages",
            "related": "/projects/11/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "17"
            },
            {
              "type": "languages",
              "id": "18"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/11/relationships/devices",
            "related": "/projects/11/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "18"
            },
            {
              "type": "devices",
              "id": "19"
            }
          ]
        }
      }
    },
    {
      "id": "12",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://schaden.org/walker",
        "web_page_url": "http://hoegerwaelchi.info/reba.rohan",
        "title": "Rutherford-Parisian",
        "description": "Iste architecto est officiis perspiciatis beatae. Modi assumenda quis voluptas doloribus. Amet eum possimus. Nesciunt provident earum et.",
        "opening_body": "[\"Reiciendis vel atque rerum qui molestiae. Libero voluptatum ea et omnis. Placeat quaerat aliquid omnis tempore ut consequatur.\", \"Et atque sit. Architecto corporis illo ut iure pariatur dolorum dolorem. Qui perferendis voluptas omnis non eaque. Voluptatem quod iusto dolore. Est eveniet laborum molestiae aut.\", \"Et optio non reiciendis. Nulla voluptatum temporibus quia ratione. Aut aut reprehenderit omnis vel suscipit voluptates. Quis perspiciatis exercitationem aut vitae odio facilis omnis.\"]",
        "closing_body": "[\"Magni quae natus debitis. Laudantium consequatur ab a et perspiciatis fugit. Aut natus nesciunt.\", \"Voluptatum dicta dolor hic optio voluptatem qui. Quia ut aliquid quia dolorem. Deleniti rerum porro repellat quisquam ut id eaque. Corporis amet nihil. Nostrum dolores voluptas quis ducimus tempora tempore.\", \"Et praesentium beatae velit rem reprehenderit quas. Labore voluptates dicta. Dolore voluptatem aut autem rerum voluptatem reprehenderit et.\"]",
        "date_deployed": "2016-03-13",
        "featured": false
      },
      "links": {
        "self": "/projects/12"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/12/relationships/color_set",
            "related": "/projects/12/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "11"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/12/relationships/languages",
            "related": "/projects/12/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "19"
            },
            {
              "type": "languages",
              "id": "20"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/12/relationships/devices",
            "related": "/projects/12/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "20"
            },
            {
              "type": "devices",
              "id": "21"
            }
          ]
        }
      }
    },
    {
      "id": "13",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://schaden.org/walker",
        "web_page_url": "http://hoegerwaelchi.info/reba.rohan",
        "title": "Grant, Wilderman and Green",
        "description": "Voluptate et eos quo. Illo aut aut ratione. Et autem amet.",
        "opening_body": "[\"Eius sit ea officiis deleniti est. Repudiandae laborum pariatur quia voluptatem optio. Consectetur provident sapiente molestiae ea eos. Dolor voluptatem quo explicabo est. Molestias quis doloremque aut facilis deleniti fuga aut.\", \"Optio voluptatem sint fugiat reiciendis necessitatibus natus libero. Consequatur at quia dolores quia earum. Laborum quaerat aut. Voluptatem itaque animi numquam accusamus non autem delectus.\", \"Incidunt sint sit. Dolore doloribus non rem ea. Laborum error voluptatem sapiente minus doloribus provident possimus. Temporibus rerum aut aliquam perferendis itaque debitis. Aliquid accusamus nemo illo aut nulla eveniet labore.\"]",
        "closing_body": "[\"Quam ad vel voluptatum illum quae. Nesciunt beatae voluptatem consequatur. Totam omnis libero.\", \"Et quam et architecto unde iste officiis hic. Nulla quasi debitis dolore velit odio veniam. Et fuga voluptas totam iste in error. Debitis ex et at maxime.\", \"Et ex culpa eos magnam officia. Est dolorem accusantium eligendi voluptatem tempora. Dolores numquam impedit velit eos sit.\"]",
        "date_deployed": "2016-03-13",
        "featured": false
      },
      "links": {
        "self": "/projects/13"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/13/relationships/color_set",
            "related": "/projects/13/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "12"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/13/relationships/languages",
            "related": "/projects/13/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "21"
            },
            {
              "type": "languages",
              "id": "22"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/13/relationships/devices",
            "related": "/projects/13/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "22"
            },
            {
              "type": "devices",
              "id": "23"
            }
          ]
        }
      }
    },
    {
      "id": "14",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://schaden.org/walker",
        "web_page_url": "http://hoegerwaelchi.info/reba.rohan",
        "title": "Champlin-Jacobi",
        "description": "Autem temporibus a porro sint. Autem id qui explicabo dolor. Quia repellendus non. Quasi adipisci hic sit voluptates eos.",
        "opening_body": "[\"Vel eius omnis ex. Excepturi eum est. Sed qui sed hic minima voluptate est. Ut qui alias.\", \"Dignissimos voluptatum ea nulla sapiente quo. In ducimus nihil doloribus est fuga dolorem. Odio laudantium quisquam voluptas repellendus distinctio.\", \"Nemo qui voluptas sit earum magni veniam qui. Qui hic consequatur facere omnis qui qui. Laborum ratione sunt consequuntur deleniti corrupti.\"]",
        "closing_body": "[\"Fugiat iure laudantium adipisci aut dolor. Blanditiis dolorem sunt asperiores aspernatur omnis libero totam. Minima sed laudantium. Dolorem nisi incidunt qui aut quos rerum. Perferendis numquam earum eius.\", \"Corporis eos blanditiis quo nisi totam. Voluptatem consectetur commodi consequatur ipsam et. Dolorem rem alias mollitia. Temporibus odio et ipsa est ab dolor ut.\", \"Praesentium tempore veritatis delectus. Quia consequuntur cumque ab. Explicabo quas corrupti velit voluptatem dolores quis enim.\"]",
        "date_deployed": "2016-03-13",
        "featured": false
      },
      "links": {
        "self": "/projects/14"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/14/relationships/color_set",
            "related": "/projects/14/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "13"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/14/relationships/languages",
            "related": "/projects/14/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "23"
            },
            {
              "type": "languages",
              "id": "24"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/14/relationships/devices",
            "related": "/projects/14/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "24"
            },
            {
              "type": "devices",
              "id": "25"
            }
          ]
        }
      }
    }
  ],
  "included": [
    {
      "id": "9",
      "type": "color-sets",
      "attributes": {
        "background": "#430d8d",
        "button": "#19889b",
        "circle": "#0cf12f"
      },
      "links": {
        "self": "/color-sets/9"
      }
    },
    {
      "id": "15",
      "type": "languages",
      "attributes": {
        "title": "didactic"
      },
      "links": {
        "self": "/languages/15"
      }
    },
    {
      "id": "16",
      "type": "languages",
      "attributes": {
        "title": "uniform"
      },
      "links": {
        "self": "/languages/16"
      }
    },
    {
      "id": "16",
      "type": "devices",
      "attributes": {
        "title": "Multi-layered"
      },
      "links": {
        "self": "/devices/16"
      }
    },
    {
      "id": "17",
      "type": "devices",
      "attributes": {
        "title": "dedicated"
      },
      "links": {
        "self": "/devices/17"
      }
    },
    {
      "id": "10",
      "type": "color-sets",
      "attributes": {
        "background": "#6231d3",
        "button": "#a06bca",
        "circle": "#c0ae86"
      },
      "links": {
        "self": "/color-sets/10"
      }
    },
    {
      "id": "17",
      "type": "languages",
      "attributes": {
        "title": "focus group"
      },
      "links": {
        "self": "/languages/17"
      }
    },
    {
      "id": "18",
      "type": "languages",
      "attributes": {
        "title": "grid-enabled"
      },
      "links": {
        "self": "/languages/18"
      }
    },
    {
      "id": "18",
      "type": "devices",
      "attributes": {
        "title": "Adaptive"
      },
      "links": {
        "self": "/devices/18"
      }
    },
    {
      "id": "19",
      "type": "devices",
      "attributes": {
        "title": "knowledge user"
      },
      "links": {
        "self": "/devices/19"
      }
    },
    {
      "id": "11",
      "type": "color-sets",
      "attributes": {
        "background": "#2cd83b",
        "button": "#b56663",
        "circle": "#c3569d"
      },
      "links": {
        "self": "/color-sets/11"
      }
    },
    {
      "id": "19",
      "type": "languages",
      "attributes": {
        "title": "De-engineered"
      },
      "links": {
        "self": "/languages/19"
      }
    },
    {
      "id": "20",
      "type": "languages",
      "attributes": {
        "title": "Innovative"
      },
      "links": {
        "self": "/languages/20"
      }
    },
    {
      "id": "20",
      "type": "devices",
      "attributes": {
        "title": "database"
      },
      "links": {
        "self": "/devices/20"
      }
    },
    {
      "id": "21",
      "type": "devices",
      "attributes": {
        "title": "projection"
      },
      "links": {
        "self": "/devices/21"
      }
    },
    {
      "id": "12",
      "type": "color-sets",
      "attributes": {
        "background": "#c30d36",
        "button": "#8f37d7",
        "circle": "#c556ec"
      },
      "links": {
        "self": "/color-sets/12"
      }
    },
    {
      "id": "21",
      "type": "languages",
      "attributes": {
        "title": "knowledge base"
      },
      "links": {
        "self": "/languages/21"
      }
    },
    {
      "id": "22",
      "type": "languages",
      "attributes": {
        "title": "circuit"
      },
      "links": {
        "self": "/languages/22"
      }
    },
    {
      "id": "22",
      "type": "devices",
      "attributes": {
        "title": "intranet"
      },
      "links": {
        "self": "/devices/22"
      }
    },
    {
      "id": "23",
      "type": "devices",
      "attributes": {
        "title": "object-oriented"
      },
      "links": {
        "self": "/devices/23"
      }
    },
    {
      "id": "13",
      "type": "color-sets",
      "attributes": {
        "background": "#e38edc",
        "button": "#17ef37",
        "circle": "#700187"
      },
      "links": {
        "self": "/color-sets/13"
      }
    },
    {
      "id": "23",
      "type": "languages",
      "attributes": {
        "title": "intangible"
      },
      "links": {
        "self": "/languages/23"
      }
    },
    {
      "id": "24",
      "type": "languages",
      "attributes": {
        "title": "responsive"
      },
      "links": {
        "self": "/languages/24"
      }
    },
    {
      "id": "24",
      "type": "devices",
      "attributes": {
        "title": "Team-oriented"
      },
      "links": {
        "self": "/devices/24"
      }
    },
    {
      "id": "25",
      "type": "devices",
      "attributes": {
        "title": "interactive"
      },
      "links": {
        "self": "/devices/25"
      }
    }
  ]
}
```
