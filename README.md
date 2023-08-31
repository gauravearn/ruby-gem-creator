# ruby_gem_creator
A ruby class which will create your ruby gem creating easy. It has two methods one to make the template and one to write the template. You can check the template before writing and then simply write the template for gem creation. 

```
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
Gaurav Sablok \
Frontiers: https://loop.frontiersin.org/people/33293/overview \
ORCID: https://orcid.org/0000-0002-4157-9405 \
WOS: https://www.webofscience.com/wos/author/record/C-5940-2014 \
Github:https://github.com/sablokgaurav \
Linkedin: https://www.linkedin.com/in/sablokgaurav/

