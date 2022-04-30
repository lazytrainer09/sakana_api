FactoryBot.define do
  factory :task do
    name     { 'Test Task' }
    detail   { 'Hello! This task is test task.' }
    deadline { Time.current.since(3.days) }
  end
end
