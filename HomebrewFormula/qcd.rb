class Qcd < Formula
  desc "Define shortcuts to directories for quick `cd`s"
  homepage "https://github.com/teddywing/qcd"
  url "https://github.com/teddywing/qcd/archive/v0.2.1.tar.gz"
  sha256 "de90ed93ba2d657253df6b8bed46cec2c4c1e796347a39a8449f1059cca33438"

  def install
    prefix.install "qcd"
    bash_completion.install "qcd.bash-completion" => "qcd"
  end

  def caveats; <<-EOS.undent
    qcd is a shell function, and must be sourced before it can be used.
    Add the following command to your bash profile:

        source #{opt_prefix}/qcd

    To enable tab completion, add the following to your bash profile:

        source #{etc}/bash_completion.d/qcd
    EOS
  end

  test do
    shell_output("bash -c 'source #{prefix}/qcd && qcd -h'")
  end
end
