cask "ngrok" do
  version "3.3.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/n8BKDhBpoJP/ngrok-v3-3.3.0-darwin-amd64.zip"
    sha256 "47fbb6bd6ba66f84669441b014ea69e438838cfdeb1216604faf29caceb94bfb"
  else
    url "https://bin.equinox.io/a/d3cF1MADy4n/ngrok-v3-3.3.0-darwin-arm64.zip"
    sha256 "f041d791f7292ae900f1589fea623bce2a947c28bdc3c50cf520f47347f82f90"
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
