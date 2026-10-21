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
(* package org.allbinary.media.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.microemu.device.playn.PlaynImage *)
(* import playn.core.CoreImage *)

class imageCompleteUtil () =
  object (self)
    val mutable iSREADY : string = ""
    method iSREADY = iSREADY
    method set_iSREADY value' = iSREADY <- value'
    val mutable cOMPLETE : string = ""
    method cOMPLETE = cOMPLETE
    method set_cOMPLETE value' = cOMPLETE <- value'
    

    method waitForImage : 'any1. 'any1 * string -> unit = fun (_image, (_name : string)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method isReady : 'any1 'any3. 'any1 * string * 'any3 -> bool = fun (image, (name : string), _timeDelayHelper) ->
        let image = Obj.repr image in
        try
        begin
        let playnImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
        let playnCoreImage : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !playnImage)#getImage ())))) in ();
        if ((not ((Obj.magic !playnCoreImage)#isReady ())) || ((((Obj.magic !playnCoreImage)#width ()) + ((Obj.magic !playnCoreImage)#height ())) <= 0)) then begin
            (self#handleTimeout (name));
            raise (Java_return (Obj.repr (false)))
        end;
        if (not ((Obj.magic image)#isReady ())) then begin
            ignore ((Obj.magic image)#init (((Obj.magic image)#getImage ())));
            if (not ((Obj.magic image)#isReady ())) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (("Waiting for Not Ready Image: " ^ ((Obj.magic image)#getName ())), self, iSREADY))))
            end
        end;
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((cOMPLETE ^ ((Obj.magic image)#getName ())), self, !commonStrings#sUCCESS))));
        true
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method handleTimeout ((_name : string)) : unit =
        begin
        ()
        end
    

    method waitForAll () : unit =
        begin
        ()
        end

    initializer
      begin
        iSREADY <- "isReady";
        cOMPLETE <- "Image loading complete for: ";
        ()
      end
  end
let () = java_register_constructor "ImageCompleteUtil" (fun arguments -> Obj.repr (new imageCompleteUtil (Obj.obj arguments)))

let instance = (new imageCompleteUtil ())
let get_instance () = instance
let () = java_register_static "ImageCompleteUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageCompleteUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


