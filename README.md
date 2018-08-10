# NumberService
Web service that returns all the numbers from 1 to the user's choice as a JSON array.

* Ruby version
  > 2.4.0

* Deployment instructions
  - `bundle install`
  - `rails s`
  - Visit `localhost:3000/numbers/[:number]

* To run the tests, just run
  > `bundle exec rspec`

## API Resource
- [GET /numbers/[:number]]

### GET /numbers/[:number]
Example: <url>

Response body:
```
{
      "numbers": [
          1,
          2,
          3,
          4,
          5,
          6,
          7,
          8,
          9,
          10,
          11,
          12
      ]
  }
  ```
