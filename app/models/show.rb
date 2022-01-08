class Show < ActiveRecord::Base
    
    def self.highest_rating #This method should return the highest value in the ratings column. Hint: if there is a .minimum Active Record method, might there be a .maximum method?
        Show.maximum(:rating)
    end

    def self.most_popular_show #Returns the show with the highest rating.
        highRating = Show.maximum(:rating)
        show = Show.where("rating == ?", highRating)[0]
    end

    def self.lowest_rating #Returns the lowest value in the ratings column.
        Show.minimum(:rating)
    end
    
    def self.least_popular_show #Returns the show with the lowest rating.
        lowRating = Show.minimum(:rating)
        show=Show.where("rating == ?", lowRating)[0]
    end
    
    def self.ratings_sum #Returns the sum of all of the ratings.
        Show.sum(:rating)
    end
    
    def self.popular_shows #Returns a list of all of the shows that have a rating greater than 5. Hint: use the .where Active Record method.
        Show.where("rating > 5")
    end
    
    def self.shows_by_alphabetical_order #Returns an array of all of the shows sorted in alphabetical order according to their names. Hint: use the .order Active Record method.
        Show.order(name: :asc)
    end
    
end