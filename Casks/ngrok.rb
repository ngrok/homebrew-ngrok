cask "ngrok" do
  version "3.3.2"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/23rmpjT2Mdj/ngrok-v3-3.3.2-darwin-amd64.zip"
    sha256 "4ec353067c96a2c31d99a3909c56b15e8c06bc30fb8511611b98220104706a96"
  else
    url "https://bin.equinox.io/a/ktMDMTZpQoX/ngrok-v3-3.3.2-darwin-arm64.zip"
    sha256 "82377d110d40cf11fa21e7e3edbe2cabd241f5678f803a6f674f3458a22b43b8"
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
