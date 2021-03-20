# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class Ottolangy < Formula
  desc "Set Mutt's attribution format based on the input language"
  homepage "https://github.com/teddywing/ottolangy"
  url "https://github.com/teddywing/mutt-ottolangy/releases/download/v0.0.1/ottolangy_0.0.1_x86_64-apple-darwin.tar.bz2"
  sha256 "4f6bdc25500599a25622d90ea344591b0e8efe18f2362c3271a87e8ccba0fbe6"

  def install
    bin.install Dir["bin/*"]
    etc.install Dir["etc/*"]
    man1.install Dir["share/man/man1/*"]
  end

  test do
    assert_equal version, shell_output("ottolangy --version").strip
  end
end
