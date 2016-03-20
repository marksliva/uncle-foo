1. install dependencies:

mix deps.get
(also run in ui dir)

2. start API server with this command:

iex -S mix

3. start phoenix server in ui dir:

mix phoenix.server

4. point browser to http://localhost:4000






todo:

[ ] refactor API code into the phoenix app so ui dir becomes the only app
[ ] should be able to stop using cors
[ ] make frontend code editing better - make indentation easy, allow auto run interval
