(*
 
  To change this license header, choose License Headers in Project Properties. 
  To change this template file, choose Tools | Templates 
  and open the template in the editor.  
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.media.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.image.BufferedImage *)
(* import java.io.File *)
(* import java.io.IOException *)
(* import java.util.Iterator *)
(* import javax.imageio.IIOImage *)
(* import javax.imageio.ImageIO *)
(* import javax.imageio.ImageWriteParam *)
(* import javax.imageio.ImageWriter *)
(* import javax.imageio.stream.ImageOutputStream *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.AbFileOutputStream *)
(* import org.allbinary.logic.io.StreamUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.string.CommonStrings *)
(* import org.apache.batik.ext.awt.image.codec.png.PNGImageWriter *)

class imagePersistanceUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    

    method saveWithBatik : 'any1 'any2. 'any1 * 'any2 -> unit = fun (file, bufferedImage) ->
        let file = Obj.repr file in
        let bufferedImage = Obj.repr bufferedImage in
        begin
        let batikPNGImageWriter : Obj.t ref = ref ((Obj.repr (new PNGImageWriter.pNGImageWriter ()))) in ();
        let fileOutputStream : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFileOutputStream.createFromAbFile" (Obj.repr ((Obj.magic file))))))) in ();
        Fun.protect ~finally:(fun () -> 
            ignore ((Obj.magic !fileOutputStream)#flush ());
            ignore ((StreamUtil.getInstance ())#close ((Obj.magic !fileOutputStream)))
        ) (fun () -> (try
            ignore ((Obj.magic !batikPNGImageWriter)#writeImage ((Obj.magic bufferedImage), (Obj.magic !fileOutputStream)))
        with exception_value -> raise exception_value));
        ignore ((Obj.magic logUtil)#putF (("Wrote Image: " ^ java_string_of (Obj.repr (((Obj.magic file)#getAbsolutePath ())))), self, commonStrings#sAVE))
        end [@@warning "-20"]
    

    method saveWithImageIO : 'any2. string * 'any2 -> unit = fun ((filePath : string), bufferedImage) ->
        let bufferedImage = Obj.repr bufferedImage in
        begin
        (self#saveWithImageIO ((new File.file (filePath)), (Obj.magic bufferedImage)))
        end [@@warning "-20"]
    

    (* Java overload saveWithImageIO(File, BufferedImage) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImagePersistanceUtil" (fun arguments -> Obj.repr (new imagePersistanceUtil (Obj.obj arguments)))

let instance = (new imagePersistanceUtil ())
let get_instance () = instance
let () = java_register_static "ImagePersistanceUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImagePersistanceUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


