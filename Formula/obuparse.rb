class Obuparse < Formula
  desc "A simple and portable single file AV1 OBU parser written in mostly C89 with a tiny bit of C99, with a permissive license."
  homepage "https://github.com/dwbuiten/obuparse"
  url "https://github.com/dwbuiten/obuparse/archive/refs/heads/master.zip"
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
