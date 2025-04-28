class CalculationsController < ApplicationController
  def square_form
    render({ template: "calculation_templates/square_form" })
  end

  def square_results
    @num = params[:number].to_f
    @square = @num ** 2
    render({ template: "calculation_templates/square_results" })
  end

  def square_root_form
    render({ template: "calculation_templates/square_root_form" })
  end

  def square_root_results
    @num = params[:user_number].to_f
    @square_root = Math.sqrt(@num)
    render({ template: "calculation_templates/square_root_results" })
  end

  def homepage
    render({ template: "calculation_templates/homepage" })
  end
  
  def payment_form
    render({ template: "calculation_templates/payment_form" })
  end

  def payment_results
    apr = params[:apr].to_f
    years = params[:years].to_i
    principal = params[:principal].to_f

    r = apr / 100 / 12
    n = years * 12

    @monthly_payment = (r * principal) / (1 - (1 + r) ** -n)

    @apr = apr
    @years = years
    @principal = principal

    render({ template: "calculation_templates/payment_results" })
  end

  def random_form
    render({ template: "calculation_templates/random_form" })
  end

  def random_results
    min = params[:user_min].to_f
    max = params[:user_max].to_f
    @random_number = rand(min..max)
    render({ template: "calculation_templates/random_results" })
  end
end
