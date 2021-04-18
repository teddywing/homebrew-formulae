# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class Formurapid < Formula
  desc "Fill in a PDF form using a text file"
  homepage "https://github.com/teddywing/formurapid"
  url "https://github.com/teddywing/formurapid/releases/download/v0.0.2/formurapid_0.0.2_x86_64-apple-darwin.tar.bz2"
  sha256 "e4b1cb0086d3f0b223f39ec068944ceb2b91af145341c32a6e4c15aa2a49a92d"

  def install
    bin.install Dir["bin/*"]
    man1.install Dir["share/man/man1/*"]
  end

  test do
    assert_equal version, shell_output("formurapid --version").strip
  end
end
