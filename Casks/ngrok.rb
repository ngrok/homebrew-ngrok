cask "ngrok" do
  version "2.3.40"
  sha256 :no_check
  
  url do
    require 'open-uri'
      channel_url = 'https://dl.equinox.io/ngrok/ngrok/stable/archive'
    if Hardware::CPU.intel?
      open(channel_url).read.scan(%r{href="([^"]+darwin-amd64.zip)"}).flatten.first
    else
      open(channel_url).read.scan(%r{href="([^"]+darwin-arm64.zip)"}).flatten.first
    end
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
