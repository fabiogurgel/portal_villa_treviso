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

ActiveRecord::Schema.define(version: 20180304145000) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "area", force: :cascade do |t|
    t.string "codigo"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "areas", force: :cascade do |t|
    t.string "codigo"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categoria_produto", force: :cascade do |t|
    t.integer "codigo"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categorias", force: :cascade do |t|
    t.integer "codigo"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lista_produtos", force: :cascade do |t|
    t.bigint "produto_id"
    t.integer "quantidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produto_id"], name: "index_lista_produtos_on_produto_id"
  end

  create_table "nota_fiscais", force: :cascade do |t|
    t.bigint "pessoa_id"
    t.integer "codigo"
    t.integer "numero"
    t.date "data"
    t.float "valor"
    t.integer "quantidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pessoa_id"], name: "index_nota_fiscais_on_pessoa_id"
  end

  create_table "pessoas", force: :cascade do |t|
    t.string "nome_razao_social"
    t.string "cnpj"
    t.string "cpf"
    t.string "email"
    t.string "site"
    t.string "endereco"
    t.string "numero"
    t.string "bairro"
    t.string "municipio"
    t.string "uf"
    t.string "cep"
    t.string "telefone"
    t.string "celular"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.bigint "categoria_id"
    t.bigint "pessoa_id"
    t.string "descricao"
    t.float "valor"
    t.integer "quant_minima"
    t.string "unidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categoria_id"], name: "index_produtos_on_categoria_id"
    t.index ["pessoa_id"], name: "index_produtos_on_pessoa_id"
  end

  create_table "servicos", force: :cascade do |t|
    t.bigint "area_id"
    t.bigint "pessoa_id"
    t.bigint "lista_produto_id"
    t.string "descricao"
    t.date "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_servicos_on_area_id"
    t.index ["lista_produto_id"], name: "index_servicos_on_lista_produto_id"
    t.index ["pessoa_id"], name: "index_servicos_on_pessoa_id"
  end

  create_table "sub_areas", force: :cascade do |t|
    t.bigint "area_id"
    t.integer "codigo"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_sub_areas_on_area_id"
  end

  create_table "tipo_pessoa", force: :cascade do |t|
    t.integer "codigo"
    t.string "descricao"
    t.boolean "ativo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_pessoas", force: :cascade do |t|
    t.integer "codigo"
    t.string "descricao"
    t.boolean "ativo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.bigint "pessoa_id"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["pessoa_id"], name: "index_usuarios_on_pessoa_id"
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  add_foreign_key "lista_produtos", "produtos"
  add_foreign_key "nota_fiscais", "pessoas"
  add_foreign_key "produtos", "categorias"
  add_foreign_key "produtos", "pessoas"
  add_foreign_key "servicos", "areas"
  add_foreign_key "servicos", "lista_produtos"
  add_foreign_key "servicos", "pessoas"
  add_foreign_key "sub_areas", "areas"
  add_foreign_key "usuarios", "pessoas"
end
