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
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class formUtil () =
  object
    

    method createFormRectangle : 'return. unit -> 'return = fun () ->
        begin
        let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        let pointFactory : PointFactory.pointFactory ref = ref (((PointFactory.getInstance ()) :> PointFactory.pointFactory)) in ();
        let rectangle : Rectangle.rectangle ref = ref (((new Rectangle.rectangle ((!pointFactory#createXY (30, 10)), ((!displayInfo#getLastWidth ()) - 30), ((!displayInfo#getLastHeight ()) - 35))) :> Rectangle.rectangle)) in ();
        (Obj.magic (!rectangle))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "FormUtil" (fun arguments -> Obj.repr (new formUtil (Obj.obj arguments)))

let instance = (new formUtil ())
let get_instance () = instance
let () = java_register_static "FormUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (instance))
        end
let () = java_register_static "FormUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


