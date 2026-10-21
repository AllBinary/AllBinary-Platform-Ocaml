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
(* package org.allbinary.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.InputStream *)
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.NullImage *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.data.resource.ResourceUtil *)
(* import org.allbinary.game.gd.resource.GDResources *)
(* import org.allbinary.logic.ABSystemWrapper *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.system.Memory *)

class imageCache () =
  object (self)
    inherit ImageCacheBase.imageCacheBase ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable systemWrapper : ABSystemWrapper.aBSystemWrapper = (Obj.magic 0)
    method systemWrapper = systemWrapper
    method set_systemWrapper value' = systemWrapper <- value'
    val mutable tsUtil : Obj.t = Obj.repr 0
    method tsUtil : 'r. 'r = Obj.magic tsUtil
    method set_tsUtil : 'v. 'v -> unit = fun value' -> tsUtil <- Obj.repr value'
    
    

    (* Java overload get(String, INT, INT) is not converted: OCaml has one method per name *)
    

    method get : 'any1 'return. 'any1 -> 'return = fun (key) ->
        let key = Obj.repr key in
        begin
        let resourceUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ()))))) in ();
        let resourceId : int ref = ref (((Obj.magic !resourceUtil)#getResourceId ((Obj.magic key)))) in ();
        let image : Obj.t ref = ref ((Obj.repr (self#getImage (!resourceId)))) in ();
        if ((Obj.repr (Obj.magic !image)) == (Obj.repr (NullImage.get_nULL_IMAGE ()))) then begin
            let inputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            (try
                ignore ((Obj.magic logUtil)#putF ((Memory.getInfo ()), self, commonStrings#gET));
                image := Obj.repr ((self#createImage (key, (Obj.magic !inputStream))))
            with e -> begin
                ignore ((Obj.magic logUtil)#put ("Exception: Trying Again After GC", self, commonStrings#gET, e));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("InputStream: "))#append ((java_string_of (Obj.repr (Obj.magic !inputStream))))))), self, commonStrings#gET));
                ignore ((Obj.magic tsUtil)#gc ());
                ignore ((Obj.magic tsUtil)#gc ());
                ignore ((Obj.magic logUtil)#putF ((Memory.getInfo ()), self, commonStrings#gET));
                ignore (Unix.sleepf (Float.of_int (100) /. 1000.0));
                image := Obj.repr ((self#createImage (key, (Obj.magic !inputStream))))
            end);
            ignore (hashtable#put (!resourceId, (Obj.magic !image)))
        end;
        (Obj.magic ((Obj.magic !image)))
        end [@@warning "-7"]
    

    method getIndex : 'any1. 'any1 -> int = fun (key) ->
        let key = Obj.repr key in
        try
        begin
        let gdResources : GDResources.gDResources ref = ref (((GDResources.getInstance ()) :> GDResources.gDResources)) in ();
        let resourceStringArray : string array ref = ref (!gdResources#resourceStringArray) in ();
        let size : int ref = ref ((Array.length !resourceStringArray)) in ();
        for index = 0 to !size - 1 do
            if ((Obj.repr !resourceStringArray.(index)) == (Obj.repr key)) then begin
                raise (Java_return (Obj.repr (index)))
            end
        done;
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("unable to find key: "))#append (((StringUtil.getInstance ())#toString (key)))))), self, commonStrings#rUN));
        raise (Failure ("RuntimeException"))
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method createImage : 'any1 'any2 'return. 'any1 * 'any2 -> 'return = fun (key, _inputStream) ->
        let key = Obj.repr key in
        begin
        (Obj.magic ((Obj.magic (java_call_static "Image.createImageLater" (Obj.repr ((Obj.magic key), (-1), (-1)))))))
        end [@@warning "-7-20"]
    

    method isLazy () : bool =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        systemWrapper <- ((ABSystemWrapper.getInstance ()) :> ABSystemWrapper.aBSystemWrapper);
        tsUtil <- (Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageCache" (fun arguments -> Obj.repr (new imageCache (Obj.obj arguments)))

let nULL_IMAGE_CACHE = (new imageCache ())
let get_nULL_IMAGE_CACHE () = nULL_IMAGE_CACHE
let () = java_register_static "ImageCache.get_nULL_IMAGE_CACHE" (fun _ -> Obj.repr (get_nULL_IMAGE_CACHE ()))


