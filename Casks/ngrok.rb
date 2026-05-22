cask "ngrok" do
  version "3.39.4"

  if Hardware::CPU.intel?
    url "https://bin.ngrok.com/a/dVNWNC8tgwQ/ngrok-v3-3.39.4-darwin-amd64.zip"
    sha256 "4d6191e76fcdeaf743fdb43e87bca0e507a88d04f93a0ca4e6ded81893d2b85c"
  else
    url "https://bin.ngrok.com/a/koVh3r9rKG7/ngrok-v3-3.39.4-darwin-arm64.zip"
    sha256 "ab3823f8aa9442ea6499c95290fc96da52824827f10253a5d1632e257beba518"
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
