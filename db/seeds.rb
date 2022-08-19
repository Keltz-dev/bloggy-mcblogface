require "open-uri"

Article.destroy_all

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
file_2 = URI.open("https://blog.seibert-media.net/wp-content/uploads/2014/03/Gitflow-Workflow-4.png")
article = Article.new(title: "NES", body: "A great console")
article.photos.attach([(io: file, filename: "nes.png", content_type: "image/png"), (io: file_2, filename: "nasdasd.png", content_type: "image/png")])
article.save

p article

puts "Done"
