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
(* import org.allbinary.image.GameFeatureImageCacheFactory *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.util.HashtableUtil *)
(* import org.microemu.device.playn.PlaynImage *)

class imageCompleteUtil () =
  object (self)
    val mutable timeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeDelayHelper = timeDelayHelper
    method set_timeDelayHelper value' = timeDelayHelper <- value'
    val mutable allTimeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method allTimeDelayHelper = allTimeDelayHelper
    method set_allTimeDelayHelper value' = allTimeDelayHelper <- value'
    

    method waitForImage : 'any1. 'any1 * string -> unit = fun (image, (name : string)) ->
        let image = Obj.repr image in
        begin
        ignore (timeDelayHelper#setStartTime ());
        (self#waitForATime ((Obj.magic image), name, timeDelayHelper))
        end [@@warning "-20"]
    

    method isReady : 'any1 'any3. 'any1 * string * 'any3 -> bool = fun (image, (name : string), timeDelayHelper_arg) ->
        let image = Obj.repr image in
        let timeDelayHelper_arg = Obj.repr timeDelayHelper_arg in
        try
        begin
        let playnImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
        if ((not (((Obj.magic !playnImage)#getImage ())#isReady ())) && (((((Obj.magic !playnImage)#getImage ())#width ()) + (((Obj.magic !playnImage)#getImage ())#height ())) == 0)) then begin
            if ((Obj.magic timeDelayHelper_arg)#isTime ()) then begin
                raise (Failure (("isReady: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: " ^ name)))
            end;
            raise (Java_return (Obj.repr (false)))
        end;
        true
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method waitForATime : 'any1 'any3. 'any1 * string * 'any3 -> unit = fun (image, (name : string), timeDelayHelper_arg) ->
        let image = Obj.repr image in
        let timeDelayHelper_arg = Obj.repr timeDelayHelper_arg in
        begin
        let playnImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
        while ((not (((Obj.magic !playnImage)#getImage ())#isReady ())) && (((((Obj.magic !playnImage)#getImage ())#width ()) + (((Obj.magic !playnImage)#getImage ())#height ())) == 0)) do
            if ((Obj.magic timeDelayHelper_arg)#isTime ()) then begin
                raise (Failure (("waitFor: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: " ^ name)))
            end
        done
        end [@@warning "-20"]
    

    method waitForAll () : unit =
        begin
        ignore (allTimeDelayHelper#setStartTime ());
        let hashtable : java_hashtable ref = ref ((((GameFeatureImageCacheFactory.getInstance ())#getHashtable ()) :> java_hashtable)) in ();
        let objectArray : Obj.t array ref = ref (((HashtableUtil.getInstance ())#getKeysAsArray (!hashtable))) in ();
        let size : int ref = ref ((Array.length !objectArray)) in ();
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (("Total: " ^ java_string_of (Obj.repr (!size))), self, "waitForAll"))));
        for index = 0 to !size - 1 do
            (self#waitForATime ((Obj.magic (!hashtable#get (!objectArray.(index)))), (Obj.magic !objectArray.(index)), allTimeDelayHelper))
        done
        end

    initializer
      begin
        timeDelayHelper <- ((new TimeDelayHelper.timeDelayHelper (18000)) :> TimeDelayHelper.timeDelayHelper);
        allTimeDelayHelper <- ((new TimeDelayHelper.timeDelayHelper (120000)) :> TimeDelayHelper.timeDelayHelper);
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


