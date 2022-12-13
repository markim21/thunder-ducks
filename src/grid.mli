open Graphics
open Shapes
open State

(**[make_grid m n] creates a grid with dimensions [m] rows and [n] columns*)
val make_grid : int -> int -> grid

(**[draw_square y x square grid] draws a square on the grid 
    white if the square is dead, and black if the square is dead.*)
val draw_square : int -> int -> square -> grid -> unit

(**[init_grid grid] starts the game given the initial [grid] and draws to the screen*)
val init_grid : grid -> unit

(*[update_grid grid] draws the given [grid] to the screen*)
val update_grid : grid -> unit

(**[change_grid grid m n] updates the square at [m],[n] in the 
    square array array of [grid] by toggling that square's alive status. 
    If the square at [m] row and [n] column is alive, it will be come dead,
    and vice versa.*)
val change_grid : grid -> int -> int -> unit

(*[listen_square grid] is the game loop that updates the game grid 
   based on user's mouse click.*)
val listen_square : grid -> grid 

(**[shape_action grid x y shape] adds [shape] to [grid], updates [grid] and
    the screen, and returns to the game loop.*)
val shape_action : grid -> int -> int -> shape -> grid
