(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.visual.media *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.image.BufferedImage *)
(* import java.awt.image.RenderedImage *)
(* import java.util.HashMap *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypes *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.media.image.ImageUtil *)
(* import org.allbinary.string.CommonLabels *)


let getImageBufferPropertyHashMap : 'any1. 'any1 -> java_hash_map = fun (bufferedImage) ->
        let bufferedImage = Obj.repr bufferedImage in
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        let propertyStringArray : string array ref = ref (((Obj.magic bufferedImage)#getPropertyNames ())) in ();
        if (!propertyStringArray != (Obj.magic 0)) then begin
            for index = 0 to (Array.length !propertyStringArray) - 1 do
                let propertyObject : Obj.t ref = ref ((Obj.repr ((Obj.magic bufferedImage)#getProperty (!propertyStringArray.(index))))) in ();
                ignore (!hashMap#put (!propertyStringArray.(index), (java_string_of (Obj.repr !propertyObject))))
            done
        end;
        (!hashMap :> java_hash_map)
        end [@@warning "-20"]

let () = java_register_static "MediaUtil.getImageBufferPropertyHashMap" (fun arguments -> Obj.repr (getImageBufferPropertyHashMap (Obj.obj arguments)))
class mediaUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method saveImageFile : 'any1 'any4. 'any1 * string * string * 'any4 * int * int -> unit = fun (originalImageFile, (newImageFileName : string), (category : string), mediaData, (newWidth : int), (newHeight : int)) ->
        let originalImageFile = Obj.repr originalImageFile in
        let mediaData = Obj.repr mediaData in
        begin
        if (((Obj.magic originalImageFile) == (Obj.magic 0)) || (not ((Obj.magic originalImageFile)#isFile ()))) then begin
            raise (Failure ("Original Image File Does Not Exist."))
        end;
        let bufferedImage : Obj.t ref = ref ((Obj.repr (ImageIOUtil.read ((Obj.magic originalImageFile))))) in ();
        if ((Obj.magic !bufferedImage) == (Obj.magic 0)) then begin
            raise (Failure ("Unable to find ImageReader for this file."))
        end;
        if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#vIEW)) then begin
            let hashMap : java_hash_map ref = ref (((self#getImageBufferPropertyHashMap ((Obj.magic !bufferedImage))) :> java_hash_map)) in ();
            ignore ((Obj.magic logUtil)#putF (("Image Properties: " ^ (java_string_of (Obj.repr !hashMap))), self, "saveImageFile()"))
        end;
        let imageFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr ((category ^ newImageFileName))))))) in ();
        ignore ((Obj.magic !imageFile)#createNewFile ());
        let imageUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "ImageUtil.getInstance" (Obj.repr ()))))) in ();
        let newBufferedImage : Obj.t ref = ref ((Obj.repr ((Obj.magic !imageUtil)#createBufferedImageForSave ((Obj.magic !bufferedImage), newWidth, newHeight)))) in ();
        let isWritten : bool ref = ref ((ImageIOUtil.write ((Obj.magic (Obj.magic !newBufferedImage)), ((Obj.magic mediaData)#getName ()), (Obj.magic !imageFile)))) in ();
        if (not !isWritten) then begin
            raise (Failure ("Unable to write."))
        end;
        if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#vIEW)) then begin
            let commonLabels : CommonLabels.commonLabels ref = ref (((CommonLabels.getInstance ()) :> CommonLabels.commonLabels)) in ();
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Get Path: "));
            ignore (!stringBuffer#append (((Obj.magic originalImageFile)#getPath ())));
            ignore (!stringBuffer#append ("\nNewImageFileName: "));
            ignore (!stringBuffer#append (newImageFileName));
            ignore (!stringBuffer#append ("\nCategory: "));
            ignore (!stringBuffer#append (category));
            ignore (!stringBuffer#append ("\nSave File Type: "));
            ignore (!stringBuffer#append (((Obj.magic mediaData)#getName ())));
            ignore ((!stringBuffer#append ("\nNew"))#append (!commonLabels#wIDTH_LABEL));
            ignore (!stringBuffer#appendint (newWidth));
            ignore ((!stringBuffer#append ("\nNew"))#append (!commonLabels#hEIGHT_LABEL));
            ignore (!stringBuffer#appendint (newHeight));
            ignore (!stringBuffer#append ("\nFile Length: "));
            ignore (!stringBuffer#appendlong (((Obj.magic originalImageFile)#length ())));
            ignore (!stringBuffer#append ("\nNew File Length: "));
            ignore (!stringBuffer#appendlong (((Obj.magic !imageFile)#length ())));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "saveImageFile()"))
        end
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "MediaUtil" (fun arguments -> Obj.repr (new mediaUtil (Obj.obj arguments)))

let instance = (new mediaUtil ())
let get_instance () = instance
let () = java_register_static "MediaUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "MediaUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


