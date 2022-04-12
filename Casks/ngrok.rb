cask "ngrok" do
  version "3.0.2"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/jXmyvZWJNHj/ngrok-v3-3.0.2-darwin-amd64.zip"
    sha256 "46e6e1d047aa9c0da5eaa63beabc8725b3b35deb74194bb7ead566cbb102200d"
  else
    url "https://bin.equinox.io/a/ab5xesMCqU8/ngrok-v3-3.0.2-darwin-arm64.zip"
    sha256 "8db8889edbdb60d43dc0be0d8b936550a921a7a8ddea74e54d87f3480193616b"
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
