# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class Wajir < Formula
  desc "Automatically watch Jira issues"
  homepage "https://github.com/teddywing/wajir"
  url "https://github.com/teddywing/wajir/releases/download/v0.1.1/wajir_0.1.1.tar.bz2"
  sha256 "29919de05ea50a5024f600a199d5e07e7bad7a6119b0b4324f66e684d4acaefb"

  depends_on "sbcl"

  def install
    bin.mkpath
    man1.mkpath

    system "make", "install", "prefix=#{prefix}"
  end
end
