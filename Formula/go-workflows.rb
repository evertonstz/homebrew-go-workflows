class GoWorkflows < Formula
    desc "A golang workflows (aka snippets) manager"
    homepage "https://github.com/evertonstz/go-workflows"
    version "v0.0.6"
    license "GPL-3.0"
  
    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.6/go-workflows-darwin-amd64.tar.gz"
        sha256 "06d20cbf4c7d767e477bb14bc551891b26586ea6f6d4d57d15e70287d830a443"
      elsif Hardware::CPU.arm?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.6/go-workflows-darwin-arm64.tar.gz"
        sha256 "08b648affd23291dada0ca6c9905365cfdd40c3d334c037924947f5a98fbaf71"
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.6/go-workflows-linux-amd64.tar.gz"
        sha256 "23501800ac27e87307d9ae60f0a204515d218357be3831b397b7c39c63af0a24"
      elsif Hardware::CPU.arm?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.6/go-workflows-linux-arm64.tar.gz"
        sha256 "1d7fff60d0f699a85f7128532c370509486ab3931061cb610f6765c91b93f1c4"
      end
    end
  
    def install
      bin.install "go-workflows"
    end
  
    test do
      system "#{bin}/go-workflows", "--version"
    end
  end
  
