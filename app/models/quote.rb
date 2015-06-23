class Quote < ActiveRecord::Base
	validates :saying, :presence => true, :length => {:maximum => 240, :minimum => 3 }
	validates :author, :presence => true, :length => {:maximum => 50, :minimum => 3 }

	def unique_tag
		initials = self.author.split.map do |sub_string|
			sub_string[0]
		end
		initials.join + '#' + self.id.to_s
	end
end
