cask "ngrok" do
  version "3.9.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/fcCEuUCV2S4/ngrok-v3-3.9.0-darwin-amd64.zip"
    sha256 "a40be38bcb38df20cf0e8099d8fe20672d37621108836674eaed0f8c65f0855d"
  else
    url "https://bin.equinox.io/a/3N6KtVt2Euc/ngrok-v3-3.9.0-darwin-arm64.zip"
    sha256 "9db7f70531e8f12735f0b264d379be07c1094e8392bfdb885f5a5fbce50d54ef"
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
