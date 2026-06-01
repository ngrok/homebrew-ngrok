cask "ngrok" do
  version "3.39.6"

  if Hardware::CPU.intel?
    url "https://bin.ngrok.com/a/k7isA2b3nWo/ngrok-v3-3.39.6-darwin-amd64.zip"
    sha256 "0536cdf2a3b17132f2d4d6d13591e39f7826fefea5893e3dd3b7e67149bcb213"
  else
    url "https://bin.ngrok.com/a/ksnJtDbYotv/ngrok-v3-3.39.6-darwin-arm64.zip"
    sha256 "0d5dcfee8a69f6f78cbe601e5662d16a2c1581c63a65202547a5b4e6e24cbb94"
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
