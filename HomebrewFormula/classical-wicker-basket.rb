# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class ClassicalWickerBasket < Formula
  desc "Add metadata to the Classical WCRB radio stream"
  homepage "https://github.com/teddywing/classical-wicker-basket"
  url "https://github.com/teddywing/classical-wicker-basket/releases/download/v0.0.1/classical-wicker-basket_0.0.1_x86_64-apple-darwin.tar.bz2"
  sha256 "7a0febf88b75afde23caf7fc2c94b70f9a95c0a12badf3ec0e2cb61f9e19edff"

  def install
    bin.install Dir["bin/*"]
    man1.install Dir["share/man/man1/*"]
  end
end
