class Game < ActiveRecord::Base
    # all the associations, etc.

    after_create :populate_board!

    def populate_board!
        # this should create all 32 pieces with their initial X/Y coordinates.
    end

end  