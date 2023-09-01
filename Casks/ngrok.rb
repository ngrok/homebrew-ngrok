cask "ngrok" do
  version "3.3.4"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/bbAcpGZ9F61/ngrok-v3-3.3.4-darwin-amd64.zip"
    sha256 "d40e315607a17e703149092d89aa6a44b5fc7b20cead643e186f857e6f628e33"
  else
    url "https://bin.equinox.io/a/mCL51Hi52gn/ngrok-v3-3.3.4-darwin-arm64.zip"
    sha256 "ae54cf93d2d11e23f107d83ee4602f8607b73bccd3f32a9a23df4146d359a2b8"
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
