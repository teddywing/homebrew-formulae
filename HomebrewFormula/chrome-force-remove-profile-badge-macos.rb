# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class ChromeForceRemoveProfileBadgeMacos < Formula
  desc "Force EnterpriseProfileBadgeToolbarSettings MDM policy in Google Chrome"
  homepage "https://github.com/teddywing/chrome-force-remove-profile-badge-macos"
  url "https://github.com/teddywing/chrome-force-remove-profile-badge-macos/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "4d204ffe77584fbc23d8df84f3d2d6a7bf9172b6e8e2d0c38a1494746d0d67a5"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  def caveats
    <<~EOS
      chrome-force-remove-profile-badge-macos requires root privileges, so it
      must be run with:
        `sudo #{opt_bin}/chrome-force-remove-profile-badge-macos` or
        `sudo brew services start teddywing/formulae/chrome-force-remove-profile-badge-macos`.
    EOS
  end

  service do
    name macos: "com.teddywing.chrome-force-remove-profile-badge-macos"
    run [opt_bin/"chrome-force-remove-profile-badge-macos"]
    keep_alive true
    require_root true
    error_log_path "/tmp/chrome-force-remove-profile-badge-macos.log"
  end
end
