class Experiment < ActiveRecord::Base
  mount_uploader :file, ExperimentUploader
  validates :name, presence: true, uniqueness: true
  validates :file, presence: true
end
