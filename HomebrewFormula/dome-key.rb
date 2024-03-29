# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class DomeKey < Formula
  desc "Control your computer with a pair of headphones"
  homepage "https://domekey.teddywing.com"
  url "https://domekey.teddywing.com/downloads/dome-key_1.0.tar.bz2"
  sha256 "03fd038e1ae67ce1fce949d2d5fcafb50bbee2f4344b71c16577929c557718a1"

  def install
    bin.install "dome-key"
    man1.install "dome-key.1"
    man7.install "dome-key-mappings.7"
  end

  def plist_name
    "com.teddywing.dome-key"
  end

  def caveats; <<~EOS
    DomeKey requires Mac OS X 10.7 Lion or later.

    To get started with a set of mappings, try running the these commands:

        mkdir -p $HOME/.config/dome-key
        cat <<EOM > $HOME/.config/dome-key/mappings.dkmap
        map <Play> <Nop>

        mode <Play><Play> {
            map <Up> <Left>
            map <Play> <Space>
            map <Down> <Right>
        }
        EOM

    If `dome-key` is already running, load the new mappings:

        dome-key --reload-mappings
  EOS
  end

  plist_options :manual => "dome-key --daemon --audio"

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN"
    	"http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
    	<key>Label</key>
    	<string>com.teddywing.dome-key</string>
    	<key>ProgramArguments</key>
    	<array>
    		<string>/usr/local/bin/dome-key</string>
    		<string>--daemon</string>
    		<string>--audio</string>
    	</array>
    	<key>RunAtLoad</key>
    	<true/>
    	<key>KeepAlive</key>
    	<true/>
    	<key>StandardErrorPath</key>
    	<string>/tmp/dome-key.log</string>
    </dict>
    </plist>
  EOS
  end
end
