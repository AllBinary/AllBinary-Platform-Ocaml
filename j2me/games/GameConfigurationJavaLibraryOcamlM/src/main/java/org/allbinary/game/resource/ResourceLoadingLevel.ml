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
(* package org.allbinary.game.resource *)

open Allbinary_java [@@warning "-33"]

class resourceLoadingLevel ((name_arg : string), (level_arg : int)) =
  object
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable level : int = 0
    method level = level
    method set_level value' = level <- value'
    
    

    method getLevel () : int =
        begin
        level
        end
    

    method getName () : string =
        begin
        name
        end

    initializer
      begin
        ();
        ();
        ();
        name <- name_arg;
        level <- level_arg
      end
  end
let () = java_register_constructor "ResourceLoadingLevel" (fun arguments -> Obj.repr (new resourceLoadingLevel (Obj.obj arguments)))


