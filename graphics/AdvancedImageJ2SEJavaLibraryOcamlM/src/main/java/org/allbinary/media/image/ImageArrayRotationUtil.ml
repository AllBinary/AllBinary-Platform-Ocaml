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
(* package org.allbinary.media.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.image.BufferedImage *)
(* import java.io.IOException *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class imageArrayRotationUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable tOTAL_ANGLE : string = ""
    method tOTAL_ANGLE = tOTAL_ANGLE
    method set_tOTAL_ANGLE value' = tOTAL_ANGLE <- value'
    

    method process : 'any1 'any3. 'any1 * string * 'any3 -> unit = fun (imageProcessorInput, (input : string), visitor) ->
        let imageProcessorInput = Obj.repr imageProcessorInput in
        let visitor = Obj.repr visitor in
        begin
        let totalAngle : int ref = ref ((Obj.magic 0)) in ();
        if (input = commonStrings#uP) then begin
            totalAngle := (string_of_int ((-90)))
        end else if (input = commonStrings#dOWN) then begin
            totalAngle := (string_of_int (90))
        end else begin
            totalAngle := (string_of_int (input))
        end;
        let generatedBufferedImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let bufferedImageArray : Obj.t ref = ref ((Obj.repr ((Obj.magic imageProcessorInput)#getBufferedImageArray ()))) in ();
        for index = 0 to (Array.length (Obj.magic !bufferedImageArray)) - 1 do
            ignore ((Obj.magic logUtil)#putF ((tOTAL_ANGLE ^ java_string_of (Obj.repr (!totalAngle))), self, commonStrings#rUN));
            generatedBufferedImage := Obj.repr (((ImageJ2SERotationUtil.getInstance ())#getRotatedImage ((Obj.magic !bufferedImageArray).(index), !totalAngle)));
            ignore ((Obj.magic visitor)#visit ((Obj.magic !generatedBufferedImage), input, index))
        done
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        tOTAL_ANGLE <- "totalAngle: ";
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageArrayRotationUtil" (fun arguments -> Obj.repr (new imageArrayRotationUtil (Obj.obj arguments)))

let instance = (new imageArrayRotationUtil ())
let get_instance () = instance
let () = java_register_static "ImageArrayRotationUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageArrayRotationUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


