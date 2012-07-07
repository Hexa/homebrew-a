require 'formula'

class Wireshark < Formula
  homepage 'http://www.wireshark.org'
  url 'http://www.wireshark.org/download/src/all-versions/wireshark-1.8.0.tar.bz2'
  sha1 'd45b2828fc6dfac697f752f146e6cf43f4776047'

  def install
    system "./configure", "--prefix=#{prefix}", "--with-ssl"
    system "make"
    system "make install"
  end
end
