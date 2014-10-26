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

ActiveRecord::Schema.define(version: 20141026001647) do

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "duet_stability_mutation_jobs", force: true do |t|
    t.integer  "stability_job_id"
    t.text     "result"
    t.string   "mutation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "mutant_pdb_file_url"
  end

  add_index "duet_stability_mutation_jobs", ["stability_job_id"], name: "index_duet_stability_mutation_jobs_on_stability_job_id"

  create_table "i_stability_mutation_jobs", force: true do |t|
    t.integer "stability_job_id"
    t.string  "result"
    t.text    "mutation"
    t.integer "istable_index"
  end

  add_index "i_stability_mutation_jobs", ["stability_job_id"], name: "index_i_stability_mutation_jobs_on_stability_job_id"

  create_table "stability_jobs", force: true do |t|
    t.string   "pdb_id"
    t.string   "mutations"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_url"
  end

end
