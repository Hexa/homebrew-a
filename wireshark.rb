require 'formula'

class Wireshark < Formula
  homepage 'http://www.wireshark.org'
  url 'http://www.wireshark.org/download/src/all-versions/wireshark-1.8.0.tar.bz2'
  sha1 '3eca81253800a0089d0f957e75853b05'

  def install
    system "./configure", "--prefix=#{prefix}", "--with-ssl"
    system "make"
    system "make install"
  end
end
