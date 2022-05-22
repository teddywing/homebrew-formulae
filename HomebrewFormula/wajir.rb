# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class Wajir < Formula
  desc "Automatically watch Jira issues"
  homepage "https://github.com/teddywing/wajir"
  url "https://github.com/teddywing/wajir/releases/download/v0.0.1/wajir_0.0.1.tar.bz2"
  sha256 "68a582ccf15e403f43a3617ed2699a9b2f17cbe3f2aa905eb153448e54ee6e7d"

  depends_on "sbcl"

  def install
    bin.mkpath
    man1.mkpath

    system "make", "install", "PREFIX=#{prefix}"
  end
end
