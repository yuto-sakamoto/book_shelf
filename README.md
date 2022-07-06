# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# book_shelf
book_shelf

```mermaid
flowchart LR
    subgraph Rust
      Binary
      BS{Bootstrap}
      API[API:Event]
    end
    subgraph WebView
      P((Promise Closure))
      Window
    end
    Binary-->BS
    Binary-->API
    BS-->Window
    API-->P
    P-.->API
    P-->Window
```
