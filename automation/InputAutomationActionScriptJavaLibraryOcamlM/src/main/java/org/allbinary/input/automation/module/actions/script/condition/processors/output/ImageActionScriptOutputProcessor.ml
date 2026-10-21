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
(* package org.allbinary.input.automation.module.actions.script.condition.processors.output *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.input.media.image.InputImageIOInterfaceFactory *)
(* import org.allbinary.input.media.image.InputImageType *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.media.image.io.ImageIOInterface *)
(* import org.allbinary.string.CommonStrings *)


let process : 'any1. 'any1 * int -> unit = fun (imageActionScriptOutputInterface, (frame : int)) ->
        let imageActionScriptOutputInterface = Obj.repr imageActionScriptOutputInterface in
        begin
        let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((Obj.magic !logUtil_arg)#putF (("Start - Processing at: " ^ (java_string_of (Obj.repr (Obj.magic imageActionScriptOutputInterface)))), "ImageActionScriptOutputProcessor", !commonStrings#pROCESS));
        let imageTypes : ImageTypes.imageTypes ref = ref ((((Obj.magic imageActionScriptOutputInterface)#getImageTypes ()) :> ImageTypes.imageTypes)) in ();
        let vector : BasicArrayList.basicArrayList ref = ref (((!imageTypes#getVector ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!vector#size ())) in ();
        for index = 0 to !size - 1 do
            let imageType : InputImageType.inputImageType ref = ref (((Obj.magic (!vector#get (index))) :> InputImageType.inputImageType)) in ();
            let imageIOInterface : ImageIOInterface.imageIOInterface ref = ref (((InputImageIOInterfaceFactory.getInstance (!imageType)) :> ImageIOInterface.imageIOInterface)) in ();
            ignore (!imageIOInterface#save (frame))
        done
        end [@@warning "-20"]

let () = java_register_static "ImageActionScriptOutputProcessor.process" (fun arguments -> Obj.repr (process (Obj.obj arguments)))
class imageActionScriptOutputProcessor () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageActionScriptOutputProcessor" (fun arguments -> Obj.repr (new imageActionScriptOutputProcessor (Obj.obj arguments)))


