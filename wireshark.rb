require 'formula'

class Wireshark < Formula
  homepage 'http://www.wireshark.org'
  url 'http://www.wireshark.org/download/src/all-versions/wireshark-1.8.2.tar.bz2'
  sha1 '4737d9745dbf002444ea42615243abf3bb80b943'

  def install
    system "./configure", "--prefix=#{prefix}", "--with-ssl"
    system "make"
    system "make install"
  end
end
