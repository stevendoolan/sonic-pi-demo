use_bpm 120
use_synth :prophet

live_loop :n do
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
