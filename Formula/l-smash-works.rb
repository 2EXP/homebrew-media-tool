class LSmashWorks < Formula
  desc "HomeOfAviSynthPlusEvolution fork from VFR-maniac/L-SMASH-Works"
  homepage "https://github.com/HomeOfAviSynthPlusEvolution/L-SMASH-Works"
  url "https://github.com/HomeOfAviSynthPlusEvolution/L-SMASH-Works/archive/20230507.tar.gz"
  sha256 "1f2a302cbfb10d4d743a0976c64f563ecd8f92f91bfc4289fcb9bfa068a911c9"
  license "LGPL-2.1-or-later"

  depends_on "meson" => :build
  depends_on "ninja" => :build

  def install
    system "cd", "VapourSynth"
    system "meson", "setup", "build", *std_meson_args
    system "meson", "compile", "-C", "build", "--verbose"
    system "meson", "install", "-C", "build"
  end
end
