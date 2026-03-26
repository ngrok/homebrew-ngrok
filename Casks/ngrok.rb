cask "ngrok" do
  version "3.37.3"

  if Hardware::CPU.intel?
    url "https://bin.ngrok.com/a/gcLZ7yYLAxt/ngrok-v3-3.37.3-darwin-amd64.zip"
    sha256 "2bf3caba5f14170a09af422c707b8ae2c6f8a0b2ecc7e297efb760c1b7111e84"
  else
    url "https://bin.ngrok.com/a/5mfSNpNhBZC/ngrok-v3-3.37.3-darwin-arm64.zip"
    sha256 "a9c95a26328bfc3bb1fec763ef7cf9eadf9f129ce47be7648d4a526916120577"
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
