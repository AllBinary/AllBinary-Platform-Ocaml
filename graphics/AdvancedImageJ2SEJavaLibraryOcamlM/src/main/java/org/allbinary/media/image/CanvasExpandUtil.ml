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
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringUtil *)

class canvasExpandUtil () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable stringUtil : StringUtil.stringUtil = (Obj.magic 0)
    method stringUtil = stringUtil
    method set_stringUtil value' = stringUtil <- value'
    

    method process : 'any1 'any4. 'any1 * int * int * 'any4 -> unit = fun (imageProcessorInput, (increaseX : int), (increaseY : int), visitor) ->
        let imageProcessorInput = Obj.repr imageProcessorInput in
        let visitor = Obj.repr visitor in
        begin
        let imageUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "ImageUtil.getInstance" (Obj.repr ()))))) in ();
        let bufferedImageArray : Obj.t ref = ref ((Obj.repr ((Obj.magic imageProcessorInput)#getBufferedImageArray ()))) in ();
        let subBufferedImageArray : Obj.t ref = ref ((Obj.repr (Array.make ((Array.length (Obj.magic !bufferedImageArray))) (Obj.magic 0)))) in ();
        let size : int ref = ref ((Array.length (Obj.magic !bufferedImageArray))) in ();
        let bufferedImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = 0 to !size - 1 do
            bufferedImage := Obj.repr ((Obj.magic !bufferedImageArray).(index));
            (Obj.magic !subBufferedImageArray).(index) <- ((Obj.magic !imageUtil)#createBufferedImage ((Obj.magic !bufferedImage), (((Obj.magic !bufferedImage)#getWidth ()) + increaseX), (((Obj.magic !bufferedImage)#getHeight ()) + increaseY), false));
            ignore ((Obj.magic visitor)#visit ((Obj.magic !subBufferedImageArray).(index), stringUtil#eMPTY_STRING, index))
        done
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        stringUtil <- ((StringUtil.getInstance ()) :> StringUtil.stringUtil);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "CanvasExpandUtil" (fun arguments -> Obj.repr (new canvasExpandUtil (Obj.obj arguments)))

let instance = (new canvasExpandUtil ())
let get_instance () = instance
let () = java_register_static "CanvasExpandUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CanvasExpandUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


