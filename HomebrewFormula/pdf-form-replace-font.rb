# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class PdfFormReplaceFont < Formula
  desc "Replace fonts in a PDF form's text fields"
  homepage "https://github.com/teddywing/pdf-form-replace-font"
  url "https://github.com/teddywing/pdf-form-replace-font/releases/download/v0.0.2/pdf-form-replace-font_0.0.2_x86_64-apple-darwin.tar.bz2"
  sha256 "2839722df5db5331a93d2cdd6d1b19953c844a79d3537500c91cceddc865b3ef"

  def install
    bin.install Dir["bin/*"]
    man1.install Dir["share/man/man1/*"]
  end

  test do
    assert_equal version, shell_output("pdf-form-replace-font --version").strip
  end
end
