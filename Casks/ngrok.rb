cask "ngrok" do
  version "3.11.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/dvMbzCNaDzP/ngrok-v3-3.11.0-darwin-amd64.zip"
    sha256 "f30465adaa98e03e79197d70b920099d727d4cda5fad98eeb26b82be0f2482b7"
  else
    url "https://bin.equinox.io/a/cmW5VdoHNsa/ngrok-v3-3.11.0-darwin-arm64.zip"
    sha256 "59386df7bce6db4642ee68a0fbd24e4a44562829e2ba4de6d0c936eeec152722"
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
