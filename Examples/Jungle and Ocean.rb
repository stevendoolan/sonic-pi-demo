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

# Ocean

# Coded by Sam Aaron

with_fx :reverb, mix: 0.5 do
  live_loop :oceans do
    s = synth [:bnoise, :cnoise, :gnoise].choose, amp: rrand(0.5, 1.5), attack: rrand(0, 4), sustain: rrand(0, 2), release: rrand(1, 5), cutoff_slide: rrand(0, 5), cutoff: rrand(60, 100), pan: rrand(-1, 1), pan_slide: rrand(1, 5), amp: rrand(0.5, 1)
    control s, pan: rrand(-1, 1), cutoff: rrand(60, 110), amp: 5
    sleep rrand(2, 4)
  end
end


