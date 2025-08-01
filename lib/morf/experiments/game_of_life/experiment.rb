require "morf/grid"
require "morf/clock"
require "morf/grid_view"
require "morf/experiments/game_of_life/brain"
require "morf/experiments/game_of_life/sensor"
require "morf/experiments/game_of_life/cell_view"
require "morf/experiments/game_of_life/seed"

module Morf
  module Experiments
    module GameOfLife
      class Experiment
        def run
          clock = Morf::Clock.new

          grid = Morf::Grid.new(
            clock: clock,
            brain_class: Morf::Experiments::GameOfLife::Brain,
            sensor_class: Morf::Experiments::GameOfLife::Sensor,
            seed: Morf::Experiments::GameOfLife::Seed.new,
            rows: 100,
            columns: 100
          )

          grid_view = Morf::GridView.new(
            clock: clock,
            grid: grid,
            cell_view_class: Morf::Experiments::GameOfLife::CellView,
            time_limit: 30
          )

          puts "Experiment start."

          grid_view.show

          puts "Experiment done."
        end
      end
    end
  end
end
