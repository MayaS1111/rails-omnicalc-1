class CalculateController < ApplicationController
  def square 
    render({template: "displays/square_new"})
  end
  def square_root
    render({template: "displays/square_root_new"})
  end
  def payment
    render({template: "displays/payment_new"})
  end
  def random
    render({template: "displays/rand_new"})
  end
end
