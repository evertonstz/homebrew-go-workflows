class GoWorkflows < Formula
    desc "A golang workflows (aka snippets) manager"
    homepage "https://github.com/evertonstz/go-workflows"
    version "v0.0.5"
    license "GPL-3.0"
  
    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.5/go-workflows-darwin-amd64.tar.gz"
        sha256 "sss"
      elsif Hardware::CPU.arm?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.5/go-workflows-darwin-arm64.tar.gz"
        sha256 "ssss"
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.5/go-workflows-linux-amd64.tar.gz"
        sha256 "8f610346dcb2cd3421ee9c84702b3bb380221b92b4d3d9706d7152acfffbd30a"
      elsif Hardware::CPU.arm?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.5/go-workflows-linux-arm64.tar.gz"
        sha256 "ssss"
      end
    end
  
    def install
      bin.install "go-workflows"
    end
  
    test do
      system "#{bin}/go-workflows", "--version"
    end
  end
  
