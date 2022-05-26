# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class ReadlineIncdec < Formula
  desc "Readline bindings to increment and decrement numbers on the command line"
  homepage "https://github.com/teddywing/readline-incdec"
  url "https://github.com/teddywing/readline-incdec/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "a984f4a29fb4fc15e9d6724a77c693ca73850385e931317e9903816fe0d7efef"

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
