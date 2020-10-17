# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class GitTodo < Formula
  desc "Find recent TODO lines in a Git repository"
  homepage "https://github.com/teddywing/git-todo"
  url "https://github.com/teddywing/git-todo/releases/download/v0.0.3/git-todo_0.0.3_x86_64-apple-darwin.tar.bz2"
  sha256 "01b406c6bc594bef2a2358a376f15c29f48605fe3aaa1ef058c720405c5854d4"

  def install
    bin.install Dir["bin/*"]
    man1.install Dir["share/man/man1/*"]
  end

  test do
    assert_equal version, shell_output("git todo --version").strip
  end
end
