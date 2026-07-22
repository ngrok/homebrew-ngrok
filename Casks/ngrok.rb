cask "ngrok" do
  version "3.39.10"

  if Hardware::CPU.intel?
    url "https://bin.ngrok.com/a/eQUAEd6HW8t/ngrok-v3-3.39.10-darwin-amd64.zip"
    sha256 "eaf70523d9235f09a2cd145f6e0de72ef86816448c34268fe71c2af543f4fc38"
  else
    url "https://bin.ngrok.com/a/3DWeKypL9z6/ngrok-v3-3.39.10-darwin-arm64.zip"
    sha256 "907cb61b6fa5837e3ac2cfa4ab8e8b1efe85c6e7cd11c99974a5607b5ea21ceb"
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
