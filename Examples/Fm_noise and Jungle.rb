# Fm_noise

# Coded by Sam Aaron

use_synth :fm

live_loop :sci_fi do
  p = play (chord :Eb3, :minor).choose - [0, 12, -12].choose, divisor: 0.01, div_slide: rrand(0, 10), depth: rrand(0.001, 2), attack: 0.01, release: rrand(0, 5), amp: 3
  control p, divisor: rrand(0.001, 50)
  sleep [0.5, 1, 2].choose
end

# Jungle

# Coded by Sam Aaron
use_bpm 25

with_fx :lpf, cutoff: 90 do
  with_fx :reverb, mix: 0.5 do
    with_fx :compressor, pre_amp: 40 do
      with_fx :distortion, distort: 0.4 do
        live_loop :jungle do
          use_random_seed 667
          4.times do
            sample :loop_amen, beat_stretch: 1, rate: [1, 1, 1, -1].choose / 2.0, finish: 0.5, amp: 0.5
            sample :loop_amen, beat_stretch: 1
            sleep 1
          end
        end
      end
    end
  end
end
