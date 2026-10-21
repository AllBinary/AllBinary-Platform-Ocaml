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
(* package org.allbinary.logic.communication.log.config.type *)

open Allbinary_java [@@warning "-33"]

class logConfigType ((name_arg : string), (description_arg : string)) =
  object
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable description : string = ""
    method description = description
    method set_description value' = description <- value'
    
    

    method getName () : string =
        begin
        name
        end
    

    method getDescription () : string =
        begin
        description
        end
    

    method setName ((value : string)) : unit =
        begin
        name <- value
        end
    

    method setDescription ((value : string)) : unit =
        begin
        description <- value
        end

    initializer
      begin
        ();
        ();
        ();
        name <- name_arg;
        description <- description_arg
      end
  end
let () = java_register_constructor "LogConfigType" (fun arguments -> Obj.repr (new logConfigType (Obj.obj arguments)))


