# frozen_string_literal: true

class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes, &:timestamps
  end
end
