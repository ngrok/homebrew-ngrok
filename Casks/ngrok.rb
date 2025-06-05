cask "ngrok" do
  version "3.23.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/hkfye5GjpVX/ngrok-v3-3.23.0-darwin-amd64.zip"
    sha256 "b27b49d766f91624fccbcd4fc93711c6684155624b60e4cdb54c7d7478024585"
  else
    url "https://bin.equinox.io/a/5d5qbSwjL4r/ngrok-v3-3.23.0-darwin-arm64.zip"
    sha256 "48cf0bfad1d21199ed672e016cda017fd244592f1cda1885a84f695a4eb6a8b4"
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
