#!/usr/bin/env ruby

require "liquid"

class Jekyll2Markdown
  def initialize
    @done = {}
    @markdown = ""
  end
  def to_markdown
    @markdown
  end
  def <<(file)
    cont = File.read(file)
    markdown = cont.split(/---\r?\n/, 3).last
    @markdown << parse_liquid(markdown)
  end
  def _parse_liquid(str)
    template = Liquid::Template.parse(str, :error_mode => :strict)
    template.render
  end
  def parse_liquid(str)
    str = str.gsub(/\{::comment\}.*?\{:\/comment\}/m, "")
    str = str.gsub("* Contents\n{:toc}", "")
    str = str.gsub("../assets/", "assets/")
    str = str.gsub(/{%\s*include\s+(.+?)\s*%}/) do |m|
      file = $1.dup
      if @done[file]
        ""
      else
        @done[file] = true
        cont = File.read(File.join("_includes", file))
        template = Liquid::Template.parse(cont, :error_mode => :strict)
        str = template.render
        parse_liquid(str)
      end
    end
  end
end

md = Jekyll2Markdown.new
ARGV.each do |file|
  md << file
end
puts md.to_markdown
