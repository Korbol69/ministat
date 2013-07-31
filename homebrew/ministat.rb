require 'formula'

class Ministat < Formula
  homepage 'https://github.com/codahale/ministat'
  url 'https://github.com/elfchief/ministat/archive/1.0.2013073100.zip'
  sha1 '0f21711413d294952a44b50c40693f1a178c79a5'
  version '1.0.20130731'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test ministat`.
    system "false"
  end
end
