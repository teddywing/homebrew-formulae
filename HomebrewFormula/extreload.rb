# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class Extreload < Formula
  desc "Reload Chrome extensions"
  homepage "https://github.com/teddywing/extreload"
  url "https://github.com/teddywing/extreload/releases/download/v0.0.1/extreload_0.0.1_darwin-x86_64.tar.bz2"
  version "0.0.1"
  sha256 "5f169ac81274b255273e9ff942a79ccbdf09d1cebcb7b6e29905559f38d19a65"

  def install
    bin.install Dir["bin/*"]
    man1.install Dir["share/man/man1/*"]
  end

  test do
    assert_equal version, shell_output("extreload --version").strip
  end
end
