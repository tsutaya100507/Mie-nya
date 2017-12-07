class Task < ApplicationRecord
  # ActiveRecordがtypeというカラム名を使用するため、typeカラムは使用できない。以下はtypeカラムを使用するための措置。
  self.inheritance_column = :_type_disabled
  has_many :child_tasks, dependent: :destroy

  # D&Dによるタスク移動のための記述
  include RankedModel
  ranks :row_order
end
