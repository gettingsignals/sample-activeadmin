class Calendar# < ApplicationRecord
  include ActiveModel::Model

  attr_accessor :name, :age

    # before_saveを使うための記述
    define_model_callbacks :save
    # callbackで実行するmethodを指定
    # before_save :form_validation

  validates :name, presence: true
  validates :age, presence: true


end
