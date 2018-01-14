class WelcomeController < ApplicationController
  def index
    @params = params
    @const0 = params["const0"] ? params["const0"].to_i : 100
    @const1 = params["const1"] ? params["const1"].to_i : 600
    @const2 = params["const2"] ? params["const2"].to_i : 300
    @result = GetSolution.for(
      const0: @const0,
      const1: @const1,
      const2: @const2
    )
  end
end
