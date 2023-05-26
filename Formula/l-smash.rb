class LSmash < Formula
  desc ""
  homepage ""
  url "https://github.com/vimeo/l-smash/archive/v2.18.0.tar.gz"
  sha256 "9a2ae612e3d84116225725013cda2a6e996f65767d923fc07bb67025de9d2215"
  license ""


  def install
    system "./configure", *std_configure_args, "--disable-silent-rules"
    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    system "false"
  end
end
