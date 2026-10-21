(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.device *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.khronos.opengles.GL10 *)
(* import java.nio.Buffer *)
(* import java.nio.FloatBuffer *)
(* import java.nio.IntBuffer *)
(* import org.allbinary.logic.string.StringUtil *)

class nullGL10 () =
  object
    

    method glActiveTexture ((_texture : int)) : unit =
        begin
        ()
        end
    

    method glAlphaFunc ((_func : int), (_ref_ : float)) : unit =
        begin
        ()
        end
    

    method glAlphaFuncx ((_func : int), (_ref_ : int)) : unit =
        begin
        ()
        end
    

    method glBindTexture ((_target : int), (_texture : int)) : unit =
        begin
        ()
        end
    

    method glBlendFunc ((_sfactor : int), (_dfactor : int)) : unit =
        begin
        ()
        end
    

    method glClear ((_mask : int)) : unit =
        begin
        ()
        end
    

    method glClearColor ((_red : float), (_green : float), (_blue : float), (_alpha : float)) : unit =
        begin
        ()
        end
    

    method glClearColorx ((_red : int), (_green : int), (_blue : int), (_alpha : int)) : unit =
        begin
        ()
        end
    

    method glClearDepthf ((_depth : float)) : unit =
        begin
        ()
        end
    

    method glClearDepthx ((_depth : int)) : unit =
        begin
        ()
        end
    

    method glClearStencil ((_s : int)) : unit =
        begin
        ()
        end
    

    method glClientActiveTexture ((_texture : int)) : unit =
        begin
        ()
        end
    

    method glColor4f ((_red : float), (_green : float), (_blue : float), (_alpha : float)) : unit =
        begin
        ()
        end
    

    method glColor4x ((_red : int), (_green : int), (_blue : int), (_alpha : int)) : unit =
        begin
        ()
        end
    

    method glColorMask ((_red : bool), (_green : bool), (_blue : bool), (_alpha : bool)) : unit =
        begin
        ()
        end
    

    method glColorPointer : 'any4. int * int * int * 'any4 -> unit = fun ((_size : int), (_type_ : int), (_stride : int), _pointer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method glCompressedTexImage2D : 'any8. int * int * int * int * int * int * int * 'any8 -> unit = fun ((_target : int), (_level : int), (_internalformat : int), (_width : int), (_height : int), (_border : int), (_imageSize : int), _data) ->
        begin
        ()
        end [@@warning "-20"]
    

    method glCompressedTexSubImage2D : 'any9. int * int * int * int * int * int * int * int * 'any9 -> unit = fun ((_target : int), (_level : int), (_xoffset : int), (_yoffset : int), (_width : int), (_height : int), (_format : int), (_imageSize : int), _data) ->
        begin
        ()
        end [@@warning "-20"]
    

    method glCopyTexImage2D ((_target : int), (_level : int), (_internalformat : int), (_x : int), (_y : int), (_width : int), (_height : int), (_border : int)) : unit =
        begin
        ()
        end
    

    method glCopyTexSubImage2D ((_target : int), (_level : int), (_xoffset : int), (_yoffset : int), (_x : int), (_y : int), (_width : int), (_height : int)) : unit =
        begin
        ()
        end
    

    method glCullFace ((_mode : int)) : unit =
        begin
        ()
        end
    

    method glDeleteTextures ((_n : int), (_textures : int array), (_offset : int)) : unit =
        begin
        ()
        end
    

    (* Java overload glDeleteTextures(INT, IntBuffer) is not converted: OCaml has one method per name *)
    

    method glDepthFunc ((_func : int)) : unit =
        begin
        ()
        end
    

    method glDepthMask ((_flag : bool)) : unit =
        begin
        ()
        end
    

    method glDepthRangef ((_zNear : float), (_zFar : float)) : unit =
        begin
        ()
        end
    

    method glDepthRangex ((_zNear : int), (_zFar : int)) : unit =
        begin
        ()
        end
    

    method glDisable ((_cap : int)) : unit =
        begin
        ()
        end
    

    method glDisableClientState ((_array : int)) : unit =
        begin
        ()
        end
    

    method glDrawArrays ((_mode : int), (_first : int), (_count : int)) : unit =
        begin
        ()
        end
    

    method glDrawElements : 'any4. int * int * int * 'any4 -> unit = fun ((_mode : int), (_count : int), (_type_ : int), _indices) ->
        begin
        ()
        end [@@warning "-20"]
    

    method glEnable ((_cap : int)) : unit =
        begin
        ()
        end
    

    method glEnableClientState ((_array : int)) : unit =
        begin
        ()
        end
    

    method glFinish () : unit =
        begin
        ()
        end
    

    method glFlush () : unit =
        begin
        ()
        end
    

    method glFogf ((_pname : int), (_param : float)) : unit =
        begin
        ()
        end
    

    method glFogfv ((_pname : int), (_params : float array), (_offset : int)) : unit =
        begin
        ()
        end
    

    (* Java overload glFogfv(INT, FloatBuffer) is not converted: OCaml has one method per name *)
    

    method glFogx ((_pname : int), (_param : int)) : unit =
        begin
        ()
        end
    

    method glFogxv ((_pname : int), (_params : int array), (_offset : int)) : unit =
        begin
        ()
        end
    

    (* Java overload glFogxv(INT, IntBuffer) is not converted: OCaml has one method per name *)
    

    method glFrontFace ((_mode : int)) : unit =
        begin
        ()
        end
    

    method glFrustumf ((_left : float), (_right : float), (_bottom : float), (_top : float), (_zNear : float), (_zFar : float)) : unit =
        begin
        ()
        end
    

    method glFrustumx ((_left : int), (_right : int), (_bottom : int), (_top : int), (_zNear : int), (_zFar : int)) : unit =
        begin
        ()
        end
    

    method glGenTextures ((_n : int), (_textures : int array), (_offset : int)) : unit =
        begin
        ()
        end
    

    (* Java overload glGenTextures(INT, IntBuffer) is not converted: OCaml has one method per name *)
    

    method glGetError () : int =
        begin
        0
        end
    

    method glGetIntegerv ((_pname : int), (_params : int array), (_offset : int)) : unit =
        begin
        ()
        end
    

    (* Java overload glGetIntegerv(INT, IntBuffer) is not converted: OCaml has one method per name *)
    

    method glGetString ((_name : int)) : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end
    

    method glHint ((_target : int), (_mode : int)) : unit =
        begin
        ()
        end
    

    method glLightModelf ((_pname : int), (_param : float)) : unit =
        begin
        ()
        end
    

    method glLightModelfv ((_pname : int), (_params : float array), (_offset : int)) : unit =
        begin
        ()
        end
    

    (* Java overload glLightModelfv(INT, FloatBuffer) is not converted: OCaml has one method per name *)
    

    method glLightModelx ((_pname : int), (_param : int)) : unit =
        begin
        ()
        end
    

    method glLightModelxv ((_pname : int), (_params : int array), (_offset : int)) : unit =
        begin
        ()
        end
    

    (* Java overload glLightModelxv(INT, IntBuffer) is not converted: OCaml has one method per name *)
    

    method glLightf ((_light : int), (_pname : int), (_param : float)) : unit =
        begin
        ()
        end
    

    method glLightfv ((_light : int), (_pname : int), (_params : float array), (_offset : int)) : unit =
        begin
        ()
        end
    

    (* Java overload glLightfv(INT, INT, FloatBuffer) is not converted: OCaml has one method per name *)
    

    method glLightx ((_light : int), (_pname : int), (_param : int)) : unit =
        begin
        ()
        end
    

    method glLightxv ((_light : int), (_pname : int), (_params : int array), (_offset : int)) : unit =
        begin
        ()
        end
    

    (* Java overload glLightxv(INT, INT, IntBuffer) is not converted: OCaml has one method per name *)
    

    method glLineWidth ((_width : float)) : unit =
        begin
        ()
        end
    

    method glLineWidthx ((_width : int)) : unit =
        begin
        ()
        end
    

    method glLoadIdentity () : unit =
        begin
        ()
        end
    

    method glLoadMatrixf ((_m : float array), (_offset : int)) : unit =
        begin
        ()
        end
    

    (* Java overload glLoadMatrixf(FloatBuffer) is not converted: OCaml has one method per name *)
    

    method glLoadMatrixx ((_m : int array), (_offset : int)) : unit =
        begin
        ()
        end
    

    (* Java overload glLoadMatrixx(IntBuffer) is not converted: OCaml has one method per name *)
    

    method glLogicOp ((_opcode : int)) : unit =
        begin
        ()
        end
    

    method glMaterialf ((_face : int), (_pname : int), (_param : float)) : unit =
        begin
        ()
        end
    

    method glMaterialfv ((_face : int), (_pname : int), (_params : float array), (_offset : int)) : unit =
        begin
        ()
        end
    

    (* Java overload glMaterialfv(INT, INT, FloatBuffer) is not converted: OCaml has one method per name *)
    

    method glMaterialx ((_face : int), (_pname : int), (_param : int)) : unit =
        begin
        ()
        end
    

    method glMaterialxv ((_face : int), (_pname : int), (_params : int array), (_offset : int)) : unit =
        begin
        ()
        end
    

    (* Java overload glMaterialxv(INT, INT, IntBuffer) is not converted: OCaml has one method per name *)
    

    method glMatrixMode ((_mode : int)) : unit =
        begin
        ()
        end
    

    method glMultMatrixf ((_m : float array), (_offset : int)) : unit =
        begin
        ()
        end
    

    (* Java overload glMultMatrixf(FloatBuffer) is not converted: OCaml has one method per name *)
    

    method glMultMatrixx ((_m : int array), (_offset : int)) : unit =
        begin
        ()
        end
    

    (* Java overload glMultMatrixx(IntBuffer) is not converted: OCaml has one method per name *)
    

    method glMultiTexCoord4f ((_target : int), (_s : float), (_t : float), (_r : float), (_q : float)) : unit =
        begin
        ()
        end
    

    method glMultiTexCoord4x ((_target : int), (_s : int), (_t : int), (_r : int), (_q : int)) : unit =
        begin
        ()
        end
    

    method glNormal3f ((_nx : float), (_ny : float), (_nz : float)) : unit =
        begin
        ()
        end
    

    method glNormal3x ((_nx : int), (_ny : int), (_nz : int)) : unit =
        begin
        ()
        end
    

    method glNormalPointer : 'any3. int * int * 'any3 -> unit = fun ((_type_ : int), (_stride : int), _pointer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method glOrthof ((_left : float), (_right : float), (_bottom : float), (_top : float), (_zNear : float), (_zFar : float)) : unit =
        begin
        ()
        end
    

    method glOrthox ((_left : int), (_right : int), (_bottom : int), (_top : int), (_zNear : int), (_zFar : int)) : unit =
        begin
        ()
        end
    

    method glPixelStorei ((_pname : int), (_param : int)) : unit =
        begin
        ()
        end
    

    method glPointSize ((_size : float)) : unit =
        begin
        ()
        end
    

    method glPointSizex ((_size : int)) : unit =
        begin
        ()
        end
    

    method glPolygonOffset ((_factor : float), (_units : float)) : unit =
        begin
        ()
        end
    

    method glPolygonOffsetx ((_factor : int), (_units : int)) : unit =
        begin
        ()
        end
    

    method glPopMatrix () : unit =
        begin
        ()
        end
    

    method glPushMatrix () : unit =
        begin
        ()
        end
    

    method glReadPixels : 'any7. int * int * int * int * int * int * 'any7 -> unit = fun ((_x : int), (_y : int), (_width : int), (_height : int), (_format : int), (_type_ : int), _pixels) ->
        begin
        ()
        end [@@warning "-20"]
    

    method glRotatef ((_angle : float), (_x : float), (_y : float), (_z : float)) : unit =
        begin
        ()
        end
    

    method glRotatex ((_angle : int), (_x : int), (_y : int), (_z : int)) : unit =
        begin
        ()
        end
    

    method glSampleCoverage ((_value : float), (_invert : bool)) : unit =
        begin
        ()
        end
    

    method glSampleCoveragex ((_value : int), (_invert : bool)) : unit =
        begin
        ()
        end
    

    method glScalef ((_x : float), (_y : float), (_z : float)) : unit =
        begin
        ()
        end
    

    method glScalex ((_x : int), (_y : int), (_z : int)) : unit =
        begin
        ()
        end
    

    method glScissor ((_x : int), (_y : int), (_width : int), (_height : int)) : unit =
        begin
        ()
        end
    

    method glShadeModel ((_mode : int)) : unit =
        begin
        ()
        end
    

    method glStencilFunc ((_func : int), (_ref_ : int), (_mask : int)) : unit =
        begin
        ()
        end
    

    method glStencilMask ((_mask : int)) : unit =
        begin
        ()
        end
    

    method glStencilOp ((_fail : int), (_zfail : int), (_zpass : int)) : unit =
        begin
        ()
        end
    

    method glTexCoordPointer : 'any4. int * int * int * 'any4 -> unit = fun ((_size : int), (_type_ : int), (_stride : int), _pointer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method glTexEnvf ((_target : int), (_pname : int), (_param : float)) : unit =
        begin
        ()
        end
    

    method glTexEnvfv ((_target : int), (_pname : int), (_params : float array), (_offset : int)) : unit =
        begin
        ()
        end
    

    (* Java overload glTexEnvfv(INT, INT, FloatBuffer) is not converted: OCaml has one method per name *)
    

    method glTexEnvx ((_target : int), (_pname : int), (_param : int)) : unit =
        begin
        ()
        end
    

    method glTexEnvxv ((_target : int), (_pname : int), (_params : int array), (_offset : int)) : unit =
        begin
        ()
        end
    

    (* Java overload glTexEnvxv(INT, INT, IntBuffer) is not converted: OCaml has one method per name *)
    

    method glTexImage2D : 'any9. int * int * int * int * int * int * int * int * 'any9 -> unit = fun ((_target : int), (_level : int), (_internalformat : int), (_width : int), (_height : int), (_border : int), (_format : int), (_type_ : int), _pixels) ->
        begin
        ()
        end [@@warning "-20"]
    

    method glTexParameterf ((_target : int), (_pname : int), (_param : float)) : unit =
        begin
        ()
        end
    

    method glTexParameterx ((_target : int), (_pname : int), (_param : int)) : unit =
        begin
        ()
        end
    

    method glTexSubImage2D : 'any9. int * int * int * int * int * int * int * int * 'any9 -> unit = fun ((_target : int), (_level : int), (_xoffset : int), (_yoffset : int), (_width : int), (_height : int), (_format : int), (_type_ : int), _pixels) ->
        begin
        ()
        end [@@warning "-20"]
    

    method glTranslatef ((_x : float), (_y : float), (_z : float)) : unit =
        begin
        ()
        end
    

    method glTranslatex ((_x : int), (_y : int), (_z : int)) : unit =
        begin
        ()
        end
    

    method glVertexPointer : 'any4. int * int * int * 'any4 -> unit = fun ((_size : int), (_type_ : int), (_stride : int), _pointer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method glViewport ((_x : int), (_y : int), (_width : int), (_height : int)) : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullGL10" (fun arguments -> Obj.repr (new nullGL10 (Obj.obj arguments)))

let nULL_GL10 = (new nullGL10 ())
let get_nULL_GL10 () = nULL_GL10
let () = java_register_static "NullGL10.get_nULL_GL10" (fun _ -> Obj.repr (get_nULL_GL10 ()))


