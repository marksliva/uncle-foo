defmodule RunController do
  use Ui.Web, :controller
  require Logger

  def run(conn, params) do
    lang = params["lang"]
    code = params["code"]
    Logger.info("Processing request:\nlang=" <> (lang || "") <> "\ncode=" <> (code || ""))
    json conn, to_string(Ui.HandleRequest.compute(lang, code))
  end
end
