require 'rulp'

class GetSolution < PowerTypes::Command.new(const0: 100, const1: 600, const2: 300)
  def perform
    init
    @problem = Rulp::Max(10 * X_lpi + 6 * Y_lpi + 4 * Z_lpi)
    define_constraints
    {
      solution: @problem.glpk,
      x: X_lpi.value,
      y: Y_lpi.value,
      z: Z_lpi.value
    }
  end

  def init
    given[
      X_lpi >= 0,
      Y_lpi >= 0,
      Z_lpi >= 0
    ]
  end

  def define_constraints
    @problem [
      X_lpi + Y_lpi + Z_lpi <= @const0,
      10 * X_lpi + 4 * Y_lpi + 5 * Z_lpi <= @const1,
      2 *  X_lpi + 2 * Y_lpi + 6 * Z_lpi <= @const2
    ]
  end
end
