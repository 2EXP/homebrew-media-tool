class Obuparse < Formula
  desc "Simple and portable single file AV1 OBU parser"
  homepage "https://github.com/dwbuiten/obuparse"
  url "https://github.com/dwbuiten/obuparse/archive/055be27797cc37cf6e0c3c0bafc1aa752608b7fb.tar.gz"
  version "055be27"
  sha256 "6a1e145b859edeeff49a560eb07016bc1acb936558343037cde46032950f0577"
  license "ISC"

  depends_on "gcc" => :build

  def install
    system "make", "CC=gcc"
    include.install "obuparse.h"
    lib.install "libobuparse.so"
  end

  test do
    system "ls"
  end
end
