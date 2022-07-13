# Entities API



## GET /entities - All

### GET /entities

Returns a paginated list of all entities.

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of entities | false | 1
| per_page | Number of entities on a single response. | false | 25
| search | Text to search. | false | *
| type | Limit responses by single type. Options are attendance, music, organization, person, place, production, public_event, publication, reading, translating, work_of_art, and writing. | false | null
| label | Clean label (no HTML) of entity | false | null

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=1&gt;; rel=&#39;self&#39;, &lt;http://example.org/entities?page=25&gt;; rel=&#39;last&#39;, &lt;http://example.org/entities?page=2&gt;; rel=&#39;next&#39;
X-Total-Count: 613
Content-Type: application/json; charset=utf-8
ETag: W/&quot;8edd0f64881c978cc6a56f298a3ae033&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: f166f1d2-23fe-4f48-8119-ce03cafb8b04
X-Runtime: 12.308125
Vary: Origin
Content-Length: 18090</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "entities": [
    {
      "id": "http://example.org/entities/002ca249-26fa-4bb6-8559-9ff6298bcf67",
      "label": "<i>The Sting</i>",
      "type": "production",
      "short_display": "<span><i>The Sting</i>, dir. Donny, Bistromath, Port Natoshaside, 1960-05-04.</span>",
      "description": "Forage kinfolk pbr&b godard truffaut actually five dollar toast echo seitan.",
      "clean_label": "The Sting",
      "clean_description": "Forage kinfolk pbr&amp;b godard truffaut actually five dollar toast echo seitan.",
      "alternate_spellings": [
        "Ra'jah O'Hara"
      ],
      "cast": [
        "Hotblack Desiato's bodyguard",
        "Brandt"
      ],
      "city": "Port Natoshaside",
      "date": "1960-05-04",
      "director": "Donny",
      "links": [
        "http://gibson.org/marybeth_davis"
      ],
      "notes": "Brooklyn tofu butcher slow-carb vinyl mlkshk jean shorts wayfarers.",
      "personnel": [
        "Random Dent"
      ],
      "proposal": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
      "response": "I'm perfectly calm, Dude.",
      "reason": null,
      "staging_beckett": "http://thompson-effertz.io/zack",
      "theater": "Bistromath"
    },
    {
      "id": "http://example.org/entities/0095ecd1-2969-43d2-8a56-e679b37b3377",
      "label": "London",
      "type": "place",
      "short_display": "<span>London.</span>",
      "description": "Viral <i>pop-up cornhole semiotics wolf</i> flannel.",
      "clean_label": "London",
      "clean_description": "Viral pop-up cornhole semiotics wolf flannel.",
      "alternate_spellings": [
        "Stacy Layne Matthews"
      ],
      "links": [
        "http://romaguera.biz/kimberely"
      ]
    },
    {
      "id": "http://example.org/entities/00974600-76fb-4553-b89c-16d7ecd59904",
      "label": "Croydon",
      "type": "place",
      "short_display": "<span>Croydon.</span>",
      "description": "Fashion <i>axe wolf whatever banjo tattooed wes anderson shabby chic blue bottle</i> tofu.",
      "clean_label": "Croydon",
      "clean_description": "Fashion axe wolf whatever banjo tattooed wes anderson shabby chic blue bottle tofu.",
      "alternate_spellings": [
        "Raven"
      ],
      "links": [
        "http://bruen-bernier.io/roscoe.senger"
      ]
    },
    {
      "id": "http://example.org/entities/00cb36a2-c900-470e-b3d7-c8b06b8afa87",
      "label": "<i>Bunny Lebowski</i>",
      "type": "person",
      "short_display": "<span><i>Bunny Lebowski</i> (1913-1979). Hammock <i>actually tote bag tacos literally next level bicycle</i> rights.</span>",
      "description": "Hammock <i>actually tote bag tacos literally next level bicycle</i> rights.",
      "clean_label": "Bunny Lebowski",
      "clean_description": "Hammock actually tote bag tacos literally next level bicycle rights.",
      "alternate_spellings": [
        "Miz Cracker"
      ],
      "finding_aids": [
        "http://morar.co/forrest"
      ],
      "first_name": "Rolland",
      "last_name": "Kemmer",
      "life_dates": "(1913-1979)",
      "links": [
        "http://baumbach-metz.com/ossie.collins"
      ],
      "profile": "Stay away from my special lady friend, man."
    },
    {
      "id": "http://example.org/entities/0122da3d-cc92-49c8-a661-aa632f9cc3c3",
      "label": "Bunny Lebowski",
      "type": "person",
      "short_display": "<span>Bunny Lebowski (1927-1981). Dreamcatcher lumbersexual banjo franzen vinyl meh beard flexitarian selvage.</span>",
      "description": "Dreamcatcher lumbersexual banjo franzen vinyl meh beard flexitarian selvage.",
      "clean_label": "Bunny Lebowski",
      "clean_description": "Dreamcatcher lumbersexual banjo franzen vinyl meh beard flexitarian selvage.",
      "alternate_spellings": [
        "Aquaria"
      ],
      "finding_aids": [
        "http://robel.biz/elmo.hintz"
      ],
      "first_name": "Shannon",
      "last_name": "Ryan",
      "life_dates": "(1927-1981)",
      "links": [
        "http://witting.io/ward"
      ],
      "profile": "I mean, say what you want about the tenets of National Socialism, Dude, at least it's an ethos."
    },
    {
      "id": "http://example.org/entities/01976a5a-9735-41ea-a1c0-c218bbd250a7",
      "label": "Jajazikstak",
      "type": "organization",
      "short_display": "<span>Jajazikstak, Nina West.</span>",
      "description": "Yr <i>aesthetic authentic cliche flexitarian</i> loko.",
      "clean_label": "Jajazikstak",
      "clean_description": "Yr aesthetic authentic cliche flexitarian loko.",
      "alternate_spellings": [
        "Nina West"
      ],
      "profile": "You know, Dude, I myself dabbled in pacifism once. Not in 'Nam of course."
    },
    {
      "id": "http://example.org/entities/01dc52c8-0386-4821-803c-9d4bc6673df2",
      "label": "<i>Bunny Lebowski</i>",
      "type": "person",
      "short_display": "<span><i>Bunny Lebowski</i> (1928-1978). Cleanse bitters umami vice.</span>",
      "description": "Cleanse bitters umami vice.",
      "clean_label": "Bunny Lebowski",
      "clean_description": "Cleanse bitters umami vice.",
      "alternate_spellings": [
        "Willam"
      ],
      "finding_aids": [
        "http://pagac.io/saul_kozey"
      ],
      "first_name": "Galina",
      "last_name": "Hermann",
      "life_dates": "(1928-1978)",
      "links": [
        "http://pfeffer.co/hunter_bode"
      ],
      "profile": "This is a very complicated case Maude. You know, a lotta ins, a lotta outs, lotta what-have-yous."
    },
    {
      "id": "http://example.org/entities/01ff7399-b8e7-47b8-984a-93fde43bc903",
      "label": "<i>Nothing Compares 2 U</i>",
      "type": "music",
      "short_display": "<span>Elvis, <i>Nothing Compares 2 U</i> [Pandora Boxx].</span>",
      "description": "Plaid <i>8-bit tote bag</i> artisan.",
      "clean_label": "Nothing Compares 2 U",
      "clean_description": "Plaid 8-bit tote bag artisan.",
      "alternate_spellings": [
        "Pandora Boxx"
      ],
      "composer": "Elvis",
      "links": [

      ],
      "notes": "All of this and more is for you, with love, sincerity and deepest care, my life with you I share.",
      "performed_by": [

      ]
    },
    {
      "id": "http://example.org/entities/02440314-faaf-4ca8-a11c-02d5c7e519e3",
      "label": "<i>Lamuella</i>",
      "type": "place",
      "short_display": "<span><i>Lamuella</i>.</span>",
      "description": "Vegan flexitarian letterpress neutra chillwave pinterest tumblr authentic franzen.",
      "clean_label": "Lamuella",
      "clean_description": "Vegan flexitarian letterpress neutra chillwave pinterest tumblr authentic franzen.",
      "alternate_spellings": [
        "Monique Heart"
      ],
      "links": [
        "http://dickinson.name/kassandra"
      ]
    },
    {
      "id": "http://example.org/entities/029a475a-57d4-475a-a932-b8dfc7280d1f",
      "label": "<i>The Usual Suspects</i>",
      "type": "production",
      "short_display": "<span><i>The Usual Suspects</i>, dir. Jackie Treehorn, Bistromath, North Jeffry, 1949-06-10.</span>",
      "description": "Pour-over <i>jean shorts keytar viral sartorial</i> try-hard.",
      "clean_label": "The Usual Suspects",
      "clean_description": "Pour-over jean shorts keytar viral sartorial try-hard.",
      "alternate_spellings": [
        "The Vixen"
      ],
      "cast": [
        "Humma Kavula",
        "Bunny Lebowski"
      ],
      "city": "North Jeffry",
      "date": "1949-06-10",
      "director": "Jackie Treehorn",
      "links": [
        "http://steuber-lueilwitz.co/tiara"
      ],
      "notes": "Cliche occupy roof cray tilde cleanse bicycle rights chillwave pickled.",
      "personnel": [
        "Lunkwill and Fook"
      ],
      "proposal": "Life? Don't talk to me about life.",
      "response": "Careful man, there's a beverage here!",
      "reason": null,
      "staging_beckett": "http://lakin.com/beverly",
      "theater": "Bistromath"
    },
    {
      "id": "http://example.org/entities/02a177b3-7629-4369-986f-1c67ffeeac01",
      "label": "Endless Night",
      "type": "reading",
      "short_display": "<span>Rasheeda Armstrong, Endless Night, Paulist Press.</span>",
      "description": "Cliche direct trade hashtag kombucha offal wayfarers authentic helvetica.",
      "clean_label": "Endless Night",
      "clean_description": "Cliche direct trade hashtag kombucha offal wayfarers authentic helvetica.",
      "authors": [
        "Rasheeda Armstrong"
      ],
      "comment": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
      "publication": "Paulist Press",
      "publication_format": "hoodie"
    },
    {
      "id": "http://example.org/entities/03513fae-0584-4a05-b7a3-f2b6123eecf5",
      "label": "<i>Mario</i>",
      "type": "person",
      "short_display": "<span><i>Mario</i> (1924-1997). Whatever park pickled pinterest butcher.</span>",
      "description": "Whatever park pickled pinterest butcher.",
      "clean_label": "Mario",
      "clean_description": "Whatever park pickled pinterest butcher.",
      "alternate_spellings": [
        "Stacy Layne Matthews"
      ],
      "finding_aids": [
        "http://heathcote.com/cordie.rempel"
      ],
      "first_name": "Danyell",
      "last_name": "Mante",
      "life_dates": "(1924-1997)",
      "links": [
        "http://kreiger-franecki.info/amalia"
      ],
      "profile": "This aggression will not stand, man."
    },
    {
      "id": "http://example.org/entities/03dc4cc4-593c-4963-88dd-1ecf0a131ede",
      "label": "<i>Mario</i>",
      "type": "publication",
      "short_display": "<span>Karl Hungus, <i>Mario</i>, Loonquawl Lo-fi chia before they sold out pitchfork butcher iphone.</span>",
      "description": "Pour-over blue bottle wolf flexitarian narwhal brunch typewriter offal.",
      "clean_label": "Mario",
      "clean_description": "Pour-over blue bottle wolf flexitarian narwhal brunch typewriter offal.",
      "author": "Karl Hungus",
      "notes": "I think you ought to know I'm feeling very depressed.",
      "publication_information": "Lo-fi chia before they sold out pitchfork butcher iphone.",
      "translator": "Loonquawl"
    },
    {
      "id": "http://example.org/entities/04d4e5a6-7e83-485b-866d-278a9dbfa130",
      "label": "Kakrafoon Kappa",
      "type": "place",
      "short_display": "<span>Kakrafoon Kappa.</span>",
      "description": "Shoreditch <i>before they sold out paleo lo-fi cronut health leggings</i> chartreuse.",
      "clean_label": "Kakrafoon Kappa",
      "clean_description": "Shoreditch before they sold out paleo lo-fi cronut health leggings chartreuse.",
      "alternate_spellings": [
        "Jiggly Caliente"
      ],
      "links": [
        "http://bahringer.co/malvina"
      ]
    },
    {
      "id": "http://example.org/entities/04ff65ae-bafa-4a3c-bdfd-a1f26eb3527f",
      "label": "I Will Fear No Evil",
      "type": "writing",
      "short_display": "<span>I Will Fear No Evil.</span>",
      "description": "Plaid cornhole authentic ennui roof park muggle magic.",
      "clean_label": "I Will Fear No Evil",
      "clean_description": "Plaid cornhole authentic ennui roof park muggle magic.",
      "date": "1923-06-25",
      "notes": "I won't enjoy it.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://kub.name/diego_lind"
    },
    {
      "id": "http://example.org/entities/051b015c-79a2-494a-bbab-c8db16cd26fb",
      "label": "Kakrafoon Kappa",
      "type": "place",
      "short_display": "<span>Kakrafoon Kappa.</span>",
      "description": "Migas taxidermy muggle magic xoxo meggings.",
      "clean_label": "Kakrafoon Kappa",
      "clean_description": "Migas taxidermy muggle magic xoxo meggings.",
      "alternate_spellings": [
        "Willam"
      ],
      "links": [
        "http://hyatt-mitchell.biz/jonna"
      ]
    },
    {
      "id": "http://example.org/entities/05549a56-927b-4749-9f63-62ddc6f2c318",
      "label": "Thieves In The Temple",
      "type": "work_of_art",
      "short_display": "<span>Eccentrica Gallumbits, Thieves In The Temple, Leggings lumbersexual thundercats bespoke.</span>",
      "description": "Leggings lumbersexual thundercats bespoke.",
      "clean_label": "Thieves In The Temple",
      "clean_description": "Leggings lumbersexual thundercats bespoke.",
      "alternate_spellings": [
        "Bob The Drag Queen"
      ],
      "artist": "Eccentrica Gallumbits",
      "artist_alternate_spellings": [
        "Ginger Minj"
      ],
      "notes": "I think you ought to know I'm feeling very depressed.",
      "owner_location_accession_number_current": 223,
      "owner_location_accession_number_contemporaneous": 600
    },
    {
      "id": "http://example.org/entities/065250cb-7084-4a6f-a609-15328ffa1449",
      "label": "<i>The Domain of The King</i>",
      "type": "place",
      "short_display": "<span><i>The Domain of The King</i>.</span>",
      "description": "Kale chips thundercats chambray etsy 90's five dollar toast squid blog.",
      "clean_label": "The Domain of The King",
      "clean_description": "Kale chips thundercats chambray etsy 90's five dollar toast squid blog.",
      "alternate_spellings": [
        "Nina Bonina Brown"
      ],
      "links": [
        "http://corwin.info/raymundo_boyer"
      ]
    },
    {
      "id": "http://example.org/entities/080f5f26-4690-47a8-addf-45313898d96c",
      "label": "<i>It's Gonna Be A Beautiful Night</i>",
      "type": "music",
      "short_display": "<span>Gail Andrews, <i>It's Gonna Be A Beautiful Night</i> [Chad Michaels].</span>",
      "description": "Hashtag <i>disrupt craft beer</i> thundercats.",
      "clean_label": "It's Gonna Be A Beautiful Night",
      "clean_description": "Hashtag disrupt craft beer thundercats.",
      "alternate_spellings": [
        "Chad Michaels"
      ],
      "composer": "Gail Andrews",
      "links": [

      ],
      "notes": "Some say a man ain't happy unless a man truly dies.",
      "performed_by": [

      ]
    },
    {
      "id": "http://example.org/entities/08622291-6fe7-413d-a05d-1d82e6e91369",
      "label": "Elizabeth Hoover",
      "type": "person",
      "short_display": "<span>Elizabeth Hoover (1901-1975). Before <i>they sold out cred semiotics neutra microdosing</i> kickstarter.</span>",
      "description": "Before <i>they sold out cred semiotics neutra microdosing</i> kickstarter.",
      "clean_label": "Elizabeth Hoover",
      "clean_description": "Before they sold out cred semiotics neutra microdosing kickstarter.",
      "alternate_spellings": [
        "Alyssa Edwards"
      ],
      "finding_aids": [
        "http://botsford-von.biz/marco_cummings"
      ],
      "first_name": "Alexander",
      "last_name": "Robel",
      "life_dates": "(1901-1975)",
      "links": [
        "http://halvorson.com/nelson.kris"
      ],
      "profile": "This is not 'Nam. This is bowling. There are rules."
    },
    {
      "id": "http://example.org/entities/087dc378-bc80-4456-be82-e0555394e600",
      "label": "<i>Oglaroon</i>",
      "type": "place",
      "short_display": "<span><i>Oglaroon</i>.</span>",
      "description": "Everyday forage franzen cornhole irony hoodie ennui.",
      "clean_label": "Oglaroon",
      "clean_description": "Everyday forage franzen cornhole irony hoodie ennui.",
      "alternate_spellings": [
        "Pandora Boxx"
      ],
      "links": [
        "http://bradtke-pacocha.com/elba_lakin"
      ]
    },
    {
      "id": "http://example.org/entities/08957c96-70d7-46e7-927d-ea3efacd29a6",
      "label": "Little Red Corvette",
      "type": "work_of_art",
      "short_display": "<span>Ford Prefect, Little Red Corvette, Literally heirloom meditation taxidermy aesthetic leggings yolo mumblecore.</span>",
      "description": "Literally heirloom meditation taxidermy aesthetic leggings yolo mumblecore.",
      "clean_label": "Little Red Corvette",
      "clean_description": "Literally heirloom meditation taxidermy aesthetic leggings yolo mumblecore.",
      "alternate_spellings": [
        "Thorgy Thor"
      ],
      "artist": "Ford Prefect",
      "artist_alternate_spellings": [
        "Willam"
      ],
      "notes": "I won't enjoy it.",
      "owner_location_accession_number_current": 577,
      "owner_location_accession_number_contemporaneous": 879
    },
    {
      "id": "http://example.org/entities/0911170c-2d7e-437e-b384-31865f8ce241",
      "label": "<i>Dial M for Murder</i>",
      "type": "production",
      "short_display": "<span><i>Dial M for Murder</i>, dir. Jackie Treehorn, Tanngrisnir, Parisianborough, 1923-02-17.</span>",
      "description": "Chicharrones <i>post-ironic muggle magic truffaut direct trade cronut next level crucifix</i> paleo.",
      "clean_label": "Dial M for Murder",
      "clean_description": "Chicharrones post-ironic muggle magic truffaut direct trade cronut next level crucifix paleo.",
      "alternate_spellings": [
        "Bianca Del Rio"
      ],
      "cast": [
        "Hactar",
        "Jesus Quintana"
      ],
      "city": "Parisianborough",
      "date": "1923-02-17",
      "director": "Jackie Treehorn",
      "links": [
        "http://towne.biz/vikki_turner"
      ],
      "notes": "90's gentrify quinoa thundercats migas pinterest beard mustache seitan.",
      "personnel": [
        "Fenchurch"
      ],
      "proposal": "Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.",
      "response": "Mr. Treehorn treats objects like women, man.",
      "reason": null,
      "staging_beckett": "http://aufderhar-hauck.name/rutha.maggio",
      "theater": "Tanngrisnir"
    },
    {
      "id": "http://example.org/entities/0913b926-c884-461d-a45b-2dc46f3289b7",
      "label": "Jaglan Beta",
      "type": "organization",
      "short_display": "<span>Jaglan Beta, Cynthia Lee Fontaine.</span>",
      "description": "Pinterest <i>trust fund organic next level tote bag 8-bit</i> retro.",
      "clean_label": "Jaglan Beta",
      "clean_description": "Pinterest trust fund organic next level tote bag 8-bit retro.",
      "alternate_spellings": [
        "Cynthia Lee Fontaine"
      ],
      "profile": "I'm the dude, so that's what you call me. That or, uh His Dudeness, or uh Duder, or El Duderino, if you're not into the whole brevity thing."
    },
    {
      "id": "http://example.org/entities/096797aa-fafd-4b8d-9f43-7b319041fbaf",
      "label": "<i>A Scanner Darkly</i>",
      "type": "reading",
      "short_display": "<span>Yuk Stiedemann, <i>A Scanner Darkly</i>, Etruscan Press.</span>",
      "description": "Irony <i>bitters aesthetic small batch fashion axe salvia freegan wes anderson fanny</i> pack.",
      "clean_label": "A Scanner Darkly",
      "clean_description": "Irony bitters aesthetic small batch fashion axe salvia freegan wes anderson fanny pack.",
      "authors": [
        "Yuk Stiedemann"
      ],
      "comment": "Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.",
      "publication": "Etruscan Press",
      "publication_format": "humblebrag"
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "place",
          "doc_count": 154
        },
        {
          "key": "person",
          "doc_count": 94
        },
        {
          "key": "attendance",
          "doc_count": 52
        },
        {
          "key": "publication",
          "doc_count": 41
        },
        {
          "key": "work_of_art",
          "doc_count": 39
        },
        {
          "key": "organization",
          "doc_count": 38
        },
        {
          "key": "translating",
          "doc_count": 38
        },
        {
          "key": "production",
          "doc_count": 36
        },
        {
          "key": "music",
          "doc_count": 35
        },
        {
          "key": "reading",
          "doc_count": 34
        },
        {
          "key": "writing",
          "doc_count": 27
        },
        {
          "key": "public_event",
          "doc_count": 25
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 25,
    "total_count": 613,
    "links": {
      "self": "http://example.org/entities?page=1",
      "last": "http://example.org/entities?page=25",
      "next": "http://example.org/entities?page=2"
    }
  }
}</pre>
