class NaregiCaClient < Formula
  desc ""
  homepage ""
  url "https://ca-dev.naregi.org/repos/source/stable/naregi-ca-3.2.1.tar.bz2"
  sha256 "3c4185ebdb375dbf96a0539a8fd047fa2f745e722ef876f5acda0286fe72a259"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "client"
    system "make", "install-client"
  end

  test do
    system "false"
  end
end
