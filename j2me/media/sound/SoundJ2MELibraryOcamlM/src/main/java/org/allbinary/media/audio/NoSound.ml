(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.media.audio *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringUtil *)

class noSound () =
  object (self)
    inherit Sound.sound ((StringUtil.getInstance ())#eMPTY_STRING)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setPlayerP ((NoPlayer.get_nO_PLAYER ())))
      end
  end
let () = java_register_constructor "NoSound" (fun arguments -> Obj.repr (new noSound (Obj.obj arguments)))

let instance = (new noSound ())
let get_instance () = instance
let () = java_register_static "NoSound.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "NoSound.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


