(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.opengles *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.khronos.opengles.GL10 *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.image.opengles.OpenGLStrings *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)

class openGLLogUtil () =
  object (self)
    val mutable mAX_TEXTURE : string = ""
    method mAX_TEXTURE = mAX_TEXTURE
    method set_mAX_TEXTURE value' = mAX_TEXTURE <- value'
    val mutable lOG_ERROR : string = ""
    method lOG_ERROR = lOG_ERROR
    method set_lOG_ERROR value' = lOG_ERROR <- value'
    val mutable iMAGE : string = ""
    method iMAGE = iMAGE
    method set_iMAGE value' = iMAGE <- value'
    

    method logError : 'any1. 'any1 -> unit = fun (gl) ->
        let gl = Obj.repr gl in
        begin
        let error : int ref = ref (((Obj.magic gl)#glGetError ())) in ();
        if (!error <> (Obj.magic (java_call_static "GL10.get_gL_NO_ERROR" (Obj.repr ())))) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ((OpenGLStrings.getInstance ())#gL_ERROR_LABEL));
            ignore (!stringBuffer#appendint (!error));
            if (!error = 1281) then begin
                ignore (!stringBuffer#append (mAX_TEXTURE));
                let maxTextureSize : int array ref = ref ((Array.make (1) 0)) in ();
                ignore ((Obj.magic gl)#glGetIntegerv ((Obj.magic (java_call_static "GL10.get_gL_MAX_TEXTURE_SIZE" (Obj.repr ()))), !maxTextureSize, 0));
                ignore (!stringBuffer#appendint (!maxTextureSize.(0)))
            end;
            if (!error = 1280) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr !stringBuffer)), self, (OpenGLStrings.getInstance ())#sET))))
            end else begin
                ignore (ForcedLogUtil.log ((java_string_of (Obj.repr !stringBuffer)), self))
            end
        end
        end [@@warning "-20"]
    

    (* Java overload logError(GL10, Image) is not converted: OCaml has one method per name *)

    initializer
      begin
        mAX_TEXTURE <- " Max Texture Size: ";
        lOG_ERROR <- "logError";
        iMAGE <- " Image: ";
        ()
      end
  end
let () = java_register_constructor "OpenGLLogUtil" (fun arguments -> Obj.repr (new openGLLogUtil (Obj.obj arguments)))

let instance = (new openGLLogUtil ())
let get_instance () = instance
let () = java_register_static "OpenGLLogUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLLogUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


