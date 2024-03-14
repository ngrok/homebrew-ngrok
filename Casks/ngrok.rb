cask "ngrok" do
  version "3.8.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/EEnGMfbhVg/ngrok-v3-3.8.0-darwin-amd64.zip"
    sha256 "ae410e5735404ed61a2e2d75e5edc39bccd5ce0de00652ff51612b1d70b28ca9"
  else
    url "https://bin.equinox.io/a/4JvNoWcrBdQ/ngrok-v3-3.8.0-darwin-arm64.zip"
    sha256 "d063d67908a5c40117181e158a0c3dfaaa073a0ef325c9a96b4381566aa354b6"
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
