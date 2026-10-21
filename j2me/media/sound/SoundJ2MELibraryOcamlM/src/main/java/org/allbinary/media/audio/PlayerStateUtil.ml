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
[@@@warning "-20"]
(* import javax.microedition.media.Player *)
(* import org.allbinary.string.CommonStrings *)

class playerStateUtil () =
  object
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable uNREALIZED : string = ""
    method uNREALIZED = uNREALIZED
    method set_uNREALIZED value' = uNREALIZED <- value'
    val mutable rEALIZED : string = ""
    method rEALIZED = rEALIZED
    method set_rEALIZED value' = rEALIZED <- value'
    val mutable pREFETCHED : string = ""
    method pREFETCHED = pREFETCHED
    method set_pREFETCHED value' = pREFETCHED <- value'
    val mutable sTARTED : string = ""
    method sTARTED = sTARTED
    method set_sTARTED value' = sTARTED <- value'
    val mutable cLOSED : string = ""
    method cLOSED = cLOSED
    method set_cLOSED value' = cLOSED <- value'
    

    method convert ((state : int)) : string =
        try
        begin
        if (state = (Obj.magic (java_call_static "Player.get_uNREALIZED" (Obj.repr ())))) then begin
            raise (Java_return (Obj.repr (uNREALIZED)))
        end else if (state = (Obj.magic (java_call_static "Player.get_rEALIZED" (Obj.repr ())))) then begin
            raise (Java_return (Obj.repr (rEALIZED)))
        end else if (state = (Obj.magic (java_call_static "Player.get_pREFETCHED" (Obj.repr ())))) then begin
            raise (Java_return (Obj.repr (pREFETCHED)))
        end else if (state = (Obj.magic (java_call_static "Player.get_sTARTED" (Obj.repr ())))) then begin
            raise (Java_return (Obj.repr (sTARTED)))
        end else if (state = (Obj.magic (java_call_static "Player.get_cLOSED" (Obj.repr ())))) then begin
            raise (Java_return (Obj.repr (cLOSED)))
        end;
        commonStrings#uNKNOWN
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        uNREALIZED <- "UNREALIZED";
        rEALIZED <- "REALIZED";
        pREFETCHED <- "PREFETCHED";
        sTARTED <- "STARTED";
        cLOSED <- "CLOSED";
        ()
      end
  end
let () = java_register_constructor "PlayerStateUtil" (fun arguments -> Obj.repr (new playerStateUtil (Obj.obj arguments)))

let instance = (new playerStateUtil ())
let get_instance () = instance
let () = java_register_static "PlayerStateUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PlayerStateUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


