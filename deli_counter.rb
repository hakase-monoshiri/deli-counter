def line(katz_deli)
    if katz_deli.size == 0
        puts "The line is currently empty."
    else
        callout = "The line is currently:"
        katz_deli.each do |customer|
            number = katz_deli.index(customer) + 1
            name = customer
            callout << " #{number}. #{name}"
        end
        puts callout
    end
end

def take_a_number(katz_deli, customer)
    katz_deli << customer
    puts "Welcome, #{customer}. You are number #{katz_deli.index(customer) + 1} in line."
end

def now_serving(katz_deli)
    if katz_deli.size == 0
        puts "There is nobody waiting to be served!"
    else
        current_customer = katz_deli.shift
        puts "Currently serving #{current_customer}."
    end
end
