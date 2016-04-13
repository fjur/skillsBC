# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160413165726) do

  create_table "interests", force: :cascade do |t|
    t.integer "users_id"
    t.boolean "Rails",            default: false, null: false
    t.boolean "React",            default: false, null: false
    t.boolean "Ember",            default: false, null: false
    t.boolean "Angular",          default: false, null: false
    t.boolean "Backbone",         default: false, null: false
    t.boolean "Phonegap",         default: false, null: false
    t.boolean "jQuery",           default: false, null: false
    t.boolean "iOS",              default: false, null: false
    t.boolean "Ruby",             default: false, null: false
    t.boolean "PHP",              default: false, null: false
    t.boolean "NodeJS",           default: false, null: false
    t.boolean "Linux",            default: false, null: false
    t.boolean "CSS",              default: false, null: false
    t.boolean "CoffeeScript",     default: false, null: false
    t.boolean "Bash",             default: false, null: false
    t.boolean "SQL",              default: false, null: false
    t.boolean "Vim",              default: false, null: false
    t.boolean "Game_development", default: false, null: false
    t.boolean "LEMP",             default: false, null: false
    t.boolean "HTML",             default: false, null: false
    t.boolean "Sinatra",          default: false, null: false
    t.boolean "Sass",             default: false, null: false
    t.boolean "C",                default: false, null: false
    t.boolean "Java",             default: false, null: false
    t.boolean "Meteor",           default: false, null: false
    t.boolean "Lisp",             default: false, null: false
    t.boolean "Beer",             default: false, null: false
    t.boolean "NoSQL",            default: false, null: false
    t.boolean "Python",           default: false, null: false
    t.boolean "Javascript",       default: false, null: false
    t.boolean "Django",           default: false, null: false
    t.boolean "MongoDB",          default: false, null: false
    t.boolean "Devops",           default: false, null: false
    t.boolean "Assembler",        default: false, null: false
    t.boolean "Pascal",           default: false, null: false
    t.boolean "Fortran",          default: false, null: false
    t.boolean "Cobol",            default: false, null: false
    t.boolean "Basic",            default: false, null: false
    t.boolean "Visual_Basic",     default: false, null: false
    t.boolean "C_Sharp",          default: false, null: false
    t.boolean "NET",              default: false, null: false
    t.boolean "Objective_C",      default: false, null: false
    t.boolean "Swift",            default: false, null: false
    t.boolean "Clojure",          default: false, null: false
    t.boolean "Elixir",           default: false, null: false
    t.boolean "Android",          default: false, null: false
    t.boolean "D3",               default: false, null: false
    t.boolean "ThreeJS",          default: false, null: false
    t.boolean "WordPress",        default: false, null: false
    t.boolean "Spec",             default: false, null: false
    t.boolean "Flask",            default: false, null: false
    t.boolean "Ionic",            default: false, null: false
    t.boolean "Gulp",             default: false, null: false
    t.boolean "Express",          default: false, null: false
    t.boolean "Heroku",           default: false, null: false
    t.boolean "UIKit",            default: false, null: false
    t.boolean "Realm",            default: false, null: false
    t.boolean "Parse",            default: false, null: false
    t.boolean "CoreLocation",     default: false, null: false
    t.boolean "MapKit",           default: false, null: false
    t.boolean "WatchKit",         default: false, null: false
    t.boolean "Matlab",           default: false, null: false
  end

  add_index "interests", ["users_id"], name: "index_interests_on_users_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
