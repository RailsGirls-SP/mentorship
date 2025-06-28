class MenteesController < ApplicationController
 def index
   @mentees = Mentee.all
 end

 def new
   @mentee = Mentee.new
 end
end
