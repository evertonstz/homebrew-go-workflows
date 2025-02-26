class GoWorkflows < Formula
    desc "A golang workflows (aka snippets) manager"
    homepage "https://github.com/evertonstz/go-workflows"
    version "v0.0.6"
    license "GPL-3.0"
  
    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.6/go-workflows-darwin-amd64.tar.gz"
        sha256 "05caa4df1aa58d1d39d427c05eee0acbc087340e4a2afb56eed2e9ea8bfff159"
      elsif Hardware::CPU.arm?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.6/go-workflows-darwin-arm64.tar.gz"
        sha256 "87fac082d93fd5c785a9ec50ebb6ceb52523bbe8955126d4ce9942197d48d329"
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.6/go-workflows-linux-amd64.tar.gz"
        sha256 "29b33698bba16cf129e6b0081b24e8a035cf474f24534668135aba103ac74f28"
      elsif Hardware::CPU.arm?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.6/go-workflows-linux-arm64.tar.gz"
        sha256 "d72701aeea4ecdd4154f5cc9e084317961a7b0c0ff2e7dfee440ba7261b068ef"
      end
    end
  
    def install
      bin.install "go-workflows"
    end
  
    test do
      system "#{bin}/go-workflows", "--version"
    end
  end
  
