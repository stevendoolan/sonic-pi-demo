# Droning beat

use_bpm 120

live_loop :y do
  with_fx :bitcrusher do
    use_synth :dsaw
    play chord(:e4, :major).tick, amp: 3, release: 1
    sleep 1
  end
end

live_loop :x do
  sample :bass_voxy_c, rate: 1, release: 8, amp: 1.5
  sleep 8
  
  sample :bass_voxy_c, rate: 0.8, release: 8, amp: 2
  sleep 8
end

live_loop :n do
  use_synth :prophet
  play :c1, amp: 2, release: 8, cutoff: 80, res: 0.5
  sleep 8
end

live_loop :p do
  8.times do |b|
    if b % 2 == 1
      sample :drum_bass_hard, amp: 3
    else
      sample :drum_bass_soft, amp: 2
    end
    
    if b == 3
      sample :hat_gump
    elsif b == 7
      sample :hat_zan
    end
    
    sleep 1
  end
end
