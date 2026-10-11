# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class Ottolangy < Formula
  desc "Set Mutt's attribution format based on the input language"
  homepage "https://github.com/teddywing/ottolangy"
  url "https://github.com/teddywing/mutt-ottolangy/releases/download/v0.0.2/ottolangy_0.0.2.tar.bz2"
  sha256 "2fac6847e5b409acd91aa91d022cf6adedd26b340932c80880b58a796f109c6a"

  depends_on "rust" => :build

  def fetch
    system "cargo", "fetch", *std_cargo_fetch_args
  end

  def install
    system "cargo", "install", *std_cargo_args

    etc.install Dir["etc/*"]
    man1.install Dir["share/man/man1/*"]
  end

  test do
    assert_equal version, shell_output("ottolangy --version").strip
  end
end
