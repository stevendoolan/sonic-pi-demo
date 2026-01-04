# Noise that goes up
live_loop :first_noise do
  8.times do |n|
    play :c4 + (n + 1) * 2, release: 0.25, sustain: 0, attack: 0.25
    sleep 0.125
  end
  sleep 3
end

use_synth_defaults attack: 1.25, sustain: 0, release: 1.25, divisor: 8, depth: 20
use_synth :fm
live_loop :funny_noise do
  play_pattern_timed [:e3, :c3], 2
end

use_sample_defaults amp: 3
live_loop :p do
  2.times do |b|
    sample :drum_bass_hard
    sleep 0.25
  end
  
  sample :hat_snap
  sleep 0.25
  
  5.times do |b|
    sample :drum_bass_hard
    sleep 0.125
  end
  sleep 0.125
  
  sample :hat_snap
  sleep 0.5
end

live_loop :crow do
  sleep 2 * 0.25 + 0.25 + 5 * 0.125 + 0.125
  sample :misc_crow, amp: 5
  sleep 0.5
end
