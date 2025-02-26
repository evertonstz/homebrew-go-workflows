class GoWorkflows < Formula
    desc "A golang workflows (aka snippets) manager"
    homepage "https://github.com/evertonstz/go-workflows"
    version "v0.0.5"
    license "GPL-3.0"
  
    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.5/go-workflows-darwin-amd64.tar.gz"
        sha256 "2eab4d887ba8061158c82b825d195314d0de065a973ab7f78f7911ea0767123d"
      elsif Hardware::CPU.arm?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.5/go-workflows-darwin-arm64.tar.gz"
        sha256 "282bc2dffef7bab0d12eaf1e27aa0cb094fa1f0bd9ed88f97ca89dc578b1108d"
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.5/go-workflows-linux-amd64.tar.gz"
        sha256 "b7ec816c089a18057b25119c5815fcded3bfedb804da493befee0970c67b4065"
      elsif Hardware::CPU.arm?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.5/go-workflows-linux-arm64.tar.gz"
        sha256 "2f09ade495416a875abd410324d2f93099ba783406264041ea29a0ba5107f2f7"
      end
    end
  
    def install
      bin.install "go-workflows"
    end
  
    test do
      system "#{bin}/go-workflows", "--version"
    end
  end
  
