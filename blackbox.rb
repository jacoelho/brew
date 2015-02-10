class Blackbox < Formula
  homepage 'https://github.com/StackExchange/blackbox'
  url 'https://github.com/StackExchange/blackbox.git', :tag => 'production'
  version 'production'

  depends_on 'gnupg'
  depends_on 'gpg-agent' => :optional

  def install
    prefix.install 'bin'
  end

  test do
    system '#{bin}/blackbox_cat'
  end
end
