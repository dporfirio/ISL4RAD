# Simple test with one goal.
import pddl.food_assembly
labels

	plate: [
		  predicate: object_at,
		  params: [plate, kitchen_table]
		  &
		  predicate: object_at,
		  params: [plate, dining_table]
		 ]


endlabels

module

	st: [0: init, 1: plate];

	[] 0 -> 1;

endmodule

options

	conditional_effects;

endoptions