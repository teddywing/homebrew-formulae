# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class GitBranchList < Formula
  desc "Maintains a list of Git branches that can be checked out quickly"
  homepage "https://github.com/teddywing/git-branch-list"
  url "https://github.com/teddywing/git-branch-list/archive/v0.2.0.tar.gz"
  sha256 "9582e2e5db4310f2fdba1bbd13f49684bab15bf6fcc25ddad9c547e4d23a71ac"

  def install
    bin.install "git-branch-list"
    bash_completion.install "git-branch-list.bash-completion" => "git-branch-list"
    man1.install "git-branch-list.1"
  end

  def caveats; <<~EOS
    To enable tab completion, add the following to your bash profile:

        source #{etc}/bash_completion.d/git-branch-list
    EOS
  end

  test do
    assert_equal "nl: .git/info/git-branch-list: No such file or directory",
      shell_output("git branch-list 2>&1", 1).strip
  end
end
