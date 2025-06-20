cask "ngrok" do
  version "3.23.2"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/k4g8LKkRwA3/ngrok-v3-3.23.2-darwin-amd64.zip"
    sha256 "a330cf7070a655fa4d2f109dfc3e119cbacd0a98c456bcddb579d249e3e7cb2f"
  else
    url "https://bin.equinox.io/a/gob3LpgzZmp/ngrok-v3-3.23.2-darwin-arm64.zip"
    sha256 "5fed5207e60a68e79d8d3883b93e0585eb8febda839ac21390841c5846520e00"
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
