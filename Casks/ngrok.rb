cask "ngrok" do
  version "3.39.2"

  if Hardware::CPU.intel?
    url "https://bin.ngrok.com/a/6mp4z58YGV3/ngrok-v3-3.39.2-darwin-amd64.zip"
    sha256 "0a07ac6cd27678018e6bcd2ae0528c151514aa9d9f8cd1480e1e93808f732d18"
  else
    url "https://bin.ngrok.com/a/c2kYG4NCXNy/ngrok-v3-3.39.2-darwin-arm64.zip"
    sha256 "847ee9cb2947a9adeb2f7618ba37c1d2ebe46725dded5a235e20e13281c15e63"
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
