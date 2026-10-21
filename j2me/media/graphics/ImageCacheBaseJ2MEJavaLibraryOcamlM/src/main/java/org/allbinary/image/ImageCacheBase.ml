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
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class imageCacheBase () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable imageFactory : ImageFactory.imageFactory = (Obj.magic 0)
    method imageFactory = imageFactory
    method set_imageFactory value' = imageFactory <- value'
    val mutable hashtable : Obj.t = Obj.repr 0
    method hashtable : 'r. 'r = Obj.magic hashtable
    method set_hashtable : 'v. 'v -> unit = fun value' -> hashtable <- Obj.repr value'
    val mutable sIZE : int = 0
    method sIZE = sIZE
    method set_sIZE value' = sIZE <- value'
    val mutable widths : int array = (Obj.magic 0)
    method widths = widths
    method set_widths value' = widths <- value'
    val mutable heights : int array = (Obj.magic 0)
    method heights = heights
    method set_heights value' = heights <- value'
    val mutable listOfList : BasicArrayList.basicArrayList array = (Obj.magic 0)
    method listOfList = listOfList
    method set_listOfList value' = listOfList <- value'
    val mutable availableListOfList : BasicArrayList.basicArrayList array = (Obj.magic 0)
    method availableListOfList = availableListOfList
    method set_availableListOfList value' = availableListOfList <- value'
    val mutable volume : int = 0
    method volume = volume
    method set_volume value' = volume <- value'
    val mutable nextIndex : int = 0
    method nextIndex = nextIndex
    method set_nextIndex value' = nextIndex <- value'
    
    

    method getImage : 'any1 'return. 'any1 -> 'return = fun (resourceId) ->
        let resourceId = Obj.repr resourceId in
        try
        begin
        let imageCanBeNull : Obj.t ref = ref ((Obj.repr ((Obj.magic hashtable)#get (resourceId)))) in ();
        if (!imageCanBeNull == (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((NullImage.get_nULL_IMAGE ()))))
        end;
        (Obj.magic ((Obj.magic !imageCanBeNull)))
        end
        with Java_return value -> Obj.obj value
    

    method releaseAll () : unit =
        begin
        for index = ((Array.length listOfList) - 1) downto 0 do
            ignore (availableListOfList.(index)#clear ());
            ignore (availableListOfList.(index)#addAllList (listOfList.(index)))
        done;
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("ImageCache: "))#append ((java_string_of (Obj.repr self)))))), self, "releaseAll"))
        end
    

    method getIndexWH ((width : int), (height : int)) : int =
        try
        begin
        let foundIndex : int ref = ref ((-1)) in ();
        let size : int ref = ref ((Array.length widths)) in ();
        for index = 0 to !size - 1 do
            if ((widths.(index) = width) && (heights.(index) = height)) then begin
                foundIndex := index;
                raise (Java_return (Obj.repr (!foundIndex)))
            end
        done;
        !foundIndex
        end
        with Java_return value -> Obj.obj value
    

    method getFromAvailable : 'return. int * int * int -> 'return = fun ((foundIndex : int), (_width : int), (_height : int)) ->
        try
        begin
        if (foundIndex <> (-1)) then begin
            if ((availableListOfList.(foundIndex)#size ()) > 0) then begin
                let list : BasicArrayList.basicArrayList ref = ref ((availableListOfList.(foundIndex) :> BasicArrayList.basicArrayList)) in ();
                raise (Java_return (Obj.repr ((Obj.magic (!list#removeAt (((!list#size ()) - 1)))))))
            end
        end;
        (Obj.magic ((NullImage.get_nULL_IMAGE ())))
        end
        with Java_return value -> Obj.obj value
    

    method get : 'return. string * int * int -> 'return = fun ((_caller : string), (_width : int), (_height : int)) ->
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getWithKey : 'any1 'return. 'any1 -> 'return = fun (_key) ->
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method createImage : 'return. string * int * int -> 'return = fun ((caller : string), (width : int), (height : int)) ->
        begin
        (Obj.magic ((imageFactory#createImage (caller, width, height))))
        end
    

    method createImageFromInputStream : 'any1 'any2 'return. 'any1 * 'any2 -> 'return = fun (key, inputStream) ->
        let key = Obj.repr key in
        let inputStream = Obj.repr inputStream in
        begin
        (Obj.magic ((imageFactory#createImageFromInputStream (key, (Obj.magic inputStream)))))
        end [@@warning "-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        for index = (nextIndex - 1) downto 0 do
            let width : int ref = ref (widths.(index)) in ();
            let height : int ref = ref (heights.(index)) in ();
            let total : int ref = ref ((listOfList.(index)#size ())) in ();
            let totalAvailable : int ref = ref ((availableListOfList.(index)#size ())) in ();
            ignore (!stringBuffer#append (" w: "));
            ignore (!stringBuffer#appendint (!width));
            ignore (!stringBuffer#append (" h: "));
            ignore (!stringBuffer#appendint (!height));
            ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
            ignore (!stringBuffer#append ((CommonLabels.getInstance ())#tOTAL_LABEL));
            ignore (!stringBuffer#appendint (!total));
            ignore (!stringBuffer#append (" available: "));
            ignore (!stringBuffer#appendint (!totalAvailable))
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method getHashtableP : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic hashtable)))
        end
    

    method init : 'any1. 'any1 -> unit = fun (_image) ->
        begin
        ()
        end [@@warning "-20"]
    

    method initProgress () : unit =
        begin
        ()
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        imageFactory <- ((ImageFactory.getInstance ()) :> ImageFactory.imageFactory);
        hashtable <- (Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()));
        sIZE <- 128;
        widths <- (Array.make (sIZE) 0);
        heights <- (Array.make (sIZE) 0);
        listOfList <- (Array.make (sIZE) (Obj.magic 0));
        availableListOfList <- (Array.make (sIZE) (Obj.magic 0));
        volume <- 0;
        nextIndex <- 0;
        ();
        for index = ((Array.length listOfList) - 1) downto 0 do
            listOfList.(index) <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)
        done;
        for index = ((Array.length availableListOfList) - 1) downto 0 do
            availableListOfList.(index) <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)
        done
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageCacheBase" (fun arguments -> Obj.repr (new imageCacheBase (Obj.obj arguments)))


