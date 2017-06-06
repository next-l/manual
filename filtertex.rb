#!/usr/bin/env ruby

puts <<'EOF'
\documentclass[dvipdfmx]{jsarticle}
\usepackage{graphicx}
\usepackage{url}
\usepackage{hyperref}
\begin{document}
\tableofcontents
EOF
ARGF.each do |line|
  line = line.gsub(/\\includegraphics{([^}]+)}/) do |m|
    file = $1.dup
    if file =~ /image_install_right_ctrl_[gm]\.png/
      "\\includegraphics[height=1em]{#{file}}"
    else
      "\\includegraphics[width=.6\\hsize]{#{file}}"
    end
  end
  #line = line.gsub(/\\url\b/, '\protect\url')
  line = line.gsub(/\\paragraph\b/, '\paragraph[]')
  puts line
end
puts '\end{document}'
