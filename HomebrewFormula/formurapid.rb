# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class Formurapid < Formula
  desc "Fill in a PDF form using a text file"
  homepage "https://github.com/teddywing/formurapid"
  url "https://github.com/teddywing/formurapid/releases/download/v0.0.1/formurapid_0.0.1_x86_64-apple-darwin.tar.bz2"
  sha256 "4c66ad4098712f10d19b04c998071cd8de334b1bc5ac10fb6cb48b4446f03dd0"

  def install
    bin.install Dir["bin/*"]
    man1.install Dir["share/man/man1/*"]
  end

  test do
    assert_equal version, shell_output("formurapid --version").strip
  end
end
