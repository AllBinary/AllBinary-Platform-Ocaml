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
(* import org.allbinary.J2MEUtil *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.data.resource.ResourceUtil *)
(* import org.allbinary.game.gd.resource.GDResources *)
(* import org.allbinary.logic.ABSystemWrapper *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.system.Memory *)

class imageCache () =
  object (self)
    inherit ImageCacheBase.imageCacheBase ()
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable tsUtil : Obj.t = Obj.repr 0
    method tsUtil : 'r. 'r = Obj.magic tsUtil
    method set_tsUtil : 'v. 'v -> unit = fun value' -> tsUtil <- Obj.repr value'
    
    

    method addListener : 'any1. 'any1 -> unit = fun (_renderer) ->
        begin
        ()
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
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("unable to find key: "))#append (((StringUtil.getInstance ())#toString (key)))))), self, commonStrings#rUN));
        raise (Failure ("RuntimeException"))
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method get : 'return. string * int * int -> 'return = fun ((caller : string), (width : int), (height : int)) ->
        begin
        let foundIndex : int ref = ref ((self#getIndexWH (width, height))) in ();
        let image : Obj.t ref = ref ((Obj.repr (self#getFromAvailable (!foundIndex, width, height)))) in ();
        if ((Obj.repr (Obj.magic !image)) == (Obj.repr (NullImage.get_nULL_IMAGE ()))) then begin
            (self#set_volume) (((self#volume) + (width * height)));
            if ((self#volume) > 32000) then begin
                ignore ((Obj.magic tsUtil)#gc ());
                (self#set_volume) (0)
            end;
            image := Obj.repr ((self#createImage (caller, width, height)));
            let widths : int array ref = ref ((self#widths)) in ();
            if ((self#nextIndex) > ((Array.length !widths) - 1)) then begin
                if (!foundIndex = (-1)) then begin
                    foundIndex := (self#nextIndex);
                    !widths.((self#nextIndex)) <- width;
                    (self#heights).((self#nextIndex)) <- (Obj.magic (height));
                    (self#set_nextIndex) ((self#nextIndex) + 1)
                end;
                ignore ((self#listOfList).(!foundIndex)#add ((Obj.magic !image)))
            end
        end;
        (Obj.magic ((Obj.magic !image)))
        end [@@warning "-7"]
    

    method getWithKey : 'any1 'return. 'any1 -> 'return = fun (key) ->
        let key = Obj.repr key in
        begin
        let image : Obj.t ref = ref ((Obj.repr (self#getImage (key)))) in ();
        if ((Obj.repr (Obj.magic !image)) == (Obj.repr (NullImage.get_nULL_IMAGE ()))) then begin
            let resourceUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ()))))) in ();
            let resourceInputStream : Obj.t ref = ref ((Obj.repr ((Obj.magic !resourceUtil)#getResourceAsStream ((Obj.magic key))))) in ();
            if ((Obj.magic !resourceInputStream) == (Obj.magic 0)) then begin
                raise (Failure ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Image resource is not available for key: "))#append (((StringUtil.getInstance ())#toString (key))))))))
            end;
            (try
                image := Obj.repr ((self#createImageFromInputStream (key, (Obj.magic !resourceInputStream))))
            with e -> begin
                ignore ((self#logUtil)#put ("Exception: Trying Again After GC", self, commonStrings#gET, e));
                ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("InputStream: "))#append (((StringUtil.getInstance ())#toString ((Obj.magic !resourceInputStream))))))), self, commonStrings#gET));
                ignore ((Obj.magic tsUtil)#gc ());
                ignore ((Obj.magic tsUtil)#gc ());
                ignore ((self#logUtil)#putF ((Memory.getInfo ()), self, commonStrings#gET));
                ignore (Unix.sleepf (Float.of_int (100) /. 1000.0));
                image := Obj.repr ((self#createImageFromInputStream (key, (Obj.magic !resourceInputStream))))
            end);
            if (J2MEUtil.isHTML ()) then begin
                ()
            end else begin
                ignore ((Obj.magic !resourceInputStream)#close ())
            end;
            ignore ((self#hashtable)#put (key, (Obj.magic !image)))
        end;
        (Obj.magic ((Obj.magic !image)))
        end [@@warning "-7"]
    

    method loadImageForAnimation () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method progressEnded () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method runTask () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method isLazy () : bool =
        begin
        false
        end [@@warning "-7"]

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        tsUtil <- (Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageCache" (fun arguments -> Obj.repr (new imageCache (Obj.obj arguments)))

let nULL_IMAGE_CACHE = (new imageCache ())
let get_nULL_IMAGE_CACHE () = nULL_IMAGE_CACHE
let () = java_register_static "ImageCache.get_nULL_IMAGE_CACHE" (fun _ -> Obj.repr (get_nULL_IMAGE_CACHE ()))


