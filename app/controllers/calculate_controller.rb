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
    render({template: "displays/random_new"})
  end

  def square_results
    render({template: "displays/square_results"})
  end
  def square_root_results
    render({template: "displays/square_root_results"})
  end
  def payment_results
    @apr = params.fetch("users_number_apr").to_i.to_fs(:percentage, { :precision => 4 })
    @years = params.fetch("users_number_years").to_i
    @principal = params.fetch("users_number_principal").to_i.to_fs(:currency)

    r = params.fetch("users_number_apr").to_f / 1200
    n = params.fetch("users_number_years").to_i * 12
    pv = params.fetch("users_number_principal").to_i

    numerator = r*(pv)
    denominator = 1 - (1 + r)**-n

    @payment = (numerator / denominator).to_fs(:currency)
    render({template: "displays/payment_results"})
  end
  def random_results
    render({template: "displays/random_results"})
  end
end
