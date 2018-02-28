$NetBSD$

--- lib/rubygems/install_update_options.rb.orig	2017-10-08 01:32:18.000000000 +0000
+++ lib/rubygems/install_update_options.rb
@@ -18,6 +18,12 @@ module Gem::InstallUpdateOptions
   # Add the install/update options to the option parser.
 
   def add_install_update_options
+    add_option(:"Install/Update", '-B', '--install-root DIR',
+               'Root directory for gem files on install') do |value, options|
+      options[:install_root] = File.expand_path(value)
+      Gem.ensure_gem_subdirectories File.join options[:install_root], Gem.dir
+    end
+
     add_option(:"Install/Update", '-i', '--install-dir DIR',
                'Gem repository directory to get installed',
                'gems') do |value, options|
