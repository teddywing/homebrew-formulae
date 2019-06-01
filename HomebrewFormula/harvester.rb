class Harvester < Formula
  desc "A program that wraps 'hcl' to interact with Harvest with a Timetasker-like interface"
  homepage "https://github.com/teddywing/harvester"
  url "https://github.com/teddywing/harvester/archive/v0.2.0.tar.gz"
  sha256 "50533a5d61a6363581bb0cd5856ec7f7175ae60933001e761fa96520b4aed897"

  def install
    bin.install "harvester"
    bash_completion.install "harvester.bash-completion" => "harvester"
  end

  def caveats; <<~EOS
    To enable tab completion, add the following to your bash profile:

        source #{etc}/bash_completion.d/harvester
    EOS
  end

  test do
    shell_output("bash -c 'harvester --help'")
  end
end
