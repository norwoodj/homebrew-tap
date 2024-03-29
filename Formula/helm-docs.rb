# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HelmDocs < Formula
  desc "Automatically generate markdown documentation for helm charts"
  homepage "https://github.com/norwoodj/helm-docs"
  version "1.13.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/norwoodj/helm-docs/releases/download/v1.13.1/helm-docs_1.13.1_Darwin_arm64.tar.gz"
      sha256 "43789d5c057be8ea4486e7b07c5d4792cd8a3680e1d878910438a2a1a43a778e"

      def install
        bin.install "helm-docs"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/norwoodj/helm-docs/releases/download/v1.13.1/helm-docs_1.13.1_Darwin_x86_64.tar.gz"
      sha256 "fb7830b64d6bde9898c8f74ef96e6c4403f1c6369b30bae8a24dee4c237b9751"

      def install
        bin.install "helm-docs"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/norwoodj/helm-docs/releases/download/v1.13.1/helm-docs_1.13.1_Linux_arm64.tar.gz"
      sha256 "4dfa9fe4f069ce5975b772ee4f43416316a6e579b1574bd640be460f553c3f71"

      def install
        bin.install "helm-docs"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/norwoodj/helm-docs/releases/download/v1.13.1/helm-docs_1.13.1_Linux_x86_64.tar.gz"
      sha256 "df8d803506933ceb92bc2996d8a432059a35fc19a308ac37a141971ffdf7aa33"

      def install
        bin.install "helm-docs"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/norwoodj/helm-docs/releases/download/v1.13.1/helm-docs_1.13.1_Linux_arm6.tar.gz"
      sha256 "87349bad4440ddcba5ea9a10f2a00f679c58801e4f49c74dacc22ebec6ef318f"

      def install
        bin.install "helm-docs"
      end
    end
  end

  test do
    system "#{bin}/helm-docs --version"
  end
end
