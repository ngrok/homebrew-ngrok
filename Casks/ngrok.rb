cask "ngrok" do
  version "3.37.1"

  if Hardware::CPU.intel?
    url "https://bin.ngrok.com/a/72CozUEqsLs/ngrok-v3-3.37.1-darwin-amd64.zip"
    sha256 "a281e3b143d756a5bb4db776381c4080edb4c3d8843fa49a43b4ebeeb6e35061"
  else
    url "https://bin.ngrok.com/a/43g4rYQwAMz/ngrok-v3-3.37.1-darwin-arm64.zip"
    sha256 "e8aac64346e27b95dbcc1a523c2629787a9040aabc1a3703088dcfba437baeb1"
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
