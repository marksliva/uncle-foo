# usage

0. visit localhost:4000
1. select one of the languages from the dropdown *
2. write some code (write to stdout if you want to see some output)
3. click on `run your code` button
4. see the results of running that code from the comfort of your browser


# setup instructions

### install dependencies:

```
mix deps.get
npm install
```

### start phoenix server

```
mix phoenix.server
```

### point browser to http://localhost:4000


## *languages that can be selected
- elixir
- c
- clojure
- ruby
- go
- javascript (nodejs flavor)
#### make sure the language you select is installed on your box


#### todo:

* [x] refactor api code into the phoenix app so ui dir becomes the only app
* [x] stop using cors
* [ ] make frontend code editing better - make indentation easy, allow auto run interval
* [ ] add more languages
