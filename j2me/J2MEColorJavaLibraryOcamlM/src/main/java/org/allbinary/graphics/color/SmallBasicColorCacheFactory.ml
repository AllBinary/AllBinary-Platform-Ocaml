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
(* import org.allbinary.logic.string.StringUtil *)

class smallBasicColorCacheFactory () =
  object (self)
    val mutable sIZE : int = 0
    method sIZE = sIZE
    method set_sIZE value' = sIZE <- value'
    val mutable iNDEX_TO_COLOR : int array = (Obj.magic 0)
    method iNDEX_TO_COLOR = iNDEX_TO_COLOR
    method set_iNDEX_TO_COLOR value' = iNDEX_TO_COLOR <- value'
    val mutable bASIC_COLOR_ARRAY : BasicColor.basicColor array = (Obj.magic 0)
    method bASIC_COLOR_ARRAY = bASIC_COLOR_ARRAY
    method set_bASIC_COLOR_ARRAY value' = bASIC_COLOR_ARRAY <- value'
    val mutable colorIndex : int = 0
    method colorIndex = colorIndex
    method set_colorIndex value' = colorIndex <- value'
    
    

    method add : 'any1. 'any1 -> unit = fun (basicDefaultColor) ->
        let basicDefaultColor = Obj.repr basicDefaultColor in
        begin
        bASIC_COLOR_ARRAY.(colorIndex) <- ((Obj.magic basicDefaultColor) :> BasicColor.basicColor);
        iNDEX_TO_COLOR.(colorIndex) <- ((Obj.magic basicDefaultColor)#intValue ());
        colorIndex <- colorIndex + 1
        end [@@warning "-20"]
    

    method getAndOrCreate ((colorAsInt : int)) : BasicColor.basicColor =
        try
        begin
        let basicColor : BasicColor.basicColor ref = ref (((Obj.magic 0) :> BasicColor.basicColor)) in ();
        for index = 0 to sIZE - 1 do
            if (iNDEX_TO_COLOR.(index) = colorAsInt) then begin
                raise (Java_return (Obj.repr (bASIC_COLOR_ARRAY.(index))))
            end
        done;
        let aLPHA_MASK : int ref = ref (0xFF000000) in ();
        basicColor := ((BasicColorFactory.getInstance ())#createInstanceAN ((colorAsInt land !aLPHA_MASK), (colorAsInt land 0x00FFFFFF), (StringUtil.getInstance ())#eMPTY_STRING));
        (self#add (!basicColor));
        (!basicColor :> BasicColor.basicColor)
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        sIZE <- 255;
        iNDEX_TO_COLOR <- (Array.make (sIZE) 0);
        bASIC_COLOR_ARRAY <- (Array.make (sIZE) (Obj.magic 0));
        colorIndex <- 0;
        ();
        ()
      end
  end
let () = java_register_constructor "SmallBasicColorCacheFactory" (fun arguments -> Obj.repr (new smallBasicColorCacheFactory (Obj.obj arguments)))

let instance = (new smallBasicColorCacheFactory ())
let get_instance () = instance
let () = java_register_static "SmallBasicColorCacheFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "SmallBasicColorCacheFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


