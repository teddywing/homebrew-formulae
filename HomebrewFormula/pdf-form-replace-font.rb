# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class PdfFormReplaceFont < Formula
  desc "Replace fonts in a PDF form's text fields"
  homepage "https://github.com/teddywing/pdf-form-replace-font"
  url "https://github.com/teddywing/pdf-form-replace-font/releases/download/v0.0.1/pdf-form-replace-font_0.0.1_x86_64-apple-darwin.tar.bz2"
  sha256 "429308aed5f60dc10306de3f040b030e04b36afbe460aa1771971270c85b7f08"

  def install
    bin.install Dir["bin/*"]
    man1.install Dir["share/man/man1/*"]
  end

  test do
    assert_equal version, shell_output("pdf-form-replace-font --version").strip
  end
end
