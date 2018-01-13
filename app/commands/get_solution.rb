require 'rulp'

class GetSolution < PowerTypes::Command.new(const0: 100, const1: 600, const2: 300)
  def perform
    init
    @problem = Rulp::Max(10 * X_i + 6 * Y_i + 4 * Z_i)
    define_constraints
    {
      solution: @problem.glpk,
      x: X_i.value,
      y: Y_i.value,
      z: Z_i.value
    }
  end

  def init
    given[
      X_i >= 0,
      Y_i >= 0,
      Z_i >= 0
    ]
  end

  def define_constraints
    @problem [
      X_i + Y_i + Z_i <= @const0,
      10 * X_i + 4 * Y_i + 5 * Z_i <= @const1,
      2 *  X_i + 2 * Y_i + 6 * Z_i <= @const2
    ]
  end
end
