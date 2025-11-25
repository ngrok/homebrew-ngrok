cask "ngrok" do
  version "3.33.1"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/2jTYZaqDu5d/ngrok-v3-3.33.1-darwin-amd64.zip"
    sha256 "407b13bbf8944a5a65bff17bffb37c6f7df049d3218094af73832626cc115d47"
  else
    url "https://bin.equinox.io/a/dFhT1f4xm7K/ngrok-v3-3.33.1-darwin-arm64.zip"
    sha256 "d8d8bd1d97e5001c6d57d3537078753c54f8ae181874ed19a9e43715dfa8b14f"
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
