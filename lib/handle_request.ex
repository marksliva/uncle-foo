defmodule UncleFoo.HandleRequest do
  require Logger

  def compute(lang, code) when lang == "elixir" do
    file_path = write_code_to_temp_file(code)
    "elixir " <> file_path |> String.to_char_list |> :os.cmd
  end

  def compute(lang, code) when lang == "clojure" do
    file_path = write_code_to_temp_file(code)
    "lein exec " <> file_path |> String.to_char_list |> :os.cmd
  end

  def compute(lang, code) when lang == "ruby" do
    file_path = write_code_to_temp_file(code)
    "ruby " <> file_path |> String.to_char_list |> :os.cmd
  end

  def compute(lang, code) when lang == "nodejs" do
    file_path = write_code_to_temp_file(code)
    "node " <> file_path |> String.to_char_list |> :os.cmd
  end

  def compute(lang, code) when lang == "c" do
    file_path = write_code_to_temp_file(code, ".c")
    bin_path = write_code_to_temp_file("", ".c")
    exec_str = "gcc -o " <> bin_path <> " " <> file_path <> ";" <>
    bin_path
    Logger.info(exec_str)
    exec_str |> String.to_char_list |> :os.cmd
  end

  def compute(lang, code) do
    "you need to specify a supported language"
  end

  def write_code_to_temp_file(code, extension \\ "unclefoo") do
    temp_file = to_string("mktemp --suffix=" <> extension |> String.to_char_list |> :os.cmd)
    file_path = String.strip(temp_file)
    {_, file} = File.open file_path, [:write, :utf8]
    IO.write file, code
    File.close file
    file_path
  end
end
