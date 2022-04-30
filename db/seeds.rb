# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Tasks
# is_completed false
3.times do |n|
  Task.create!(
    name: "テスト用タスク#{n}",
    detail: "テスト用タスク#{n}の詳細です。",
    deadline: Time.current.since(n.day)
  )
end

# is_completed true
2.times do |n|
  Task.create!(
    name: "完了済みタスク#{n}",
    detail: "完了済みタスク#{n}の詳細です。",
    deadline: Time.current.ago(n.day),
    is_completed: true
  )
end
