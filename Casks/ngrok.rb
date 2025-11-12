cask "ngrok" do
  version "3.33.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/mgHebaeyvs8/ngrok-v3-3.33.0-darwin-amd64.zip"
    sha256 "e03a45748be800f2e5402421a6208d13eef79d003dd70c0190d22c453bbf4fa9"
  else
    url "https://bin.equinox.io/a/jaBi4WU72F6/ngrok-v3-3.33.0-darwin-arm64.zip"
    sha256 "feb47bfeaf6faa89d1c2de9b6a7a3cb9288045d69fb6985a9648fc0c15ef07e1"
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
