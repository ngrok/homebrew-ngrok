cask "ngrok" do
  version "3.3.5"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/9ZorZwrHqju/ngrok-v3-3.3.5-darwin-amd64.zip"
    sha256 "930913d3bc41603db34815e3095d84af24158ad458d528cde4c129e991ea7754"
  else
    url "https://bin.equinox.io/a/gdMJFDtw8of/ngrok-v3-3.3.5-darwin-arm64.zip"
    sha256 "9da24a7bfa3be001b81a125276362e3f54f788f29410a2392a03fce91b27538f"
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
