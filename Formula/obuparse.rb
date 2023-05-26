class Obuparse < Formula
  desc "simple and portable single file AV1 OBU parser"
  homepage "https://github.com/dwbuiten/obuparse"
  url "https://github.com/dwbuiten/obuparse/archive/refs/heads/master.tar.gz"
  version "master"
  sha256 "d962046b2a9d7ab03ed204bc19c473534822ec87daf89d3ccc1964260da15bcb"
  license "ISC"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "false"
  end
end
