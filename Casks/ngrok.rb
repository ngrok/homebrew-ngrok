cask "ngrok" do
  version "3.20.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/noRg3YE4DLf/ngrok-v3-3.20.0-darwin-amd64.zip"
    sha256 "b08971e60fe2e312655f69a4ae6eefdc80454f2ea9899b42df4b4f112bd93aff"
  else
    url "https://bin.equinox.io/a/4QSnm64SzWz/ngrok-v3-3.20.0-darwin-arm64.zip"
    sha256 "a41bccd10bc3b1bc07398239b4fa4fe44217f0597b4a8369f94ec9a0d64e40c3"
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
