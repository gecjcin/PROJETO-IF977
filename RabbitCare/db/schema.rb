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

ActiveRecord::Schema.define(version: 2018_10_10_181525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "enfermeiros", force: :cascade do |t|
    t.string "login"
    t.string "senha"
    t.string "cpf"
    t.string "nome"
    t.string "email"
    t.string "telefone"
    t.string "coren"
    t.text "tarefas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coren"], name: "index_enfermeiros_on_coren", unique: true
    t.index ["cpf"], name: "index_enfermeiros_on_cpf", unique: true
    t.index ["email"], name: "index_enfermeiros_on_email", unique: true
    t.index ["login"], name: "index_enfermeiros_on_login", unique: true
  end

  create_table "medicos", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "crm"
    t.string "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cpf"], name: "index_medicos_on_cpf", unique: true
    t.index ["crm"], name: "index_medicos_on_crm", unique: true
  end

end
