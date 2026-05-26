cask "ngrok" do
  version "3.39.5"

  if Hardware::CPU.intel?
    url "https://bin.ngrok.com/a/acaCwhJo1gf/ngrok-v3-3.39.5-darwin-amd64.zip"
    sha256 "d515d9601b5dc5ad92ce87126a8e0f15a7a0514d45ae90c251e27f52be268671"
  else
    url "https://bin.ngrok.com/a/eDuFYVjcsKy/ngrok-v3-3.39.5-darwin-arm64.zip"
    sha256 "8e8bd786723a66747c7a1cddbd9544e0178fce12a752e9069e54189fdd8f831a"
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
