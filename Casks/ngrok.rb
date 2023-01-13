cask "ngrok" do
  version "3.1.1"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/ewxEwpSWPaS/ngrok-v3-3.1.1-darwin-amd64.zip"
    sha256 "c69ef74f6a06a3b26635043546e9d832e6222ca8994ff3f0a8927639d9729f3b"
  else
    url "https://bin.equinox.io/a/an2KvqCaZyY/ngrok-v3-3.1.1-darwin-arm64.zip"
    sha256 "d73dbaef1cbb9f33933f901d81796cf1781b2ab36555d1cd4b3fbf11bd8a0778"
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
