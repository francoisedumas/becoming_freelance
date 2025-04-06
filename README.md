# README
```
rails new becoming_freelance --css tailwind --database postgresql
```

## Setup

### Prerequisites

- Ruby version: RUBY_VERSION
- Rails version: Rails RAILS_VERSION
- Install [Mailcatcher](https://mailcatcher.me/).
- Basic knowledge about [Tailwind CSS](https://tailwindcss.com/docs) (it's the CSS framework on this app)

### Seeds

- Basic seeds provided. You can turn the first user into an admin updating it's attribute admin to true
- to access the admin section you will also need to add a `admin_secret_name` and `admin_secret_password` in your credential file using `EDITOR="code --wait" rails credentials:edit`
