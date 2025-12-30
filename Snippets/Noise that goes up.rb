# Noise that goes up
8.times do |n|
  play :c4 + (n + 1) * 2, release: 0.25, sustain: 0, attack: 0.25
  sleep 0.125
end
