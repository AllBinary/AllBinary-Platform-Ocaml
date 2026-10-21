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
(* package org.allbinary.game.displayable.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import org.allbinary.string.CommonPhoneStrings *)


let getKeyName ((key : int)) : string =
        try
        begin
        let commonPhoneStrings : CommonPhoneStrings.commonPhoneStrings ref = ref (((CommonPhoneStrings.getInstance ()) :> CommonPhoneStrings.commonPhoneStrings)) in ();
        if (key = (Obj.magic (java_call_static "Canvas.get_uP" (Obj.repr ())))) then begin
            raise (Java_return (Obj.repr (!commonPhoneStrings#uP)))
        end else if (key = (Obj.magic (java_call_static "Canvas.get_dOWN" (Obj.repr ())))) then begin
            raise (Java_return (Obj.repr (!commonPhoneStrings#dOWN)))
        end else if (key = (Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))) then begin
            raise (Java_return (Obj.repr (!commonPhoneStrings#rIGHT)))
        end else if (key = (Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))) then begin
            raise (Java_return (Obj.repr (!commonPhoneStrings#lEFT)))
        end else if (key = (Obj.magic (java_call_static "Canvas.get_fIRE" (Obj.repr ())))) then begin
            raise (Java_return (Obj.repr (!commonPhoneStrings#fIRE)))
        end;
        "UNKNOWN KEY"
        end
        with Java_return value -> Obj.obj value

let () = java_register_static "CanvasUtil.getKeyName" (fun arguments -> Obj.repr (getKeyName (Obj.obj arguments)))
class canvasUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "CanvasUtil" (fun arguments -> Obj.repr (new canvasUtil (Obj.obj arguments)))


