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

ActiveRecord::Schema.define(version: 20151103234458) do

  create_table "miembrotuerca_vehiculos", force: true do |t|
    t.integer  "miembrotuerca_id"
    t.integer  "vehiculos_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "miembrotuerca_vehiculos", ["miembrotuerca_id"], name: "index_miembrotuerca_vehiculos_on_miembrotuerca_id"
  add_index "miembrotuerca_vehiculos", ["vehiculos_id"], name: "index_miembrotuerca_vehiculos_on_vehiculos_id"

  create_table "miembrotuercas", force: true do |t|
    t.string   "nombre"
    t.string   "nick"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recomendaciones", force: true do |t|
    t.string   "tipo"
    t.string   "taller"
    t.string   "ubicacion"
    t.string   "comentario"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recomendaciones", ["usuario_id"], name: "index_recomendaciones_on_usuario_id"

  create_table "usuarios", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

  create_table "vehiculos", force: true do |t|
    t.string   "marca"
    t.string   "modelo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
