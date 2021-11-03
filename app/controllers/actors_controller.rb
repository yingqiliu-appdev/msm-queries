class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all

    render({ :template => "actor_templates/index.html.erb"})
  end

  def actor_details

    the_id = params.fetch("an_id")

    @actor = Actor.where({ :id => the_id}).at(0)
    @character = Character.where({ :actor_id => @actor.id})

    render({ :template => "actor_templates/show.html.erb"})
  end

end