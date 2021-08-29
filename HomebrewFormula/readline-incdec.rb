# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class ReadlineIncdec < Formula
  desc "Readline bindings to increment and decrement numbers on the command line"
  homepage "https://github.com/teddywing/readline-incdec"
  url "https://github.com/teddywing/readline-incdec/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "e9e28ca126cda963ad8a0792a18e5119884137f60586e700bc7da74bce20e413"

  def install
    prefix.install "incdec.bash", "incdec-bindings.bash"
    man7.install "doc/incdec.7"
  end

  def caveats
    <<~EOS
      The Incdec shell functions must be sourced in order to use them.
      Add the following line to your Bash profile:

          source #{opt_prefix}/incdec.bash

      To enable the default bindings, also add:

          source #{opt_prefix}/incdec-bindings.bash
    EOS
  end
end
