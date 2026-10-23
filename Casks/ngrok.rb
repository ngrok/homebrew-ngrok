cask "ngrok" do
  version "3.39.13"

  if Hardware::CPU.intel?
    url "https://bin.ngrok.com/a/9bmfVHa69NJ/ngrok-v3-3.39.13-darwin-amd64.zip"
    sha256 "b0ec8786315fd41e4da490aa88cf7868f554ef7ea2873b435ce971d02961c1a9"
  else
    url "https://bin.ngrok.com/a/msmi2kd3cjc/ngrok-v3-3.39.13-darwin-arm64.zip"
    sha256 "514967480546b968e87e9ec47efd513ce5012e11000957f9696a05c73b05b908"
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
