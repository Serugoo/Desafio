class ScoreStudent < ActiveRecord::Base
  belongs_to :enade
  belongs_to :student  
end
