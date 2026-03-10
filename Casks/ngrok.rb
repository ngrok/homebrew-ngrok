cask "ngrok" do
  version "3.37.2"

  if Hardware::CPU.intel?
    url "https://bin.ngrok.com/a/m7yNBeFWrP/ngrok-v3-3.37.2-darwin-amd64.zip"
    sha256 "e331dec6911ee8a9c9b55027ef92d914e98834984ef5d5b91c5120cccf8c66d2"
  else
    url "https://bin.ngrok.com/a/nboc9dCtERa/ngrok-v3-3.37.2-darwin-arm64.zip"
    sha256 "a2cd877d3f48aca144f03d0ccb707b2c219a6d41af3f0b35139473d61686b4c8"
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
