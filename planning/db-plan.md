
erDiagram
    USER {
        string user_id PK
        string name
        int height_cm
        int weight_kg
        string sex
        float metabolism_modifier
        int unit_limit
        float money_limit
        float bac_limit
    }

    SESSION {
        string session_id PK
        string user_id FK
        datetime started_at
        datetime ended_at
        float total_units
        float total_spent
        float max_bac
        string pub_id FK
        string pub_name
        string notes
    }

    DRINK_ENTRY {
        string drink_entry_id PK
        string session_id FK
        string drink_id FK
        float price
        int volume_ml
        float abv
        string container
        datetime added_at
        string pub_id FK
    }

    PUB {
        string pub_id PK
        string name
        string address
        float lat
        float lng
        string tags
    }

    PUB_DRINK {
        string pub_drink_id PK
        string pub_id FK
        string drink_id FK
        float price
        int volume_ml
        string container
        datetime last_updated
    }

    DRINK_CATALOG {
        string drink_id PK
        string name
        float abv
        string drink_type
        string brand
        string description
        string image_url
    }

    SPECIAL {
        string special_id PK
        string pub_id FK
        string type
        string description
        float price
        string[] days
        string time_start
        string time_end
        datetime expires_at
    }

    USER ||--o{ SESSION : "has"
    SESSION ||--o{ DRINK_ENTRY : "contains"
    PUB ||--o{ PUB_DRINK : "offers"
    DRINK_CATALOG ||--o{ PUB_DRINK : "is referenced by"
    PUB ||--o{ SPECIAL : "has"
