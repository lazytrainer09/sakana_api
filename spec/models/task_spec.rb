require 'rails_helper'

RSpec.describe Task, type: :model do
  let(:task) { build(:task) }

  context 'when normal system' do
    it 'is valid with name, description, deadline, is_completed' do
      expect(task).to be_valid
    end
  end

  context 'when name is valid or invalid' do
    it 'is invalid without name' do
      task.name = nil
      expect(task).to be_invalid
    end

    it 'is valid with limit long name' do
      task.name = 'a' * 200
      expect(task).to be_valid
    end

    it 'is invalid with too long name' do
      task.name = 'a' * 201
      expect(task).to be_invalid
    end
  end

  context 'when is_completed is valid or invalid' do
    it 'is valid with is_completed is true' do
      task.is_completed = true
      expect(task).to be_valid
    end

    it 'is invalid without is_completed' do
      task.is_completed = nil
      expect(task).to be_invalid
    end
  end
end
