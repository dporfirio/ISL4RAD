# Simple test with one goal.

import pddl.waterbot

labels

	delivered: [
		  predicate: agent_has,
		  params: [passenger, cup]
		 ]


endlabels

module

	st: [0: init, 1: delivered];

	[] 0 -> 1;

endmodule

options

	conditional_effects;

endoptions