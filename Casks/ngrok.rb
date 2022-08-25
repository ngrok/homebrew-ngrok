cask "ngrok" do
  version "3.0.7"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/j2rZLxwzCw2/ngrok-v3-3.0.7-darwin-amd64.zip"
    sha256 "e1748fe15ea1802dbb4529c92bbd0197c6add67b940738db30b8924db8b9dfa0"
  else
    url "https://bin.equinox.io/a/3qk13uQpAwh/ngrok-v3-3.0.7-darwin-arm64.zip"
    sha256 "c0294214fab0ef18111b2e00c2f76c0c90ec291f0fca43cf46a6745b6d9765ec"
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
