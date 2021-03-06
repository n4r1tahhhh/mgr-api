# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_201_231_014_325) do
  create_table 'challenges', force: :cascade do |t|
    t.integer 'event_id', null: false
    t.string 'title'
    t.datetime 'start_at'
    t.datetime 'finish_at'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['event_id'], name: 'index_challenges_on_event_id'
  end

  create_table 'events', force: :cascade do |t|
    t.string 'title'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'ownerships', force: :cascade do |t|
    t.integer 'user_id', null: false
    t.integer 'event_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['event_id'], name: 'index_ownerships_on_event_id'
    t.index ['user_id'], name: 'index_ownerships_on_user_id'
  end

  create_table 'submissions', force: :cascade do |t|
    t.integer 'user_id', null: false
    t.integer 'challenge_id', null: false
    t.integer 'score'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['challenge_id'], name: 'index_submissions_on_challenge_id'
    t.index ['user_id'], name: 'index_submissions_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'email'
    t.string 'password_digest'
  end

  add_foreign_key 'challenges', 'events'
  add_foreign_key 'ownerships', 'events'
  add_foreign_key 'ownerships', 'users'
  add_foreign_key 'submissions', 'challenges'
  add_foreign_key 'submissions', 'users'
end
