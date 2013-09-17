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

ActiveRecord::Schema.define(version: 20130916173424) do

  create_table "diaries", force: true do |t|
    t.string   "historial"
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "diagnostico"
  end

  create_table "patients", force: true do |t|
    t.string   "nome"
    t.date     "data_de_nascimento"
    t.string   "naturalidade"
    t.string   "morada"
    t.string   "localidade"
    t.integer  "codigo_postal"
    t.integer  "codigo_postal_ext"
    t.string   "contacto"
    t.integer  "rnu"
    t.string   "profissao"
    t.string   "servico_assistencial"
    t.string   "servico_assistencial_numero"
    t.string   "antecedentes_familiares"
    t.string   "antecedentes_pessoais"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "historial"
    t.string   "diagnostico"
    t.integer  "subsystem_id"
  end

  add_index "patients", ["subsystem_id"], name: "index_patients_on_subsystem_id"

  create_table "subsystems", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nome"
  end

end
