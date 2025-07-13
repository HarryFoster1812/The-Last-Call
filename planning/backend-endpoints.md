### 🔐 Authentication & User Management

| Method | Endpoint         | Description                               |
|--------|------------------|-------------------------------------------|
| POST   | /users/signup    | Register a new user                       |
| POST   | /users/login     | Authenticate and return token             |
| GET    | /users/me        | Fetch current user profile & settings     |
| PATCH  | /users/me        | Update user settings                      |
| DELETE | /users/me        | Delete user account                       |
| POST   | /users/logout    | Log out / invalidate session              |

---

### 🥂 Session Tracking

| Method | Endpoint                          | Description                             |
|--------|-----------------------------------|-----------------------------------------|
| GET    | /sessions                         | List user's past sessions               |
| POST   | /sessions                         | Create a new session                    |
| GET    | /sessions/:id                     | View session details                    |
| PATCH  | /sessions/:id                     | Edit a session                          |
| DELETE | /sessions/:id                     | Delete a session                        |
| POST   | /sessions/:id/drinks              | Add drink to a session                  |
| PATCH  | /sessions/:id/drinks/:drinkId     | Edit a drink in the session             |
| DELETE | /sessions/:id/drinks/:drinkId     | Remove a drink from the session         |

---

### 🍺 Drinks

| Method | Endpoint     | Description                              |
|--------|--------------|------------------------------------------|
| GET    | /drinks      | List all drinks (optional filters)       |
| GET    | /drinks/:id  | Drink details                            |
| POST   | /drinks      | Add a custom drink                       |
| PATCH  | /drinks/:id  | Update a drink (user/custom/admin)       |
| DELETE | /drinks/:id  | Delete a custom drink                    |

---

### 📍 Venues (Pubs, Bars, etc.)

| Method | Endpoint                    | Description                                |
|--------|-----------------------------|--------------------------------------------|
| GET    | /venues                     | List nearby venues (via geo query)         |
| GET    | /venues/:id                 | Get full venue details                     |
| GET    | /venues/:id/drinks          | Drink list with prices & container types   |
| GET    | /venues/:id/specials        | Active deals, events, or happy hours       |
| POST   | /venues/:id/report          | Submit a correction or report issue        |

---

### 🔍 Search

| Method | Endpoint              | Description                                 |
|--------|-----------------------|---------------------------------------------|
| GET    | /search               | General search: drinks, venues, locations   |
| GET    | /search/suggestions   | Live search suggestions while typing        |

---

### 📊 Stats & Analytics

| Method | Endpoint                | Description                            |
|--------|-------------------------|----------------------------------------|
| GET    | /analytics/weekly       | Weekly stats overview                  |
| GET    | /analytics/monthly      | Monthly session summary                |
| GET    | /analytics/highscores   | Max BAC, money, session duration, etc. |

---

### 🔔 Limits & Notifications

| Method | Endpoint              | Description                          |
|--------|-----------------------|--------------------------------------|
| GET    | /limits               | Get user-defined safety thresholds   |
| PATCH  | /limits               | Update limit settings                |
| POST   | /notifications/send   | Server-initiated push (if applicable)|

---

### 🗺️ Location Services

| Method | Endpoint              | Description                            |
|--------|-----------------------|----------------------------------------|
| GET    | /locations/search     | Search areas by name                   |
| GET    | /locations/nearby     | Get nearby venues via lat/lng          |

---

### 🧪 Community-Driven Contributions

| Method | Endpoint                     | Description                               |
|--------|------------------------------|-------------------------------------------|
| POST   | /venues/:id/drinks           | Submit/update venue-specific drink info   |
| POST   | /venues/:id/specials         | Submit event, deal, or happy hour details |
| POST   | /feedback                    | General feedback, issues, or suggestions  |
