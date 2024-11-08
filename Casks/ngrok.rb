cask "ngrok" do
  version "3.18.3"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/76qLrEsPmTj/ngrok-v3-3.18.3-darwin-amd64.zip"
    sha256 "9b42a448faa9b43594fcabba92bc4dd2986ac0c7897f7197435dac95d0cc3f53"
  else
    url "https://bin.equinox.io/a/3nECb5dMvjw/ngrok-v3-3.18.3-darwin-arm64.zip"
    sha256 "599fe0181c29f27b5b9c14f9e84767a9cc5bed6e512abaa53a2cbc6bf0ab0dee"
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
