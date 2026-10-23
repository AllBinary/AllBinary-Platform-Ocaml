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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

class gameKey ((key : int), (name : string)) =
  object
    inherit Input.input (key, name) as super
    
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("GameKey "))#append ((super#toString ())))))
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "GameKey" (fun arguments -> Obj.repr (new gameKey (Obj.obj arguments)))

let nULL_GAME_KEY = (new gameKey ((-1), (StringUtil.getInstance ())#nULL_STRING))
let get_nULL_GAME_KEY () = nULL_GAME_KEY
let () = java_register_static "GameKey.get_nULL_GAME_KEY" (fun _ -> Obj.repr (get_nULL_GAME_KEY ()))


