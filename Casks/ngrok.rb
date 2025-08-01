cask "ngrok" do
  version "3.25.1"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/42ZQAUBsMjk/ngrok-v3-3.25.1-darwin-amd64.zip"
    sha256 "395c673aeddc6d25dfc044bd7f1b2823f556ae5d5baca9394f28209ab2d11bd7"
  else
    url "https://bin.equinox.io/a/ap6qWtPCR27/ngrok-v3-3.25.1-darwin-arm64.zip"
    sha256 "724c3e95745c5111a5d06214382a958deb26784d56b7e78e9a434449777c3b5f"
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
