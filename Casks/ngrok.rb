cask "ngrok" do
  version "3.26.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/JG3r4cLFzH/ngrok-v3-3.26.0-darwin-amd64.zip"
    sha256 "fd2bbb8896f706d129dcc21f015a629ca1121097ccb0fa734f2a3b975a315fa6"
  else
    url "https://bin.equinox.io/a/dhQmUiJ99gS/ngrok-v3-3.26.0-darwin-arm64.zip"
    sha256 "bf5dab25c468b6b2a718c3d005b4bd5a7627e5e7bf888a381d7791976991dc29"
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
