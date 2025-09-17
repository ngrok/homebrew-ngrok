cask "ngrok" do
  version "3.29.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/g1WQPwbzEE9/ngrok-v3-3.29.0-darwin-amd64.zip"
    sha256 "571fe19208d1f29618d2729b454f746eba61f3f80868bc92b66fc0f1c00e26bc"
  else
    url "https://bin.equinox.io/a/8opiba68DLc/ngrok-v3-3.29.0-darwin-arm64.zip"
    sha256 "3035b56f5ad4db9b31b7a748ec2cfbcd65eeee5a4125f43e5ceeaeff17f7cba0"
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
