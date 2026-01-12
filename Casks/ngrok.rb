cask "ngrok" do
  version "3.35.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/uQRUsybuCY/ngrok-v3-3.35.0-darwin-amd64.zip"
    sha256 "cde0994278c7e5cc46a10128258b6de826a59eb210556a7a06a9b3887ce06914"
  else
    url "https://bin.equinox.io/a/6S1r8a6kUrQ/ngrok-v3-3.35.0-darwin-arm64.zip"
    sha256 "ff0c29df3156fab539a3dc438eb36f342e852e058638841db99e69ce5edda16d"
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
