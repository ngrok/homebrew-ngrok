cask "ngrok" do
  version :latest

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-amd64.zip"
    sha256 "3e40376cfff0f7c2494bd4396049b0897d00f0010bb07aaea461b0037f86034e"
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
