# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class GitSuggestion < Formula
  desc "Diffs and patches for GitHub pull request suggestions"
  homepage "https://github.com/teddywing/git-suggestion"
  url "https://github.com/teddywing/git-suggestion/releases/download/v0.1.0/git-suggestion_0.1.0_x86_64-apple-darwin.tar.bz2"
  sha256 "8cc72eed7c98372242026039b43301e121c2e92d8aa374f24f9bd89b1638ff74"

  def install
    bin.install Dir["bin/*"]
    man1.install Dir["share/man/man1/*"]
  end

  test do
    assert_equal version, shell_output("git sugapply --version").strip
    assert_equal version, shell_output("git sugpatch --version").strip
  end
end
