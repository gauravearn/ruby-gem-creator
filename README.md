# ruby-gem-creator
A ruby class which will create your ruby gem creating easy. It has two methods one to make the template and one to write the template. You can check the template before writing and then simply write the template for gem creation. This is now available as a gem [template_creator](https://rubygems.org/gems/template_creator/versions/0.0.1)

```
gem install template_creator
require "template_creator"
cookie = CookieGem.new
("Gaurav Sablok", "gauravgem.rb", "gauravgem",
    "This is a ruby gem maker", "0.0.0", "sablokg@gmail.com",
                              "https://homepage.com", "MIT", "this is a package to create templates")
cookie.templateMaker
Gem::Specification.new.do |s|
s.author = Gaurav Sablok                                
s.files = ["gauravgem.rb"]                              
s.name = gauravgem                                      
s.summary = This is a ruby gem maker                    
s.version = 0.0.0                                       
s.email = sablokg@gmail.com                             
s.homepage = https://homepage.com                       
s.license = MIT                                         
s.metadata = this is a package to create templates
cookie.writeTemplate("filename")
if your metadata file is large then you can also give the filename and in that case uncomment
the line for the metadata and it will read from the file.
```
if you want to use a prototype version:
```
class CookieGem
  attr_accessor :author, :filename, :name, :summary, :version, :email, :homepage, :license, :metadata
  def initialize(author:, filename:, name:, summary:, version:, email:, homepage:, license:, metadata:)
    @author = author
    @filename = filename.split
    @name = name
    @summary = summary
    @version = version
    @email = email
    @homepage = homepage
    @license = license
    @metadata = metadata
  end
  def write_template(file)
    contents = <<-GEMSPEC
      Gem::Specification.new do |s|
        s.author = #{@author}
        s.files = #{@filename}
        s.name = #{@name}
        s.summary = #{@summary}
        s.version = #{@version}
        s.email = #{@email}
        s.homepage = #{@homepage}
        s.license = #{@license}
        s.metadata = #{@metadata}
      end
    GEMSPEC
    File.write("#{file}.gemspec", contents, mode: "a")
  end
end
```

Gaurav Sablok \
Academic Staff Member \
Bioinformatics \
Institute for Biochemistry and Biology \
University of Potsdam \
Potsdam,Germany 
