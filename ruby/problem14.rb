# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.
def get_n_chains(orig_start, last)
    start = orig_start
    max = 0
    chain = 0
    current_chain = 0;
    loop do
        if start == last - 1 
            break
        end
        current_elem = start
        chain = 0
        loop do
            if current_elem % 2 == 0
                current_elem = current_elem/2
                chain += 1
                if current_elem == 1
                    break
                end
            else
                current_elem = (3*current_elem) + 1
                chain += 1
            end
        end
        if current_chain < chain
            current_chain = chain
            max = start 
        end
        start = start - 1
    end
    return max, current_chain
end

a, b, c, d, e, f, g= [
    Thread.new{get_n_chains(1000000, 850000)},
    Thread.new{get_n_chains(849999, 700000)},
    Thread.new{get_n_chains(699999, 550000)},
    Thread.new{get_n_chains(549999, 400000)},
    Thread.new{get_n_chains(399999, 250000)},
    Thread.new{get_n_chains(249999, 100000)},
    Thread.new{get_n_chains(99999, 10)},

].map(&:join).map(&:value)
puts"#{[a, b, c, d, e, f, g][1].max}"
