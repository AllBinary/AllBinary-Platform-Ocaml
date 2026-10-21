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
(* package org.allbinary.media.audio *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.media.Control *)
(* import org.allbinary.logic.string.StringUtil *)

class noPlayer () =
  object
    inherit BasicPlayer.basicPlayer ()
    
    

    method close () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getContentType () : string =
        begin
        (StringUtil.getInstance ())#nULL_STRING
        end [@@warning "-7"]
    

    method getControl : 'return. string -> 'return = fun ((_controlType : string)) ->
        begin
        (Obj.magic ((new NullControl.nullControl ())))
        end [@@warning "-7"]
    

    method getControls : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Array.make (0) (Obj.magic 0))))
        end [@@warning "-7"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "NoPlayer" (fun arguments -> Obj.repr (new noPlayer (Obj.obj arguments)))

let nO_PLAYER = (new noPlayer ())
let get_nO_PLAYER () = nO_PLAYER
let () = java_register_static "NoPlayer.get_nO_PLAYER" (fun _ -> Obj.repr (get_nO_PLAYER ()))


