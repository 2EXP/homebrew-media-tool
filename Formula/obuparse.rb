class Obuparse < Formula
  desc "Simple and portable single file AV1 OBU parser"
  homepage "https://github.com/dwbuiten/obuparse"
  url "https://github.com/dwbuiten/obuparse/archive/refs/heads/master.tar.gz"
  version "master"
  sha256 "c548bc8fda793070043d962c0a58aae9474549d4416bff38a05768f47b89db55"
  license "ISC"

  def install
    system "make"
    system "sudo", "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "false"
  end
end
