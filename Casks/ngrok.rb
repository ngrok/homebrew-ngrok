cask "ngrok" do
  version "3.36.1"

  if Hardware::CPU.intel?
    url "https://bin.ngrok.com/a/iVr6PkbxpFC/ngrok-v3-3.36.1-darwin-amd64.zip"
    sha256 "442fc65a2b57f5d68e88339d5218f49df3d1cad2b09c326a3084349260c4dad7"
  else
    url "https://bin.ngrok.com/a/7eDVKgsuaQh/ngrok-v3-3.36.1-darwin-arm64.zip"
    sha256 "8db7e484efc73bc381ae7801932da27f3281b59e4158472b615aa6bea30947da"
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
