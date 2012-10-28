class ApplicationController < Sinatra::Base
    #server logic goes here
   def self.inherited(sublass)
       super
       use sublass
   end

   get '/' do
        ROOT_DIR
   end

   get '/file/?' do
        "filestub"
   end

   get '/foo/?' do
        "went to foo"
   end
   run! if __FILE__ == $0

end



#now load all the other classes
controllers = Dir['./controllers/*']
#remove application controller form list of files to load
controllers.delete('./controllers/application.rb')
controllers.each do |file|
    load file
end






