cask "ngrok" do
  version "3.24.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/cFQ1pz6iaGY/ngrok-v3-3.24.0-darwin-amd64.zip"
    sha256 "be2721de338ff4cbe606ac4945634122c2b2ef8e142c71a0e42d27b775a87ead"
  else
    url "https://bin.equinox.io/a/gzbjQfmMwa/ngrok-v3-3.24.0-darwin-arm64.zip"
    sha256 "a4099e4d8ff874a8d09f92b87bece6789ef4a2af9c8fd746ac21367d77d5d347"
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
