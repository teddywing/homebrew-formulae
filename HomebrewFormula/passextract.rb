# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class Passextract < Formula
  desc "An interface to easily copy login information from Pass"
  homepage "https://github.com/teddywing/Passextract"
  version "0.5.0"
  url "https://github.com/teddywing/Passextract/releases/download/v0.5.0/passextract-0.5.0_osx_amd64.tar.bz2"
  sha256 "665e7d37db2b8c54f815462e9b11f37bd80a16e22da3366be42f3ac863504e9f"

  def install
    bin.install "passextract"
    bash_completion.install "passextract.bash-completion" => "passextract"
    man1.install "passextract.1"
  end

  def caveats; <<~EOS
    To enable tab completion, add the following to your bash profile:

        source #{etc}/bash_completion.d/passextract
    EOS
  end
end
