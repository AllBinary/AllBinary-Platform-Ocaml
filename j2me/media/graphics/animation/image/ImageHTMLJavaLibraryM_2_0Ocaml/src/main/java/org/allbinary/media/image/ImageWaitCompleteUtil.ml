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
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.image.GameFeatureImageCacheFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.HashtableUtil *)
(* import org.microemu.device.playn.PlaynImage *)
(* import playn.core.CoreImage *)

class imageWaitCompleteUtil () =
  object (self)
    inherit ImageCompleteUtil.imageCompleteUtil ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable timeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeDelayHelper = timeDelayHelper
    method set_timeDelayHelper value' = timeDelayHelper <- value'
    val mutable allTimeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method allTimeDelayHelper = allTimeDelayHelper
    method set_allTimeDelayHelper value' = allTimeDelayHelper <- value'
    
    

    method waitForImage : 'any1. 'any1 * string -> unit = fun (image, (name : string)) ->
        let image = Obj.repr image in
        begin
        ignore (timeDelayHelper#setStartTimeTNT ());
        (self#waitForATime ((Obj.magic image), name, timeDelayHelper))
        end [@@warning "-7-20"]
    

    method handleTimeout ((name : string)) : unit =
        begin
        if (timeDelayHelper#isTimeTNT ()) then begin
            raise (Failure (("isReady: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: " ^ name)))
        end
        end [@@warning "-7"]
    

    method waitForATime : 'any1 'any3. 'any1 * string * 'any3 -> unit = fun (image, (name : string), timeDelayHelper_arg) ->
        let image = Obj.repr image in
        let timeDelayHelper_arg = Obj.repr timeDelayHelper_arg in
        begin
        let playnImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
        let playnCoreImage : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !playnImage)#getImage ())))) in ();
        while ((not ((Obj.magic !playnCoreImage)#isReady ())) || ((((Obj.magic !playnCoreImage)#width ()) + ((Obj.magic !playnCoreImage)#height ())) <= 0)) do
            if ((Obj.magic timeDelayHelper_arg)#isTimeTNT ()) then begin
                raise (Failure (("waitFor: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: " ^ name)))
            end
        done;
        if (not ((Obj.magic image)#isReady ())) then begin
            ignore ((Obj.magic image)#init (((Obj.magic image)#getImage ())))
        end
        end [@@warning "-7-20"]
    

    method waitForAll () : unit =
        begin
        ignore (allTimeDelayHelper#setStartTimeTNT ());
        let hashtable : Obj.t ref = ref ((Obj.repr ((GameFeatureImageCacheFactory.getInstance ())#getHashtableP ()))) in ();
        let objectArray : Obj.t array ref = ref (((HashtableUtil.getInstance ())#getKeysAsArray ((Obj.magic !hashtable)))) in ();
        let size : int ref = ref ((Array.length !objectArray)) in ();
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (("Image Total: " ^ java_string_of (Obj.repr (!size))), self, "waitForAll"))));
        for index = 0 to !size - 1 do
            (self#waitForATime ((Obj.magic ((Obj.magic !hashtable)#get (!objectArray.(index)))), (Obj.magic !objectArray.(index)), allTimeDelayHelper))
        done
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        timeDelayHelper <- ((new TimeDelayHelper.timeDelayHelper (18000)) :> TimeDelayHelper.timeDelayHelper);
        allTimeDelayHelper <- ((new TimeDelayHelper.timeDelayHelper (120000)) :> TimeDelayHelper.timeDelayHelper);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageWaitCompleteUtil" (fun arguments -> Obj.repr (new imageWaitCompleteUtil (Obj.obj arguments)))


