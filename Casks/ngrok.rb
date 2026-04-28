cask "ngrok" do
  version "3.39.1"

  if Hardware::CPU.intel?
    url "https://bin.ngrok.com/a/c7rqf3Jyky7/ngrok-v3-3.39.1-darwin-amd64.zip"
    sha256 "c13b17eb8bfb933b8db280a7b708fbdc3a56e7494beb46a39e8c23b60df54882"
  else
    url "https://bin.ngrok.com/a/ibTLJJL6E5Z/ngrok-v3-3.39.1-darwin-arm64.zip"
    sha256 "8dea70bb1429153bbadacc48fa12318eb231220ab09bbbc39d0964d0e33923df"
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
