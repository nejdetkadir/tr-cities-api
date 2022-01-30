![build & test & quality](https://github.com/nejdetkadir/tr-cities-api/actions/workflows/main.yml/badge.svg?branch=main)
[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop)
![Ruby Version](https://img.shields.io/badge/ruby_version-2.7.2-blue.svg)
![Rails Version](https://img.shields.io/badge/rails_version-7.0.1-c52f24.svg)
[![Swagger documentation](https://img.shields.io/badge/swagger_documentation-84e92c.svg?&logo=swagger&logoColor=black)](https://tr-cities-api.herokuapp.com/swagger)

# Cities in Turkey API
API includes all cities, towns, districts and quarters in Turkey. You can access data source from [here](https://github.com/nejdetkadir/il-ilce-semt-mahalleler).

# Installation
## Prerequisites
- [Ruby](https://rvm.io/)
- [PostgreSQL](https://www.postgresql.org/)

## Installation
- Install GEM dependencies:
  ```bash
  bundle install
  ```

- Create database, migrate tables and run the seed data:
  ```bash
  rails db:create
  rails db:migrate
  rails db:seed
  ```

- If you are setting up again, when you already have previous databases:
  ```bash
  rails db:reset
  ```
  `reset` is equivalent of `rails db:drop & rails db:setup`.

# LICENSE
````
MIT License

Copyright (c) 2022 Nejdet Kadir Bektaş

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```