class GoWorkflows < Formula
    desc "A golang workflows (aka snippets) manager"
    homepage "https://github.com/evertonstz/go-workflows"
    version "v0.0.8"
    license "GPL-3.0"
  
    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.8/go-workflows-darwin-amd64.tar.gz"
        sha256 "1e5174a872a411a3eadc5c34ce5b377295db0e4a64a49b61b38891297616929c"
      elsif Hardware::CPU.arm?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.8/go-workflows-darwin-arm64.tar.gz"
        sha256 "ad297ba025981c37ecd00417a69f2a65ad0e9acb26cbd7824b36ec78c2f6d31d"
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.8/go-workflows-linux-amd64.tar.gz"
        sha256 "94afb0cf6a851804e0360cdb5151351690ec656a014aa1766dc08e8526ba5e68"
      elsif Hardware::CPU.arm?
        url "https://github.com/evertonstz/go-workflows/releases/download/v0.0.8/go-workflows-linux-arm64.tar.gz"
        sha256 "94b586cff1894b79d467e29679d93eb64b579d0f81e845bd7c9820ec493445f4"
      end
    end
  
    def install
      bin.install "go-workflows"
    end
  
    test do
      system "#{bin}/go-workflows", "--version"
    end
  end
  
