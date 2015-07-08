class Blackbox < Formula
  homepage 'https://github.com/StackExchange/blackbox'
  head 'https://github.com/StackExchange/blackbox.git'

  depends_on 'gpg'
  depends_on 'gpg-agent' => :optional

  def install
    prefix.install 'bin'
  end

  test do
    system '#{bin}/blackbox_cat'
  end
end
