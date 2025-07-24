cask "ngrok" do
  version "3.25.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/6TYcob4hJAW/ngrok-v3-3.25.0-darwin-amd64.zip"
    sha256 "a22a2013844640885c629a06df4f32d5888951b8c13c76f089d0031ab57b920c"
  else
    url "https://bin.equinox.io/a/mYxNGGu2uKF/ngrok-v3-3.25.0-darwin-arm64.zip"
    sha256 "8a024df1c6e2ebad084689346cf6a440af8dcb1b6e57b01ee15d2146a357bfdf"
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
