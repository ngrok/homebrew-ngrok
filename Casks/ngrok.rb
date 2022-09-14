cask "ngrok" do
  version "3.1.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/gMHPWQMhW1J/ngrok-v3-3.1.0-darwin-amd64.zip"
    sha256 "3508dbb061560aee046df7603701d9ba61d9600d15f3688d602bfb7ba1f3e4c0"
  else
    url "https://bin.equinox.io/a/7gHuLibjv89/ngrok-v3-3.1.0-darwin-arm64.zip"
    sha256 "be754cbeddd23201f2e3fdb8258e53624ad0600211a084f918e86274bad85864"
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
