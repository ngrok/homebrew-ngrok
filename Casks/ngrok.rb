cask "ngrok" do
  version "3.10.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/bygUcwYNDkY/ngrok-v3-3.10.0-darwin-amd64.zip"
    sha256 "c122433bbb636f1d4c9c7e8f256e62565fbfd828f79bed22d22c33fbd94d175d"
  else
    url "https://bin.equinox.io/a/22ssJXq6zv5/ngrok-v3-3.10.0-darwin-arm64.zip"
    sha256 "25bad004f6b4354e576b1534d2a808f5975f5b36f6500bb8d87eb55cb6cec7be"
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
