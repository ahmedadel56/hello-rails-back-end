# Top level comment
class StaticController < ApplicationController
  def greetings
    greeting = Greeting.order(Arel.sql('RANDOM()')).first
    render json: { message: greeting.text }
  end
end
