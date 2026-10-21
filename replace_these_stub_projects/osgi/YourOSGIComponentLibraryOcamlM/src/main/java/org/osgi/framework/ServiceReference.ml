(* Generated Code Do Not Modify *)
(* package org.osgi.framework *)

open Allbinary_java [@@warning "-33"]

class virtual serviceReference =
  object
    method virtual getProperty : string -> Obj.t
    method virtual getPropertyKeys : unit -> string array
  end


