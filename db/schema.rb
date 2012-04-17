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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120417004148) do

  create_table "hospedaria", :force => true do |t|
    t.string   "nome"
    t.string   "tipo"
    t.integer  "qtd_vagas"
    t.string   "preferencia"
    t.string   "endereco"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "novas", :force => true do |t|
    t.string   "titulo"
    t.text     "corpo"
    t.integer  "usuario_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "novas", ["usuario_id"], :name => "index_novas_on_usuario_id"

  create_table "participantes", :force => true do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "email"
    t.string   "cpf"
    t.string   "rg"
    t.string   "endereco"
    t.string   "cidade"
    t.string   "estado"
    t.string   "como_conheceu"
    t.string   "ja_participou"
    t.string   "universidade"
    t.string   "curso"
    t.string   "inscricao"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "profissao"
    t.datetime "quando_chega"
    t.integer  "hospedarium_id"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nome"
    t.string   "senha"
    t.string   "tipo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
