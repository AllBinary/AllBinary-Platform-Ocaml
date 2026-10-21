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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)

class commonButtons () =
  object
    val mutable sTANDARD_BUTTON_SIZE : int = 0
    method sTANDARD_BUTTON_SIZE = sTANDARD_BUTTON_SIZE
    method set_sTANDARD_BUTTON_SIZE value' = sTANDARD_BUTTON_SIZE <- value'
    val mutable nORMAL_BUTTON : Obj.t = Obj.repr 0
    method nORMAL_BUTTON : 'r. 'r = Obj.magic nORMAL_BUTTON
    method set_nORMAL_BUTTON : 'v. 'v -> unit = fun value' -> nORMAL_BUTTON <- Obj.repr value'
    val mutable lARGE_BUTTON : Obj.t = Obj.repr 0
    method lARGE_BUTTON : 'r. 'r = Obj.magic lARGE_BUTTON
    method set_lARGE_BUTTON : 'v. 'v -> unit = fun value' -> lARGE_BUTTON <- Obj.repr value'
    

    initializer
      begin
        ();
        ();
        ();
        ();
        let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        let commonButtonSize : int ref = ref (128) in ();
        while (!commonButtonSize > 64) do
            let totalColumns : int ref = ref (((!displayInfo#getLastWidth ()) / !commonButtonSize)) in ();
            let totalRows : int ref = ref (((!displayInfo#getLastHeight ()) / !commonButtonSize)) in ();
            let max : int ref = ref (!totalColumns) in ();
            if (!totalRows > !max) then begin
                max := !totalRows
            end;
            if (!max > 9) then begin
                raise Java_break
            end;
            commonButtonSize := (!commonButtonSize asr 1)
        done;
        sTANDARD_BUTTON_SIZE <- !commonButtonSize;
        nORMAL_BUTTON <- Obj.repr ((Obj.obj (java_new "Rectangle" (Obj.repr ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO, sTANDARD_BUTTON_SIZE, sTANDARD_BUTTON_SIZE)))));
        lARGE_BUTTON <- Obj.repr ((Obj.obj (java_new "Rectangle" (Obj.repr ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO, (sTANDARD_BUTTON_SIZE lsl 1), (sTANDARD_BUTTON_SIZE lsl 1))))))
      end
  end [@@warning "-20"]
let () = java_register_constructor "CommonButtons" (fun arguments -> Obj.repr (new commonButtons (Obj.obj arguments)))

let instance = (new commonButtons ())
let get_instance () = instance
let () = java_register_static "CommonButtons.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CommonButtons.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


