# NumberService ![Build Status](https://travis-ci.com/isabel22/numbers-server.svg?branch=master)
Web service that returns all the numbers from 1 to the user's choice as a JSON array.

* Ruby version
  > 2.4.0

* Deployment instructions
  - `bundle install`
  - `bundle exec rails s`
  - Visit `localhost:3000/numbers/[:number]`

* To run the tests, just run
  - `bundle exec rspec`

## API Resource
- [GET /numbers/[:number]]

### GET /numbers/[:number]
Example: https://serene-meadow-78539.herokuapp.com/numbers/12

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
