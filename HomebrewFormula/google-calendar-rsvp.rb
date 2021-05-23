# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class GoogleCalendarRsvp < Formula
  desc "RSVP to Google Calendar events from the command line"
  homepage "https://github.com/teddywing/google-calendar-rsvp"
  url "https://github.com/teddywing/google-calendar-rsvp/releases/download/v0.0.1/google-calendar-rsvp_0.0.1_x86_64-apple-darwin.tar.bz2"
  sha256 "cd7363c8cf2adfda30e90000817f1974e86995a9dd29091dc34d44474c999a7b"

  def install
    bin.install Dir["bin/*"]
    man1.install Dir["share/man/man1/*"]
  end

  test do
    assert_equal version, shell_output("google-calendar-rsvp --version").strip
  end
end
