cask "ngrok" do
  version "3.39.0"

  if Hardware::CPU.intel?
    url "https://bin.ngrok.com/a/6Jch6o2ux7w/ngrok-v3-3.39.0-darwin-amd64.zip"
    sha256 "70c3626787e546b004c5580b5e721a9edda23ab4c92496f09c373a9771de452e"
  else
    url "https://bin.ngrok.com/a/n4Qxg6LF3RB/ngrok-v3-3.39.0-darwin-arm64.zip"
    sha256 "74af6b62ab76a4d4bd146eb704871811215dfeb6008458efa52fb219b5043d36"
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
