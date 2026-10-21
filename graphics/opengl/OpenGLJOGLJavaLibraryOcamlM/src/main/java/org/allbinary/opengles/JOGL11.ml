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
(* package org.allbinary.opengles *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import com.jogamp.opengl.GL *)
(* import com.jogamp.opengl.GL2 *)

class jOGL11 (gl, gl2) =
  object (self)
    inherit JOGL10.jOGL10 (gl, gl2)
    val mutable gl11 : Obj.t = Obj.repr 0
    method gl11 : 'r. 'r = Obj.magic gl11
    method set_gl11 : 'v. 'v -> unit = fun value' -> gl11 <- Obj.repr value'
    
    
    

    method glBindBuffer ((target : int), (buffer : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glBindBuffer (target, buffer))
        end [@@warning "-7"]
    

    method glBufferData : 'any3. int * int * 'any3 * int -> unit = fun ((target : int), (size : int), data, (usage : int)) ->
        let data = Obj.repr data in
        begin
        ignore ((Obj.magic gl11)#glBufferData (target, size, (Obj.magic data), usage))
        end [@@warning "-7-20"]
    

    method glBufferSubData : 'any4. int * int * int * 'any4 -> unit = fun ((target : int), (offset : int), (size : int), data) ->
        let data = Obj.repr data in
        begin
        ignore ((Obj.magic gl11)#glBufferSubData (target, offset, size, (Obj.magic data)))
        end [@@warning "-7-20"]
    

    method glClipPlanef ((plane : int), (equation : float array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glClipPlanef (plane, equation, offset))
        end [@@warning "-7"]
    

    (* Java overload glClipPlanef(INT, FloatBuffer) is not converted: OCaml has one method per name *)
    

    method glColor4ub ((red : int), (green : int), (blue : int), (alpha : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glColor4ub (red, green, blue, alpha))
        end [@@warning "-7"]
    

    method glColorPointer ((size : int), (type_ : int), (stride : int), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glColorPointer (size, type_, stride, offset))
        end [@@warning "-7"]
    

    method glDeleteBuffers ((n : int), (buffers : int array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glDeleteBuffers (n, buffers, offset))
        end [@@warning "-7"]
    

    (* Java overload glDeleteBuffers(INT, IntBuffer) is not converted: OCaml has one method per name *)
    

    method glDrawElements ((mode : int), (count : int), (type_ : int), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glDrawElements (mode, count, type_, offset))
        end [@@warning "-7"]
    

    method glGenBuffers ((n : int), (buffers : int array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glGenBuffers (n, buffers, offset))
        end [@@warning "-7"]
    

    (* Java overload glGenBuffers(INT, IntBuffer) is not converted: OCaml has one method per name *)
    

    method glGetBufferParameteriv ((target : int), (pname : int), (params : int array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glGetBufferParameteriv (target, pname, params, offset))
        end [@@warning "-7"]
    

    (* Java overload glGetBufferParameteriv(INT, INT, IntBuffer) is not converted: OCaml has one method per name *)
    

    method glGetClipPlanef ((pname : int), (eqn : float array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glGetClipPlanef (pname, eqn, offset))
        end [@@warning "-7"]
    

    (* Java overload glGetClipPlanef(INT, FloatBuffer) is not converted: OCaml has one method per name *)
    

    method glGetFloatv ((pname : int), (params : float array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glGetFloatv (pname, params, offset))
        end [@@warning "-7"]
    

    (* Java overload glGetFloatv(INT, FloatBuffer) is not converted: OCaml has one method per name *)
    

    method glGetLightfv ((light : int), (pname : int), (params : float array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glGetLightfv (light, pname, params, offset))
        end [@@warning "-7"]
    

    (* Java overload glGetLightfv(INT, INT, FloatBuffer) is not converted: OCaml has one method per name *)
    

    method glGetMaterialfv ((face : int), (pname : int), (params : float array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glGetMaterialfv (face, pname, params, offset))
        end [@@warning "-7"]
    

    (* Java overload glGetMaterialfv(INT, INT, FloatBuffer) is not converted: OCaml has one method per name *)
    

    method glGetTexEnviv ((env : int), (pname : int), (params : int array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glGetTexEnviv (env, pname, params, offset))
        end [@@warning "-7"]
    

    (* Java overload glGetTexEnviv(INT, INT, IntBuffer) is not converted: OCaml has one method per name *)
    

    method glGetTexParameterfv ((target : int), (pname : int), (params : float array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glGetTexParameterfv (target, pname, params, offset))
        end [@@warning "-7"]
    

    (* Java overload glGetTexParameterfv(INT, INT, FloatBuffer) is not converted: OCaml has one method per name *)
    

    method glGetTexParameteriv ((target : int), (pname : int), (params : int array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glGetTexParameteriv (target, pname, params, offset))
        end [@@warning "-7"]
    

    (* Java overload glGetTexParameteriv(INT, INT, IntBuffer) is not converted: OCaml has one method per name *)
    

    method glIsBuffer ((buffer : int)) : bool =
        begin
        ((Obj.magic gl11)#glIsBuffer (buffer))
        end [@@warning "-7"]
    

    method glIsEnabled ((cap : int)) : bool =
        begin
        ((Obj.magic gl11)#glIsEnabled (cap))
        end [@@warning "-7"]
    

    method glIsTexture ((texture : int)) : bool =
        begin
        ((Obj.magic gl11)#glIsTexture (texture))
        end [@@warning "-7"]
    

    method glNormalPointer ((type_ : int), (stride : int), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glNormalPointer (type_, stride, offset))
        end [@@warning "-7"]
    

    method glPointParameterf ((pname : int), (param : float)) : unit =
        begin
        ignore ((Obj.magic gl11)#glPointParameterf (pname, param))
        end [@@warning "-7"]
    

    method glPointParameterfv ((pname : int), (params : float array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glPointParameterfv (pname, params, offset))
        end [@@warning "-7"]
    

    (* Java overload glPointParameterfv(INT, FloatBuffer) is not converted: OCaml has one method per name *)
    

    method glTexCoordPointer ((size : int), (type_ : int), (stride : int), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glTexCoordPointer (size, type_, stride, offset))
        end [@@warning "-7"]
    

    method glTexEnvi ((target : int), (pname : int), (param : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glTexEnvi (target, pname, param))
        end [@@warning "-7"]
    

    method glTexEnviv ((target : int), (pname : int), (params : int array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glTexEnviv (target, pname, params, offset))
        end [@@warning "-7"]
    

    (* Java overload glTexEnviv(INT, INT, IntBuffer) is not converted: OCaml has one method per name *)
    

    method glTexParameterfv ((target : int), (pname : int), (params : float array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glTexParameterfv (target, pname, params, offset))
        end [@@warning "-7"]
    

    (* Java overload glTexParameterfv(INT, INT, FloatBuffer) is not converted: OCaml has one method per name *)
    

    method glTexParameteri ((target : int), (pname : int), (param : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glTexParameteri (target, pname, param))
        end [@@warning "-7"]
    

    method glTexParameteriv ((target : int), (pname : int), (params : int array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glTexParameteriv (target, pname, params, offset))
        end [@@warning "-7"]
    

    (* Java overload glTexParameteriv(INT, INT, IntBuffer) is not converted: OCaml has one method per name *)
    

    method glTexParameterxv ((target : int), (pname : int), (params : int array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glTexParameteriv (target, pname, params, offset))
        end [@@warning "-7"]
    

    method glVertexPointer ((size : int), (type_ : int), (stride : int), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl11)#glVertexPointer (size, type_, stride, offset))
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        gl11 <- Obj.repr ((self#getJOGLGL ()))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "JOGL11" (fun arguments -> Obj.repr (new jOGL11 (Obj.obj arguments)))
let new_jOGL11_1 (gl) = new jOGL11 (gl, (Obj.magic gl))
let () = java_register_constructor "JOGL11:1" (fun arguments -> Obj.repr (new_jOGL11_1 (Obj.obj arguments)))


