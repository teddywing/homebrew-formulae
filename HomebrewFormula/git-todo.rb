# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class GitTodo < Formula
  desc "Find recent TODO lines in a Git repository"
  homepage "https://github.com/teddywing/git-todo"
  url "https://github.com/teddywing/git-todo/releases/download/v0.0.1/git-todo_0.0.1_x86_64-apple-darwin.tar.bz2"
  sha256 "3fe702ea8f3ba8dc94cdb3653c21c42910cc1c4cd6eac0414978ef966a8e1995"

  def install
    bin.install Dir["bin/*"]
    man1.install Dir["share/man/man1/*"]
  end

  test do
    assert_equal version, shell_output("git todo --version").strip
  end
end
