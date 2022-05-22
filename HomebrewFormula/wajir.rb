# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class Wajir < Formula
  desc "Automatically watch Jira issues"
  homepage "https://github.com/teddywing/wajir"
  url "https://github.com/teddywing/wajir/releases/download/v0.0.1/wajir_0.0.1.tar.bz2"
  sha256 "c6be5e638af4f75730850aa8ea1086c2e2acf90eaa8a15709a135665f36d3e08"

  depends_on "sbcl"

  def install
    bin.mkpath
    man1.mkpath

    system "make", "install", "PREFIX=#{prefix}"
  end
end
