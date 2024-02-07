cask "ngrok" do
  version "3.6.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/eZcX4as7yeX/ngrok-v3-3.6.0-darwin-amd64.zip"
    sha256 "362a42d1cf5cc2f820eaf5afa5bdb073442276089cbba31053d3c33e285424c6"
  else
    url "https://bin.equinox.io/a/qZzy6MZGEs/ngrok-v3-3.6.0-darwin-arm64.zip"
    sha256 "241a1296af960ed3db1d35c5f1ff56f555d6d8b1ef53030344b16bd1a1daf7c4"
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
