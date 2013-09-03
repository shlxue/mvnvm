#!/usr/bin/ruby -w

require 'rexml/document'
include REXML

pomfile = ARGV.concat( ['pom.xml'] )[0]

xmldoc = Document.new(File.new(pomfile))

enforcerVersion = XPath.first(xmldoc, '/project/build/plugins/plugin[artifactId="maven-enforcer-plugin"]//configuration/rules/requireMavenVersion/version')

if enforcerVersion
  # A closed lower bound?
  m = enforcerVersion.text.match(/\s*\[([\d\.]+)\s*,.*/)
  if m
    puts m[1]
  else
    puts enforcerVersion.text
  end
else
  prereq = XPath.first(xmldoc, '/project/prerequisites/maven')
  if prereq
    puts prereq.text
  else
    exit 5
  end
end
