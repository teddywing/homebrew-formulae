# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class GitSuggestion < Formula
  desc "Diffs and patches for GitHub pull request suggestions"
  homepage "https://github.com/teddywing/git-suggestion"
  url "https://github.com/teddywing/git-suggestion/releases/download/v0.2.0/git-suggestion_0.2.0_x86_64-apple-darwin.tar.bz2"
  sha256 "71dc7d89bc443f535cf86e36730ca9ba4bf08749064f68f6a52fb4a12fbece6d"

  def install
    bin.install Dir["bin/*"]
    man1.install Dir["share/man/man1/*"]
  end

  test do
    assert_equal version, shell_output("git sugapply --version").strip
    assert_equal version, shell_output("git sugdiff --version").strip
  end
end
