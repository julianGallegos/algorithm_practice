
#create a pez dispenser to display a stack


class Pez

	attr_reader :flavor

	def initialize(flavor)
		@flavor = flavor
	end

end


class Pez_Dispenser

	attr_reader :pez_holder

	def initialize
		@pez_holder = []
	end

	def add_pezz(flavor)
		@pez_holder << Pez.new(flavor)
	end
 
	def eat_pez
		p "You ate a #{@pez_holder.pop.flavor} piece of pez"
	end

	def peek_at_next_pez
		p @pez_holder.last.flavor
	end

end


my_pez = Pez_Dispenser.new

my_pez.add_pezz("yellow")
my_pez.add_pezz("pink")
my_pez.add_pezz("red")
my_pez.add_pezz("orange")
my_pez.add_pezz("blue")

my_pez.peek_at_next_pez

my_pez.eat_pez

my_pez.
