# Feed the Birds, Mary Poppins

use_bpm 84

live_loop :sing do
  use_synth :piano
  notes = [:g4, :g4, :fs4, :e4, :g4, :e4, :d4]
  durations = [2.5, 0.5, 3, 0.5, 2, 0.5, 3]
  play_pattern_timed notes, durations
end

live_loop :piano do
  use_synth :piano
  play_pattern_timed [:g3, :b3, :d4, :c4, :c4, :c4, :b3], [2.5, 0.5, 3, 0.5, 2, 0.5, 3]
end

live_loop :bass do
  use_synth :piano
  play_pattern_timed [:g2, :d3, :g3, :b2, :fs3, :b3, :c3, :g3, :c4, :g2, :d3, :g3],
    [0.5, 0.5, 2, 0.5, 0.5, 2, 0.5, 0.5, 2, 0.5, 0.5, 2]
end
