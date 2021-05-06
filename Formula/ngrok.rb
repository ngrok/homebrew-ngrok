class Ngrok < Formula
  desc 'Reverse proxy, secure introspectable tunnels to localhost'
  homepage 'https://ngrok.com'
  url 'https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-arm64.zip'
  sha256 '1740437cbe26bf2766b059652b829b9e5c5116c0251d486189d338f0e280c256'
  version '2.3.40'

  def install
    bin.install 'ngrok'
  end 
end
