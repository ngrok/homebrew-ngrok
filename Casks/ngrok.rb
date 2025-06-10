cask "ngrok" do
  version "3.23.1"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/jWkeCu3gMrQ/ngrok-v3-3.23.1-darwin-amd64.zip"
    sha256 "473a393fec97c9430d49976ae0d312a40e441bd0c16abc14fa5b392ba8d7e973"
  else
    url "https://bin.equinox.io/a/ed8SYQYszPv/ngrok-v3-3.23.1-darwin-arm64.zip"
    sha256 "eef9ed9a37d15cf189fc34ff42837ba9691a319f8941d856abcd13ce1da4b4c4"
  end

  name "ngrok"
  desc "Reverse proxy, secure introspectable tunnels to localhost"
  homepage "https://ngrok.com/"

  binary "ngrok"

  postflight do
    set_permissions "#{staged_path}/ngrok", "0755"
  end

  zap trash: "~/.ngrok2"
end
