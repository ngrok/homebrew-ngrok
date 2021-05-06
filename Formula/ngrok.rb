class Ngrok < Formula
  desc 'Reverse proxy, secure introspectable tunnels to localhost'
  homepage 'https://ngrok.com'
  url 'https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-arm64.tgz'
  sha256 '65bc813566a841e500db4c000510b79649a151d541f44fcd9e173adf12e07cd6'
  version '2.3.40'

  def install
    bin.install 'ngrok'
  end 
end
