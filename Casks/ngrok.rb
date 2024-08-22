cask "ngrok" do
  version "3.14.1"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/2AVq3uXxS2b/ngrok-v3-3.14.1-darwin-amd64.zip"
    sha256 "1374c43352df06dfbdfeab9d3cef57ee3d4eefa91630cc340fc85e7bec9130d5"
  else
    url "https://bin.equinox.io/a/fK3fyLNXxVa/ngrok-v3-3.14.1-darwin-arm64.zip"
    sha256 "ae9228ad50051454ce3cd5b966b448f738b2b5836df5c7c67206297fcf30faf3"
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
