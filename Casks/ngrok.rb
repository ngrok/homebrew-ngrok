cask "ngrok" do
  version "3.39.12"

  if Hardware::CPU.intel?
    url "https://bin.ngrok.com/a/fniJ9xeaKet/ngrok-v3-3.39.12-darwin-amd64.zip"
    sha256 "f393ae672e5bb81135505aa6f9933a8a52b78b1278643c758927d2893e13aa84"
  else
    url "https://bin.ngrok.com/a/5UNrdiFf185/ngrok-v3-3.39.12-darwin-arm64.zip"
    sha256 "c497e73fe893ff759c54e48191649f6c4dc42f4e0dfd48dd48d5c78135016838"
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
