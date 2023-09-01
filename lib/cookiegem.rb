#! /usr/bin/ruby
class CookieGem
=begin
     A cookiclutter for making the ruby gems, provide the variables
     as you want in your ruby gemspec file and it will write the gem
     specific file. You can then directly build your gems using the 
     gem build gemfilename.gemspec
     filenamewrite = file to which the template should be written
     authors = authors of the template
     rubyfilename = name of the ruby file
     name = package name
     summary = summary of the package
     version = version of the package
     email = email of the author
     homepage = homepage of the package
     license = licence type
     metadata = metadata of the package
=end
  def initialize(authors, rubyfilename, name, summary, version, email, homepage, license, metadata)
    @storingauthor = authors.to_s
    @storingfiles = rubyfilename.split
    @storingname = name
    @storingsummary = summary
    @storingversion = version
    @storingemail = email
    @storinghomepage = homepage
    @storinglicense = license
    @storingmetadata = metadata
    #{}@largemetadata = File.open(metadata).readlines().each{ |each| puts each.split("\n").join}
  end
  def templateMaker                                               
        puts "Gem::Specification.new.do |s|"
        puts "s.author = #{@storingauthor}"
        puts "s.files = #{@storingfiles}"
        puts "s.name = #{@storingname}"
        puts "s.summary = #{@storingsummary}"
        puts "s.version = #{@storingversion}"
        puts "s.email = #{@storingemail}"
        puts "s.homepage = #{@storinghomepage}"
        puts "s.license = #{@storinglicense}"
        puts "s.metadata = #{@storingmetadata}"
        puts "s.metadata = #{@largemetadata}"
  end
  def writeTemplate(filename)
    @file = filename 
    @firstline = "Gem::Specification.new.do |s|"
    @writestoringauthor = "s.author = #{@storingauthor}"
    @writestoringfiles = "s.files = #{@storingfiles}"
    @writestoringname = "s.name = #{@storingname}"
    @writestoringversion = "s.version = #{@storingversion}"
    @writestoringsummary = "s.summary = #{@storingsummary}"
    @writestoringemail = "s.email = #{@storingemail}"
    @writestoringhomepage = "s.homepage = #{@storinghomepage}"
    @writestoringlicense = "s.metadata = #{@storinglicense}"
    @writestoringmetadata = "s.metadata = #{@storingmetadata}"
    @writestoringlargemetadata = "s.metadata = #{@largemetadata}"
    File.write("#{@file}"+".gemspec", "#{@file}\n#{@firstline}\n#{@writestoringauthor}\n#{@writestoringfiles}\n#{@writestoringname}\n#{@writestoringversion}\n#{@writestoringsummary}\n#{@writestoringemail}\n#{@writestoringhomepage}\n#{@writestoringlicense}\n#{@writestoringmetadata}\n#{@writestoringlargemetadata}", mode: "a")
  end
end
