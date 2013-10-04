cricketers={:sachin_tendulkar => 'batsman',
 			:zaheer_khan => 'bowler',
 			:m_s_dhoni => 'wicket_keeper'
			}

cricketers.each do |x,y|
	puts " #{x} is a #{y}"
end