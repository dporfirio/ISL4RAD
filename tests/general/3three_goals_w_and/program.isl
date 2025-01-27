# Simple test with three goals and an else ('default') conditional.
import pddl.general
labels

	go: [
		  predicate: entity_in,
		  params: [stretch, kitchen]
		 ],
	approach: [
				 predicate: agent_near,
				 params: [stretch, david]
	           ],
	ready: [
					predicate: entity_in,
					params: [david, kitchen]
					&
					predicate: entity_in,
					params: [countertop, home]
	              ],
	stop: [
			  predicate: entity_in,
			  params: [stretch, home]
	       ]


endlabels

module

	st: [0: init, 1: go, 2: approach, 3: stop];
	guard: [0: ready];

	[] 0 -> 1;
	[] 1 & guard=0 -> 2;
	[] 1 & guard=default -> 3;

endmodule

options

	conditional_effects;

endoptions