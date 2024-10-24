cask "ngrok" do
  version "3.18.1"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/8LNgns4uetU/ngrok-v3-3.18.1-darwin-amd64.zip"
    sha256 "2c956848a12ed21249dc18863b6e49c18753d48abf70f35da9835a9266e57007"
  else
    url "https://bin.equinox.io/a/gZu9oin5mM5/ngrok-v3-3.18.1-darwin-arm64.zip"
    sha256 "9cbaf0c6c6292740e9a3ba9636788e28fc7619026fba5e88ba8d1e825a7b40e1"
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
