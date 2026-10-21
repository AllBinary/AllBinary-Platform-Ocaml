(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.form.item *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.lcdui.Graphics *)

class virtual aBCustomItemInterface =
  object
    method virtual getMinimumWidth : unit -> int
    method virtual getMinimumHeight : unit -> int
    method virtual getLabel : unit -> string
    method virtual paintXY : 'any1 . 'any1 * int * int -> unit
    method virtual paintUnselected : 'any1 . 'any1 * int * int -> unit
  end


