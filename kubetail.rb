class Kubetail < Formula
  desc "Tail logs from multiple Kubernetes pods at the same time"
  homepage "https://github.com/johanhaleby/kubetail"
  url "https://github.com/johanhaleby/kubetail/archive/1.6.3.tar.gz"
  sha256 "37cea9349564580d35aad5e9e901db830d93e6f42b9f89f0c4fcf1164f55d913"
  head "https://github.com/johanhaleby/kubetail.git"

  option "with-short-names", "link as \"kt\" instead"
  
  def install
    bin.install "kubetail" => build.with?("short-names") ? "kt" : "kubetail"
    bash_completion.install "completion/kubetail.bash"
    zsh_completion.install "completion/kubetail.zsh" => "_kubetail"
    fish_completion.install "completion/kubetail.fish"
  end

  test do
    system "which", build.with?("short-names") ? "kt" : "kubetail"
  end
end
