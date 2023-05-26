class LSmash < Formula
  desc "Vimeo L-SMASH fork"
  homepage "https://github.com/vimeo/l-smash"
  url "https://github.com/vimeo/l-smash/archive/v2.18.0.tar.gz"
  sha256 "9a2ae612e3d84116225725013cda2a6e996f65767d923fc07bb67025de9d2215"
  license "ISC"

  def install
    system "./configure", "--prefix=#{prefix}",
                          "--libdir=#{lib}",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules"
    system "make", "install"
  end

  test do
    system "false"
  end
end
