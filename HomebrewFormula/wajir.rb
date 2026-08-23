# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class Wajir < Formula
  desc "Automatically watch Jira issues"
  homepage "https://github.com/teddywing/wajir"
  url "https://github.com/teddywing/wajir/releases/download/v0.1.0/wajir_0.1.0.tar.bz2"
  sha256 "eccab0db71d54e221344152dec2e506c08d864b272b14dcb0514a9c0b32bdf64"

  depends_on "sbcl"

  def install
    bin.mkpath
    man1.mkpath

    system "make", "install", "prefix=#{prefix}"
  end
end
