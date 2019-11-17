module CurrentMonthHelper
  def generate_calendar
    @now = Date.today

    month_day = 1..@now.end_of_month.day
    # i.each_slice(7) {|n| p n.join(" ")} 
    calendar = []
    weeks = 1
    month_day.each_with_index do |n, i|
      day_of_the_week.each do |week|
        if week == day_of_the_week[current_day(incriment: i)]
          if n < 10 #[day_of_the_week[current_day(incriment: i)], n] 
            # REF:n == 1, n == 2は指定しない
            # 1週目の土曜日までの条件分岐をとる
            if n == 1
              calendar <<  "  #{n}"
            else
              calendar <<  " #{n}"
            end
          else
           calendar << n
          end
          calendar << "\n" if week == 'Sa'
          break
        else
          if n == 1
            calendar << "  #{nil}"
          end
        end
      end
    end
    calendar
  end

  def current_day(incriment: 0)
    (@now.beginning_of_month + incriment).wday
  end

  def day_of_the_week
    [ 'Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa' ]
  end

  def view_calendar
    p @now.strftime('%b %Y')
    p day_of_the_week.join(" ")
    p generate_calendar.join(" ").split("\n").map{|week| puts week}.compact
  end
end
