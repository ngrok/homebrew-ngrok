cask "ngrok" do
  version "3.0.6"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/mStkVrofaG9/ngrok-v3-3.0.6-darwin-amd64.zip"
    sha256 "26695c41b93e6437b797fcc0f6e78242ec8c665e8e57f436aa6305b9237e3ac1"
  else
    url "https://bin.equinox.io/a/91H3cQoKGUw/ngrok-v3-3.0.6-darwin-arm64.zip"
    sha256 "f17dd2755abc3db298bfac5279c0d633d08fc96e69708a332d9c65b57328a9f6"
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
