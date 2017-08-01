class ScoreGeneral < ActiveRecord::Base
  belongs_to :enade
  belongs_to :institution
  
  def self.search(search)
    if search != ''
      where('score = ?', "%#{search}%")
    else
      all
    end
  end
  
end
