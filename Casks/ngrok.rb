cask "ngrok" do
  version "3.39.9"

  if Hardware::CPU.intel?
    url "https://bin.ngrok.com/a/a91tNmWZz4U/ngrok-v3-3.39.9-darwin-amd64.zip"
    sha256 "94f5ee996cda6cec8b179c5dab816c790a640232844cd65dd9e5f830ea528f8e"
  else
    url "https://bin.ngrok.com/a/6pfVfGALLzX/ngrok-v3-3.39.9-darwin-arm64.zip"
    sha256 "840a06680a0a68cdf295012bd5244d645a4d4235c451c0354293ac24db096e8c"
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
