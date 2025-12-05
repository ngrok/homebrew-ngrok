cask "ngrok" do
  version "3.34.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/gkbtk38NBXJ/ngrok-v3-3.34.0-darwin-amd64.zip"
    sha256 "08eb277e3de71293d8a35851da1acf26f5cf89ed765e33fac81ce1aee2c71df6"
  else
    url "https://bin.equinox.io/a/9M3DxKuVYi1/ngrok-v3-3.34.0-darwin-arm64.zip"
    sha256 "1abf019e098daf5dfb14fc8340aacd990f4b9e2fae51db3bcc619971f05d5b39"
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
