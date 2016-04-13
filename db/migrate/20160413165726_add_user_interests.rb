class AddUserInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
    t.references :users, index: true
    t.boolean :Rails, null: false, default: false
    t.boolean :React, null: false, default: false
    t.boolean :Ember, null: false, default: false
    t.boolean :Angular, null: false, default: false
    t.boolean :Backbone, null: false, default: false
    t.boolean :Phonegap, null: false, default: false
    t.boolean :jQuery, null: false, default: false
    t.boolean :iOS, null: false, default: false
    t.boolean :Ruby, null: false, default: false
    t.boolean :PHP, null: false, default: false
    t.boolean :NodeJS, null: false, default: false
    t.boolean :Linux, null: false, default: false
    t.boolean :CSS, null: false, default: false
    t.boolean :CoffeeScript, null: false, default: false
    t.boolean :Bash, null: false, default: false
    t.boolean :SQL, null: false, default: false
    t.boolean :Vim, null: false, default: false
    t.boolean :Game_development, null: false, default: false
    t.boolean :LEMP, null: false, default: false
    t.boolean :HTML, null: false, default: false
    t.boolean :Sinatra, null: false, default: false
    t.boolean :Sass, null: false, default: false
    t.boolean :C, null: false, default: false
    t.boolean :Java, null: false, default: false
    t.boolean :Meteor, null: false, default: false
    t.boolean :Lisp, null: false, default: false
    t.boolean :Beer, null: false, default: false
    t.boolean :NoSQL, null: false, default: false
    t.boolean :Python, null: false, default: false
    t.boolean :Javascript, null: false, default: false
    t.boolean :Django, null: false, default: false
    t.boolean :MongoDB, null: false, default: false
    t.boolean :Devops, null: false, default: false
    t.boolean :Assembler, null: false, default: false
    t.boolean :Pascal, null: false, default: false
    t.boolean :Fortran, null: false, default: false
    t.boolean :Cobol, null: false, default: false
    t.boolean :Basic, null: false, default: false
    t.boolean :Visual_Basic, null: false, default: false
    t.boolean :C_Sharp, null: false, default: false
    t.boolean :NET, null: false, default: false
    t.boolean :Objective_C, null: false, default: false
    t.boolean :Swift, null: false, default: false
    t.boolean :Clojure, null: false, default: false
    t.boolean :Elixir, null: false, default: false
    t.boolean :Android, null: false, default: false
    t.boolean :D3, null: false, default: false
    t.boolean :ThreeJS, null: false, default: false
    t.boolean :WordPress, null: false, default: false
    t.boolean :Spec, null: false, default: false
    t.boolean :Flask, null: false, default: false
    t.boolean :Ionic, null: false, default: false
    t.boolean :Gulp, null: false, default: false
    t.boolean :Express, null: false, default: false
    t.boolean :Heroku, null: false, default: false
    t.boolean :UIKit, null: false, default: false
    t.boolean :Realm, null: false, default: false
    t.boolean :Parse, null: false, default: false
    t.boolean :CoreLocation, null: false, default: false
    t.boolean :MapKit, null: false, default: false
    t.boolean :WatchKit, null: false, default: false
    t.boolean :Matlab, null: false, default: false
    end
  end
end

# Python, Javascript

# "Rails",
# "React",
# "Ember",
# "Angular",
# "Backbone",
# "Phonegap",
# "jQuery",
# "iOS"
# "Ruby",
# "PHP"
# "NodeJS"
# "Linux"
# "CSS"
# "CoffeeScript",
# "Bash",
# "SQL",
# "Vim",
# "Game development",
# "LEMP",
# "HTML",
# "Sinatra"
# "Sass",
# "C/C++",
# "Java"
# "Meteor"
# "Lisp"
# "Beer"
# "NoSQL"
# "Django"
# "Mongo",

# "Devops",
# "Assembler",
# "Pascal",
# "Fortran",
# "Cobol",
# "Basic",
# "Visual Basic"
# "C#",
# ".Net"
# "Objective-C",
# "Swift"
# "Clojure"
# "Elixir"
# "Android"

# "D3",
# "ThreeJS"
# "WordPress"
# "Spec"
# "Flask",
# "Ionic"
# "Gulp"
# "Express"
# "Heroku"
# "UIKit",
# "Realm",
# "Parse",

# "CoreLocation",
# "MapKit"
# "WatchKit"
# "Matlab"





