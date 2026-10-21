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
(* package tags *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class commandTag () =
  object
    inherit CustomTagSupport.customTagSupport ()
    val mutable tagStrings : TagStrings.tagStrings = (Obj.magic 0)
    method tagStrings = tagStrings
    method set_tagStrings value' = tagStrings <- value'
    val mutable command : string = ""
    method command = command
    method set_command value' = command <- value'
    
    

    method setCommand ((command_arg : string)) : unit =
        begin
        command <- command_arg
        end [@@warning "-7"]
    

    method getCommand () : string =
        begin
        command
        end [@@warning "-7"]

    initializer
      begin
        tagStrings <- ((TagStrings.getInstance ()) :> TagStrings.tagStrings);
        command <- "";
        ();
        ()
      end
  end
let () = java_register_constructor "CommandTag" (fun arguments -> Obj.repr (new commandTag (Obj.obj arguments)))


