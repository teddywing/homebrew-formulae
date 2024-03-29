# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class InvertCatalinaInvert < Formula
  desc "Re-good inverting screen colours"
  homepage "https://github.com/teddywing/Re-Good-Catalina-Invert-Colours"
  url "https://github.com/teddywing/Re-Good-Catalina-Invert-Colours/releases/download/v0.0.1/invert-catalina-invert_0.0.1_x86_64.tar.bz2"
  version "0.0.1"
  sha256 "f36522cfe5490a0f3966a123fc735548365cd04a0a1b91ab9f5e2dbb9fe6cb7b"

  def install
    bin.install Dir["bin/*"]
  end

  service do
    run bin/"invert-catalina-invert"
    run_type :immediate
  end

  test do
    assert_equal version, shell_output("invert-catalina-invert --version").strip
  end
end
