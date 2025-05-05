class GoWorkflows < Formula
    desc "A golang workflows (aka snippets) manager"
    homepage "https://github.com/evertonstz/go-workflows"
    version "v0.0.7"
    license "GPL-3.0"
  
    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.7/go-workflows-darwin-amd64.tar.gz"
        sha256 "0f3aec2641d585009cf39665f46143d6a591be0c266f13212359b674206764c0"
      elsif Hardware::CPU.arm?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.7/go-workflows-darwin-arm64.tar.gz"
        sha256 "06ba20d5b26934f67191039e1f1043b22cbb3a6a0a86bdf5463df58fe7999a5a"
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.7/go-workflows-linux-amd64.tar.gz"
        sha256 "fee4d93c2e2c3245b773b28a442ac3711c5deb57f3d5c531e26f17999796ec2b"
      elsif Hardware::CPU.arm?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.7/go-workflows-linux-arm64.tar.gz"
        sha256 "3d6b30b97e4c116164412228d7246fd110618bb54f636f285cb1917f595ad528"
      end
    end
  
    def install
      bin.install "go-workflows"
    end
  
    test do
      system "#{bin}/go-workflows", "--version"
    end
  end
  
