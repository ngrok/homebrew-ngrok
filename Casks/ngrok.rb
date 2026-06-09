cask "ngrok" do
  version "3.39.7"

  if Hardware::CPU.intel?
    url "https://bin.ngrok.com/a/6dNgLJ13mhH/ngrok-v3-3.39.7-darwin-amd64.zip"
    sha256 "f6bdbd5aeba35e8c53d7dc984234fe23525da867f79e71e4f531df46057585a7"
  else
    url "https://bin.ngrok.com/a/8b4quNGobbF/ngrok-v3-3.39.7-darwin-arm64.zip"
    sha256 "33ebb41c37a260d8e114c1016a17851d0d0d089253a5e506089c4807c4db750e"
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
