(** Commands that players would enter during gameplay*)
type command =
  | Place of string
  | Draw
  | PlaceDos

type color_command =
  | Red
  | Yellow
  | Blue
  | Green

(** User did not provide a command*)
exception Empty

(** Command user entered was not a valid command*)
exception Malformed

(** [parse str] parse user input into a command. If the string is empty
    then the exception [Empty] will be thrown. If the input is not a
    valid command, [Malformed] will be thrown.*)
val parse : string -> command

val parse_colors : string -> color_command

val parse_pile : string -> int
