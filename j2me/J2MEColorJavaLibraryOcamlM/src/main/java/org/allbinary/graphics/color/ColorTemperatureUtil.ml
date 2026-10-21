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
(* package org.allbinary.graphics.color *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class colorTemperatureUtil () =
  object
    val mutable basicColorFactory : BasicColorFactory.basicColorFactory = (Obj.magic 0)
    method basicColorFactory = basicColorFactory
    method set_basicColorFactory value' = basicColorFactory <- value'
    

    method getBasicColor ((thirdTemp : int)) : BasicColor.basicColor =
        begin
        let basicColor : BasicColor.basicColor ref = ref ((basicColorFactory#rED :> BasicColor.basicColor)) in ();
        if (thirdTemp > 3700) then begin
            basicColor := basicColorFactory#pURPLE
        end else if (thirdTemp > 3200) then begin
            basicColor := basicColorFactory#bLUE
        end else if (thirdTemp > 2700) then begin
            basicColor := basicColorFactory#pUCE
        end else if (thirdTemp > 2200) then begin
            basicColor := basicColorFactory#wHITE
        end else if (thirdTemp > 1700) then begin
            basicColor := basicColorFactory#gREEN
        end else if (thirdTemp > 1200) then begin
            basicColor := basicColorFactory#yELLOW
        end else if (thirdTemp > 700) then begin
            basicColor := basicColorFactory#oRANGE
        end;
        (!basicColor :> BasicColor.basicColor)
        end

    initializer
      begin
        basicColorFactory <- ((BasicColorFactory.getInstance ()) :> BasicColorFactory.basicColorFactory);
        ()
      end
  end
let () = java_register_constructor "ColorTemperatureUtil" (fun arguments -> Obj.repr (new colorTemperatureUtil (Obj.obj arguments)))

let instance = (new colorTemperatureUtil ())
let get_instance () = instance
let () = java_register_static "ColorTemperatureUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ColorTemperatureUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


