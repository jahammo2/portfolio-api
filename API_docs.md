#### GET /api/projects


| Param | Value |
| ----- | ----- |


Response: 200
```json
{
  "data": [
    {
      "id": "1",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://lind.info/brooklyn",
        "web_page_url": "http://parisian.biz/elvis",
        "title": "O'Keefe LLC",
        "description": "Provident ducimus quibusdam voluptatem nulla sint explicabo quo. Quibusdam vero consequatur quod inventore delectus. Inventore ea aut eos.",
        "body": "[\"Voluptas cupiditate ea illo ut sequi provident ullam. Magni optio illum sed eveniet rem reiciendis. Cumque voluptatem molestiae incidunt. Ea ullam a minus vel id consectetur rerum. Culpa et non ut dolorem.\", \"Quasi sunt explicabo omnis placeat consectetur voluptatem sit. Autem et ut at ipsam aut ea. Occaecati aut aliquam. Quam consequuntur libero earum qui ea. Dolores veritatis est magnam.\", \"Tempora maiores eum qui dicta amet sit aspernatur. Non qui eveniet voluptatibus nihil reiciendis. Sed est minus incidunt a rerum. Et ipsum recusandae deleniti laborum et qui.\"]",
        "date_deployed": "2016-03-13",
        "featured": false
      },
      "links": {
        "self": "/projects/1"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/1/relationships/color_set",
            "related": "/projects/1/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "1"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/1/relationships/languages",
            "related": "/projects/1/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "1"
            },
            {
              "type": "languages",
              "id": "2"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/1/relationships/devices",
            "related": "/projects/1/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "1"
            },
            {
              "type": "devices",
              "id": "2"
            }
          ]
        }
      }
    },
    {
      "id": "2",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://lind.info/brooklyn",
        "web_page_url": "http://parisian.biz/elvis",
        "title": "Kling, Bednar and Smith",
        "description": "Eius dignissimos rerum labore est. Pariatur ut et adipisci accusantium veritatis corrupti quisquam. Itaque voluptatem repudiandae ea saepe reiciendis repellendus.",
        "body": "[\"Consequatur veniam id alias cumque. Fugit autem quaerat voluptatibus necessitatibus nostrum ut deserunt. Aut mollitia tenetur qui nobis. Vitae dolorum architecto quo itaque. Est aliquam fuga sunt ullam illo ut harum.\", \"Odio nostrum alias eaque. Omnis autem molestias sit aut officiis harum debitis. Quis neque quia sed alias.\", \"Iste tenetur aliquid ullam non hic. Repellendus et itaque. Quidem a et.\"]",
        "date_deployed": "2016-03-13",
        "featured": false
      },
      "links": {
        "self": "/projects/2"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/2/relationships/color_set",
            "related": "/projects/2/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "2"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/2/relationships/languages",
            "related": "/projects/2/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "3"
            },
            {
              "type": "languages",
              "id": "4"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/2/relationships/devices",
            "related": "/projects/2/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "3"
            },
            {
              "type": "devices",
              "id": "4"
            }
          ]
        }
      }
    },
    {
      "id": "3",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://lind.info/brooklyn",
        "web_page_url": "http://parisian.biz/elvis",
        "title": "Reichel LLC",
        "description": "Et quae rerum assumenda non. Quis consequatur repudiandae molestiae debitis dolorem sunt. In impedit voluptatem. Soluta est vel.",
        "body": "[\"Adipisci eum assumenda facere. Et officia non quidem sed quam. Repellat exercitationem voluptatem et error. Ipsum voluptatem suscipit corrupti rerum dolorem inventore.\", \"Aut nobis omnis. Culpa et voluptatum dolorem omnis sunt et. Et tenetur harum incidunt iste ut voluptatum. Quo eum animi quisquam eveniet mollitia. Officiis sunt velit et.\", \"Vero impedit laborum pariatur neque quos. Atque voluptas labore libero. Libero impedit non blanditiis earum temporibus. Expedita quo ea doloremque consectetur.\"]",
        "date_deployed": "2016-03-13",
        "featured": false
      },
      "links": {
        "self": "/projects/3"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/3/relationships/color_set",
            "related": "/projects/3/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "3"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/3/relationships/languages",
            "related": "/projects/3/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "5"
            },
            {
              "type": "languages",
              "id": "6"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/3/relationships/devices",
            "related": "/projects/3/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "5"
            },
            {
              "type": "devices",
              "id": "6"
            }
          ]
        }
      }
    },
    {
      "id": "4",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://lind.info/brooklyn",
        "web_page_url": "http://parisian.biz/elvis",
        "title": "Thompson-Toy",
        "description": "Eos reiciendis illum ipsa. Quam enim voluptatibus ut est. Autem est provident aut fugiat unde qui quia. Ad voluptatem est magnam aliquam ratione laborum aperiam. Voluptatibus ipsa soluta.",
        "body": "[\"Enim blanditiis dolorem numquam fugit. Beatae fuga excepturi est. Corporis consequuntur voluptates deserunt dignissimos officiis velit quia.\", \"Illo reiciendis non. Excepturi impedit non repudiandae inventore ipsa. Eveniet minus qui ut placeat illum.\", \"Dolores et repellendus aut omnis. Labore et accusamus. Sequi quaerat tempore ab. Ullam repudiandae perspiciatis in. Est mollitia facere.\"]",
        "date_deployed": "2016-03-13",
        "featured": false
      },
      "links": {
        "self": "/projects/4"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/4/relationships/color_set",
            "related": "/projects/4/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "4"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/4/relationships/languages",
            "related": "/projects/4/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "7"
            },
            {
              "type": "languages",
              "id": "8"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/4/relationships/devices",
            "related": "/projects/4/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "7"
            },
            {
              "type": "devices",
              "id": "8"
            }
          ]
        }
      }
    },
    {
      "id": "5",
      "type": "projects",
      "attributes": {
        "github_page_url": "http://lind.info/brooklyn",
        "web_page_url": "http://parisian.biz/elvis",
        "title": "Moen LLC",
        "description": "Rem consequatur assumenda quod. Vero natus aliquid in. Culpa libero ut illum expedita quisquam nam. Deserunt nam tenetur doloribus et beatae voluptatem ullam.",
        "body": "[\"Fugiat similique amet iste facere et quos asperiores. Amet hic vel asperiores et nihil quia. Aut odio molestias necessitatibus. Ducimus aliquam voluptatem ipsam perspiciatis in adipisci assumenda.\", \"Dolores aspernatur provident. Beatae in placeat nam ex non unde. Doloribus molestiae modi. Vero quaerat non deserunt aut voluptates autem provident.\", \"Dolorem nobis explicabo. Aut qui ratione. Veritatis tempora est voluptatem enim et in molestias. Voluptas consequatur molestiae nam minus commodi quaerat. Occaecati unde alias aut quae.\"]",
        "date_deployed": "2016-03-13",
        "featured": false
      },
      "links": {
        "self": "/projects/5"
      },
      "relationships": {
        "color_set": {
          "links": {
            "self": "/projects/5/relationships/color_set",
            "related": "/projects/5/color_set"
          },
          "data": {
            "type": "color-sets",
            "id": "5"
          }
        },
        "languages": {
          "links": {
            "self": "/projects/5/relationships/languages",
            "related": "/projects/5/languages"
          },
          "data": [
            {
              "type": "languages",
              "id": "9"
            },
            {
              "type": "languages",
              "id": "10"
            }
          ]
        },
        "devices": {
          "links": {
            "self": "/projects/5/relationships/devices",
            "related": "/projects/5/devices"
          },
          "data": [
            {
              "type": "devices",
              "id": "9"
            },
            {
              "type": "devices",
              "id": "10"
            }
          ]
        }
      }
    }
  ],
  "included": [
    {
      "id": "1",
      "type": "color-sets",
      "attributes": {
        "background": "#51d424",
        "button": "#3a485d",
        "circle": "#a83d1f"
      },
      "links": {
        "self": "/color-sets/1"
      }
    },
    {
      "id": "1",
      "type": "languages",
      "attributes": {
        "title": "Graphical User Interface"
      },
      "links": {
        "self": "/languages/1"
      }
    },
    {
      "id": "2",
      "type": "languages",
      "attributes": {
        "title": "Graphical User Interface"
      },
      "links": {
        "self": "/languages/2"
      }
    },
    {
      "id": "1",
      "type": "devices",
      "attributes": {
        "title": "time-frame"
      },
      "links": {
        "self": "/devices/1"
      }
    },
    {
      "id": "2",
      "type": "devices",
      "attributes": {
        "title": "time-frame"
      },
      "links": {
        "self": "/devices/2"
      }
    },
    {
      "id": "2",
      "type": "color-sets",
      "attributes": {
        "background": "#101bbc",
        "button": "#c8dfa0",
        "circle": "#e0a784"
      },
      "links": {
        "self": "/color-sets/2"
      }
    },
    {
      "id": "3",
      "type": "languages",
      "attributes": {
        "title": "encoding"
      },
      "links": {
        "self": "/languages/3"
      }
    },
    {
      "id": "4",
      "type": "languages",
      "attributes": {
        "title": "encoding"
      },
      "links": {
        "self": "/languages/4"
      }
    },
    {
      "id": "3",
      "type": "devices",
      "attributes": {
        "title": "Quality-focused"
      },
      "links": {
        "self": "/devices/3"
      }
    },
    {
      "id": "4",
      "type": "devices",
      "attributes": {
        "title": "Quality-focused"
      },
      "links": {
        "self": "/devices/4"
      }
    },
    {
      "id": "3",
      "type": "color-sets",
      "attributes": {
        "background": "#a16524",
        "button": "#14e2d2",
        "circle": "#188a8b"
      },
      "links": {
        "self": "/color-sets/3"
      }
    },
    {
      "id": "5",
      "type": "languages",
      "attributes": {
        "title": "strategy"
      },
      "links": {
        "self": "/languages/5"
      }
    },
    {
      "id": "6",
      "type": "languages",
      "attributes": {
        "title": "strategy"
      },
      "links": {
        "self": "/languages/6"
      }
    },
    {
      "id": "5",
      "type": "devices",
      "attributes": {
        "title": "Extended"
      },
      "links": {
        "self": "/devices/5"
      }
    },
    {
      "id": "6",
      "type": "devices",
      "attributes": {
        "title": "Extended"
      },
      "links": {
        "self": "/devices/6"
      }
    },
    {
      "id": "4",
      "type": "color-sets",
      "attributes": {
        "background": "#03a756",
        "button": "#40b888",
        "circle": "#960a36"
      },
      "links": {
        "self": "/color-sets/4"
      }
    },
    {
      "id": "7",
      "type": "languages",
      "attributes": {
        "title": "secondary"
      },
      "links": {
        "self": "/languages/7"
      }
    },
    {
      "id": "8",
      "type": "languages",
      "attributes": {
        "title": "secondary"
      },
      "links": {
        "self": "/languages/8"
      }
    },
    {
      "id": "7",
      "type": "devices",
      "attributes": {
        "title": "transitional"
      },
      "links": {
        "self": "/devices/7"
      }
    },
    {
      "id": "8",
      "type": "devices",
      "attributes": {
        "title": "transitional"
      },
      "links": {
        "self": "/devices/8"
      }
    },
    {
      "id": "5",
      "type": "color-sets",
      "attributes": {
        "background": "#591584",
        "button": "#2785d1",
        "circle": "#91de7f"
      },
      "links": {
        "self": "/color-sets/5"
      }
    },
    {
      "id": "9",
      "type": "languages",
      "attributes": {
        "title": "grid-enabled"
      },
      "links": {
        "self": "/languages/9"
      }
    },
    {
      "id": "10",
      "type": "languages",
      "attributes": {
        "title": "grid-enabled"
      },
      "links": {
        "self": "/languages/10"
      }
    },
    {
      "id": "9",
      "type": "devices",
      "attributes": {
        "title": "Enterprise-wide"
      },
      "links": {
        "self": "/devices/9"
      }
    },
    {
      "id": "10",
      "type": "devices",
      "attributes": {
        "title": "Enterprise-wide"
      },
      "links": {
        "self": "/devices/10"
      }
    }
  ]
}
```
