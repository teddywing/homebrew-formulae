# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class Extreload < Formula
  desc "Reload Chrome extensions"
  homepage "https://github.com/teddywing/extreload"
  url "https://github.com/teddywing/extreload/releases/download/v0.0.2/extreload_0.0.2.tar.bz2"
  version "0.0.2"
  sha256 "e0c57d47eed35a8735ff5a6cd85eecbd21961fbf95a5a384977e91f11256c521"

  depends_on "sbcl"

  def install
    bin.mkpath
    man1.mkpath

    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_equal version, shell_output("extreload --version").strip
  end
end
