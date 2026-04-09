cask "ngrok" do
  version "3.37.6"

  if Hardware::CPU.intel?
    url "https://bin.ngrok.com/a/gUhfdRMv3t1/ngrok-v3-3.37.6-darwin-amd64.zip"
    sha256 "092bebb4412bab92f6cf407399a055d81d0d68cf82504656aa379546f32a10e7"
  else
    url "https://bin.ngrok.com/a/nmREUzfvtXG/ngrok-v3-3.37.6-darwin-arm64.zip"
    sha256 "2bb5d73fcb2d1ab16f1f8799658863f6129849bd4dce14cf5ba32a0728e65ee0"
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
