(*

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringUtil *)

class playerType ((name_arg : string), (value : int)) =
  object (self)
    val mutable id : int = 0
    method id = id
    method set_id value' = id <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    
    

    method getId () : int =
        begin
        id
        end
    

    method getName () : string =
        begin
        name
        end
    

    method toString () : string =
        begin
        (self#getName ())
        end

    initializer
      begin
        ();
        name <- (StringUtil.getInstance ())#eMPTY_STRING;
        ();
        name <- name_arg;
        id <- value
      end
  end
let () = java_register_constructor "PlayerType" (fun arguments -> Obj.repr (new playerType (Obj.obj arguments)))


