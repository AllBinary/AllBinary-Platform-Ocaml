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
(* package org.allbinary.game.paint *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.logic.system.os.GenericOperatingSystem *)
(* import org.allbinary.logic.system.os.OperatingSystemFactory *)

class colorFillPaintableFactory () =
  object
    

    method getInstance : 'any1 'return. 'any1 * bool -> 'return = fun (basicColor, (_forThreedCanvas : bool)) ->
        let basicColor = Obj.repr basicColor in
        try
        begin
        let operatingSystem : GenericOperatingSystem.genericOperatingSystem ref = ref ((((Obj.magic (java_call_static "OperatingSystemFactory.getInstance" (Obj.repr ())))#getOperatingSystemInstance ()) :> GenericOperatingSystem.genericOperatingSystem)) in ();
        if (!operatingSystem#isOverScan ()) then begin
            raise (Java_return (Obj.repr ((new OverScanColorFillPaintable.overScanColorFillPaintable ((Obj.magic basicColor))))))
        end else begin
            raise (Java_return (Obj.repr ((new ColorFillPaintable.colorFillPaintable ((Obj.magic basicColor))))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ColorFillPaintableFactory" (fun arguments -> Obj.repr (new colorFillPaintableFactory (Obj.obj arguments)))

let instance = (new colorFillPaintableFactory ())
let get_instance () = instance
let () = java_register_static "ColorFillPaintableFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (instance))
        end
let () = java_register_static "ColorFillPaintableFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


