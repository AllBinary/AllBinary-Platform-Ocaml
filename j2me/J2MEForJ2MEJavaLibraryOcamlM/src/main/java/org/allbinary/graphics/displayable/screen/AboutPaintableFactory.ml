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
(* package org.allbinary.graphics.displayable.screen *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.paint.AboutPaintable *)
(* import org.allbinary.graphics.paint.NullPaintable *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.logic.string.StringUtil *)

class aboutPaintableFactory () =
  object
    val mutable paintableArray : Paintable.paintable array = (Obj.magic 0)
    method paintableArray = paintableArray
    method set_paintableArray value' = paintableArray <- value'
    

    initializer
      begin
        paintableArray <- [| (NullPaintable.getInstance ()) |];
        ();
        let iNFO : string array ref = ref ([| "Built with the"; "AllBinary Platform"; (StringUtil.getInstance ())#eMPTY_STRING; "Comments or Questions:"; "support@allbinary.com" |]) in ();
        let dEVELOPERS : string array ref = ref ([| "Developed By:"; "Travis Berthelot" |]) in ();
        paintableArray <- ((AboutPaintable.getInstance (!iNFO, !dEVELOPERS))#getPaintableArrayInstance ())
      end
  end
let () = java_register_constructor "AboutPaintableFactory" (fun arguments -> Obj.repr (new aboutPaintableFactory (Obj.obj arguments)))

let instance = (new aboutPaintableFactory ())
let get_instance () = instance
let () = java_register_static "AboutPaintableFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AboutPaintableFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


