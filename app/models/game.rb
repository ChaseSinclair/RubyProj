class Game < ApplicationRecord
  has_one :hometeam, :class_name => 'Team', :foreign_key => 'hometeam_id'
  has_one :awayteam, :class_name => 'Team', :foreign_key => 'awayteam_id'
end
