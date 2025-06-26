cask "ngrok" do
  version "3.23.3"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/9D9ccRbaT84/ngrok-v3-3.23.3-darwin-amd64.zip"
    sha256 "9f5c1405c7b9034bd59bfd042747609087b1ac79a670d85b961991a627a82842"
  else
    url "https://bin.equinox.io/a/bwQ25LiJJwv/ngrok-v3-3.23.3-darwin-arm64.zip"
    sha256 "8e1dc9aa66776826e416e3e324103388096ace0ccb73419df3dd6c082b82c75c"
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
