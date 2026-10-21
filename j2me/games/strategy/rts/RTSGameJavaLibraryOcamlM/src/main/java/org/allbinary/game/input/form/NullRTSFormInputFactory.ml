(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.input.form *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.identification.BasicGroupFactory *)

let sINGLETON : RTSFormInput.rTSFormInput = ((new RTSFormInput.rTSFormInput ((BasicGroupFactory.getInstance ())#nONE_ARRAY)) :> RTSFormInput.rTSFormInput)
let get_sINGLETON () = sINGLETON
let () = java_register_static "NullRTSFormInputFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () : RTSFormInput.rTSFormInput =
        begin
        (sINGLETON :> RTSFormInput.rTSFormInput)
        end

let () = java_register_static "NullRTSFormInputFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class nullRTSFormInputFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullRTSFormInputFactory" (fun arguments -> Obj.repr (new nullRTSFormInputFactory (Obj.obj arguments)))


