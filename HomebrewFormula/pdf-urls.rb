# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class PdfUrls < Formula
  desc "Extract all URLs from a PDF file"
  homepage "https://github.com/teddywing/pdf-urls"
  url "https://github.com/teddywing/pdf-urls/releases/download/v0.0.1/pdf-urls_0.0.1_x86_64-apple-darwin.tar.bz2"
  sha256 "ff0bcb64e48929723f980beb74bc21898b8078aa4003766f08c3c3d9d66b7543"

  def install
    bin.install "pdf-urls"
    man1.install "pdf-urls.1"
  end
end
