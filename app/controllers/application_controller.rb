class ApplicationController < ActionController::Base
  def blank_square_form

    render({ :template => "calculation_templates/square_form.html.erb"})
  end

  def calculate_square
    # params = {"number" => "42"}
    @num = params.fetch("number").to_f
    @square_of_num = @num ** 2 
    render({ :template => "calculation_templates/square_results.html.erb"})
  end

  def blank_random_form

    render({ :template => "calculation_templates/random_form.html.erb"})
  end

  def calculate_random
    # params = {"number" => "42"}
    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @result = rand(@lower..@upper)
    render({ :template => "calculation_templates/random_results.html.erb"})
  end

  def blank_square_root_form

    render({ :template => "calculation_templates/square_root_form.html.erb"})
  end

  def calculate_square_root
    @num_root = params.fetch("user_number").to_f
    @root_of_num = Math.sqrt(@num_root)
    render({ :template => "calculation_templates/square_root_results.html.erb"})
  end

end
