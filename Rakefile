# frozen_string_literal: true

require "bundler/gem_tasks"
require "rb_sys/extensiontask"

task build: :compile

RbSys::ExtensionTask.new("lingua") do |ext|
  ext.lib_dir = "lib/lingua"
end

task default: %i[compile]

# require "bundler/gem_tasks"
# require "rake/testtask"
# require "rake/extensiontask"

# platforms = [
#   "x86_64-linux",
#   "aarch64-linux",
#   "x86_64-darwin",
#   "arm64-darwin",
#   "x64-mingw-ucrt",
#   "x64-mingw32"
# ]

# gemspec = Bundler.load_gemspec("lingua_rb.gemspec")
# Rake::ExtensionTask.new("lingua", gemspec) do |ext|
#   ext.lib_dir = "lib/lingua"
#   ext.cross_compile = true
#   ext.cross_platform = platforms
#   ext.cross_compiling do |spec|
#     spec.dependencies.reject! { |dep| dep.name == "rb_sys" }
#     spec.files.reject! { |file| File.fnmatch?("ext/*", file, File::FNM_EXTGLOB) }
#   end
# end

# task :remove_ext do
#   path = "lib/lingua/lingua.bundle"
#   File.unlink(path) if File.exist?(path)
# end

# Rake::Task["build"].enhance [:remove_ext]
