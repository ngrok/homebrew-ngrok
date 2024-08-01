cask "ngrok" do
  version "3.14.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/asfrnvBzc1h/ngrok-v3-3.14.0-darwin-amd64.zip"
    sha256 "34a318f031a10613ed7e9b15c393f3cf9c84a0563052088719b294c67394fce1"
  else
    url "https://bin.equinox.io/a/9pBRREat7hp/ngrok-v3-3.14.0-darwin-arm64.zip"
    sha256 "bac9bdb101b83cd15df29ccd39939466222727f5d40d045098493527083599a9"
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
