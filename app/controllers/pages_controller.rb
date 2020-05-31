class PagesController < ApplicationController
    def about
        @title = 'What is Quarantalk?';
        @content = 'Quarantalk makes exercising in times of social distancing more interesting! Talk to new people with similar interests when out for a walk.';
    end
end
