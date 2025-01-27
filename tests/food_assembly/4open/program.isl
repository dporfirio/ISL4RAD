import pddl.food_assembly
labels

    moving: [
        predicate: entity_in,
        params: [stretch, kitchen]
    ],

    opening: [
        predicate: is_open,
        params: [fridge]
    ]

endlabels

module

    st: [0: init, 1: moving, 2: opening];
    [] 0 -> 1;
    [] 1 -> 2;

endmodule

options

	conditional_effects;

endoptions