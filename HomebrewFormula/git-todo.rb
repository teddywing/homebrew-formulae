# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class GitTodo < Formula
  desc "Find recent TODO lines in a Git repository"
  homepage "https://github.com/teddywing/git-todo"
  url "https://github.com/teddywing/git-todo/releases/download/v0.0.2/git-todo_0.0.2_x86_64-apple-darwin.tar.bz2"
  sha256 "4001d6a058a8fb1e4e5aa3f2a3e969b94736966335e05aa8a7072733b3a4df4c"

  def install
    bin.install Dir["bin/*"]
    man1.install Dir["share/man/man1/*"]
  end

  test do
    assert_equal version, shell_output("git todo --version").strip
  end
end
