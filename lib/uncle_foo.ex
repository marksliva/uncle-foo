defmodule Router.UncleFoo do
  use Maru.Router
  plug CORSPlug
  require UncleFoo.HandleRequest
  require Logger

  namespace :run do
    params do
      requires :lang, type: String
      requires :code, type: String
    end

    post do
      Logger.info "run request:\nlang=" <> params[:lang] <> "\ncode=" <> params[:code]
      json conn, to_string(UncleFoo.HandleRequest.compute(params[:lang], params[:code]))
    end
  end
end
