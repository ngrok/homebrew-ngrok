cask "ngrok" do
  version "3.39.3"

  if Hardware::CPU.intel?
    url "https://bin.ngrok.com/a/8AWbaAbtY5z/ngrok-v3-3.39.3-darwin-amd64.zip"
    sha256 "e3a3e06f78953f293c5e166c7097cc04e9db2bc914586a96afda81b09507f3b3"
  else
    url "https://bin.ngrok.com/a/2vZur35asZP/ngrok-v3-3.39.3-darwin-arm64.zip"
    sha256 "2efccd81e73a45292c15913b549a9397dee0ebeba5f6d42427772f15927b51c7"
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
