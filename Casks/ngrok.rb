cask "ngrok" do
  version :latest

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-amd64.zip"
    sha256 "1740437cbe26bf2766b059652b829b9e5c5116c0251d486189d338f0e280c256"
  else
    url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-arm64.zip"
    sha256 "65bc813566a841e500db4c000510b79649a151d541f44fcd9e173adf12e07cd6"
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
