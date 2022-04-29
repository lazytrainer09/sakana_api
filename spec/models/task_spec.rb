require 'rails_helper'

RSpec.describe Task, type: :model do
  let(:task) { build(:task) }

  context 'normal system' do
    it 'is valid with name, description, deadline, is_completed' do
      expect(task).to be_valid
    end
  end

  context 'name validation' do
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

  context 'is_completed validation' do
    it 'is invalid with too long name' do
      task.is_completed = nil
      expect(task).to be_invalid
    end
  end
end
