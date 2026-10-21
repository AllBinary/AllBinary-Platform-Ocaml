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
(* import com.jogamp.opengl.glu.GLU *)

class jOGL10 (_gl, gl2) =
  object
    val mutable rED : string = ""
    method rED = rED
    method set_rED value' = rED <- value'
    val mutable gREEN : string = ""
    method gREEN = gREEN
    method set_gREEN value' = gREEN <- value'
    val mutable bLUE : string = ""
    method bLUE = bLUE
    method set_bLUE value' = bLUE <- value'
    val mutable aLPHA : string = ""
    method aLPHA = aLPHA
    method set_aLPHA value' = aLPHA <- value'
    val mutable pNAME : string = ""
    method pNAME = pNAME
    method set_pNAME value' = pNAME <- value'
    val mutable _PNAME : string = ""
    method _PNAME = _PNAME
    method set__PNAME value' = _PNAME <- value'
    val mutable pARAM : string = ""
    method pARAM = pARAM
    method set_pARAM value' = pARAM <- value'
    val mutable pARAMS : string = ""
    method pARAMS = pARAMS
    method set_pARAMS value' = pARAMS <- value'
    val mutable lIGHT : string = ""
    method lIGHT = lIGHT
    method set_lIGHT value' = lIGHT <- value'
    val mutable fACE : string = ""
    method fACE = fACE
    method set_fACE value' = fACE <- value'
    val mutable tARGET : string = ""
    method tARGET = tARGET
    method set_tARGET value' = tARGET <- value'
    val mutable gl10 : Obj.t = Obj.repr 0
    method gl10 : 'r. 'r = Obj.magic gl10
    method set_gl10 : 'v. 'v -> unit = fun value' -> gl10 <- Obj.repr value'
    val mutable glu : Obj.t = Obj.repr 0
    method glu : 'r. 'r = Obj.magic glu
    method set_glu : 'v. 'v -> unit = fun value' -> glu <- Obj.repr value'
    val mutable gL_LINE : int = 0
    method gL_LINE = gL_LINE
    method set_gL_LINE value' = gL_LINE <- value'
    val mutable gL_QUAD_STRIP : int = 0
    method gL_QUAD_STRIP = gL_QUAD_STRIP
    method set_gL_QUAD_STRIP value' = gL_QUAD_STRIP <- value'
    
    

    method getJOGLGL : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic gl10)))
        end
    

    method glActiveTexture ((texture : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glActiveTexture (texture))
        end
    

    method glAlphaFunc ((func : int), (ref_ : float)) : unit =
        begin
        ignore ((Obj.magic gl10)#glAlphaFunc (func, ref_))
        end
    

    method glBindTexture ((target : int), (texture : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glBindTexture (target, texture))
        end
    

    method glBlendFunc ((sfactor : int), (dfactor : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glBlendFunc (sfactor, dfactor))
        end
    

    method glClear ((mask : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glClear (mask))
        end
    

    method glClearColor ((red : float), (green : float), (blue : float), (alpha : float)) : unit =
        begin
        ignore ((Obj.magic gl10)#glClearColor (red, green, blue, alpha))
        end
    

    method glClearDepthf ((depth : float)) : unit =
        begin
        ignore ((Obj.magic gl10)#glClearDepthf (depth))
        end
    

    method glClearStencil ((s : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glClearStencil (s))
        end
    

    method glClientActiveTexture ((texture : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glClientActiveTexture (texture))
        end
    

    method glColor4f ((red : float), (green : float), (blue : float), (alpha : float)) : unit =
        begin
        ignore ((Obj.magic gl10)#glColor4f (red, green, blue, alpha))
        end
    

    method glColorMask ((red : bool), (green : bool), (blue : bool), (alpha : bool)) : unit =
        begin
        ignore ((Obj.magic gl10)#glColorMask (red, green, blue, alpha))
        end
    

    method glColorPointer : 'any4. int * int * int * 'any4 -> unit = fun ((size : int), (type_ : int), (stride : int), pointer) ->
        let pointer = Obj.repr pointer in
        begin
        ignore ((Obj.magic gl10)#glColorPointer (size, type_, stride, (Obj.magic pointer)))
        end [@@warning "-20"]
    

    method glCompressedTexImage2D : 'any8. int * int * int * int * int * int * int * 'any8 -> unit = fun ((target : int), (level : int), (internalformat : int), (width : int), (height : int), (border : int), (imageSize : int), data) ->
        let data = Obj.repr data in
        begin
        ignore ((Obj.magic gl10)#glCompressedTexImage2D (target, level, internalformat, width, height, border, imageSize, (Obj.magic data)))
        end [@@warning "-20"]
    

    method glCompressedTexSubImage2D : 'any9. int * int * int * int * int * int * int * int * 'any9 -> unit = fun ((target : int), (level : int), (xoffset : int), (yoffset : int), (width : int), (height : int), (format : int), (imageSize : int), data) ->
        let data = Obj.repr data in
        begin
        ignore ((Obj.magic gl10)#glCompressedTexSubImage2D (target, level, xoffset, yoffset, width, height, format, imageSize, (Obj.magic data)))
        end [@@warning "-20"]
    

    method glCopyTexImage2D ((target : int), (level : int), (internalformat : int), (x : int), (y : int), (width : int), (height : int), (border : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glCopyTexImage2D (target, level, internalformat, x, y, width, height, border))
        end
    

    method glCopyTexSubImage2D ((target : int), (level : int), (xoffset : int), (yoffset : int), (x : int), (y : int), (width : int), (height : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glCopyTexSubImage2D (target, level, xoffset, yoffset, x, y, width, height))
        end
    

    method glCullFace ((mode : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glCullFace (mode))
        end
    

    method glDeleteTextures ((n : int), (textures : int array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glDeleteTextures (n, textures, offset))
        end
    

    (* Java overload glDeleteTextures(INT, IntBuffer) is not converted: OCaml has one method per name *)
    

    method glDepthFunc ((func : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glDepthFunc (func))
        end
    

    method glDepthMask ((flag : bool)) : unit =
        begin
        ignore ((Obj.magic gl10)#glDepthMask (flag))
        end
    

    method glDepthRangef ((zNear : float), (zFar : float)) : unit =
        begin
        ignore ((Obj.magic gl10)#glDepthRangef (zNear, zFar))
        end
    

    method glDisable ((cap : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glDisable (cap))
        end
    

    method glDisableClientState ((array : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glDisableClientState (array))
        end
    

    method glDrawArrays ((mode : int), (first : int), (count : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glDrawArrays (mode, first, count))
        end
    

    method glDrawElements : 'any4. int * int * int * 'any4 -> unit = fun ((mode : int), (count : int), (type_ : int), indices) ->
        let indices = Obj.repr indices in
        begin
        ignore ((Obj.magic gl10)#glDrawElements (mode, count, type_, (Obj.magic indices)))
        end [@@warning "-20"]
    

    method glEnable ((cap : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glEnable (cap))
        end
    

    method glEnableClientState ((array : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glEnableClientState (array))
        end
    

    method glFinish () : unit =
        begin
        ignore ((Obj.magic gl10)#glFinish ())
        end
    

    method glFlush () : unit =
        begin
        ignore ((Obj.magic gl10)#glFlush ())
        end
    

    method glFogf ((pname : int), (param : float)) : unit =
        begin
        ignore ((Obj.magic gl10)#glFogf (pname, param))
        end
    

    method glFogfv ((pname : int), (params : float array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glFogfv (pname, params, offset))
        end
    

    (* Java overload glFogfv(INT, FloatBuffer) is not converted: OCaml has one method per name *)
    

    method glFrontFace ((mode : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glFrontFace (mode))
        end
    

    method glFrustumf ((left : float), (right : float), (bottom : float), (top : float), (zNear : float), (zFar : float)) : unit =
        begin
        ignore ((Obj.magic gl10)#glFrustumf (left, right, bottom, top, zNear, zFar))
        end
    

    method glGenTextures ((n : int), (textures : int array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glGenTextures (n, textures, offset))
        end
    

    (* Java overload glGenTextures(INT, IntBuffer) is not converted: OCaml has one method per name *)
    

    method glGetError () : int =
        begin
        ((Obj.magic gl10)#glGetError ())
        end
    

    method glGetIntegerv ((pname : int), (params : int array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glGetIntegerv (pname, params, offset))
        end
    

    (* Java overload glGetIntegerv(INT, IntBuffer) is not converted: OCaml has one method per name *)
    

    method glGetString ((name : int)) : string =
        begin
        ((Obj.magic gl10)#glGetString (name))
        end
    

    method glHint ((target : int), (mode : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glHint (target, mode))
        end
    

    method glLightModelf ((pname : int), (param : float)) : unit =
        begin
        ignore ((Obj.magic gl10)#glLightModelf (pname, param))
        end
    

    method glLightModelfv ((pname : int), (params : float array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glLightModelfv (pname, params, offset))
        end
    

    (* Java overload glLightModelfv(INT, FloatBuffer) is not converted: OCaml has one method per name *)
    

    method glLightf ((light : int), (pname : int), (param : float)) : unit =
        begin
        ignore ((Obj.magic gl10)#glLightf (light, pname, param))
        end
    

    method glLightfv ((light : int), (pname : int), (params : float array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glLightfv (light, pname, params, offset))
        end
    

    (* Java overload glLightfv(INT, INT, FloatBuffer) is not converted: OCaml has one method per name *)
    

    method glLineWidth ((width : float)) : unit =
        begin
        ignore ((Obj.magic gl10)#glLineWidth (width))
        end
    

    method glLoadIdentity () : unit =
        begin
        ignore ((Obj.magic gl10)#glLoadIdentity ())
        end
    

    method glLoadMatrixf ((m : float array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glLoadMatrixf (m, offset))
        end
    

    (* Java overload glLoadMatrixf(FloatBuffer) is not converted: OCaml has one method per name *)
    

    method glLogicOp ((opcode : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glLogicOp (opcode))
        end
    

    method glMaterialf ((face : int), (pname : int), (param : float)) : unit =
        begin
        ignore ((Obj.magic gl10)#glMaterialf (face, pname, param))
        end
    

    method glMaterialfv ((face : int), (pname : int), (params : float array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glMaterialfv (face, pname, params, offset))
        end
    

    (* Java overload glMaterialfv(INT, INT, FloatBuffer) is not converted: OCaml has one method per name *)
    

    method glMatrixMode ((mode : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glMatrixMode (mode))
        end
    

    method glMultMatrixf ((m : float array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glMultMatrixf (m, offset))
        end
    

    (* Java overload glMultMatrixf(FloatBuffer) is not converted: OCaml has one method per name *)
    

    method glMultiTexCoord4f ((target : int), (s : float), (t : float), (r : float), (q : float)) : unit =
        begin
        ignore ((Obj.magic gl10)#glMultiTexCoord4f (target, s, t, r, q))
        end
    

    method glNormal3f ((nx : float), (ny : float), (nz : float)) : unit =
        begin
        ignore ((Obj.magic gl10)#glNormal3f (nx, ny, nz))
        end
    

    method glNormalPointer : 'any3. int * int * 'any3 -> unit = fun ((type_ : int), (stride : int), pointer) ->
        let pointer = Obj.repr pointer in
        begin
        ignore ((Obj.magic gl10)#glNormalPointer (type_, stride, (Obj.magic pointer)))
        end [@@warning "-20"]
    

    method glOrthof ((left : float), (right : float), (bottom : float), (top : float), (zNear : float), (zFar : float)) : unit =
        begin
        ignore ((Obj.magic gl10)#glOrthof (left, right, bottom, top, zNear, zFar))
        end
    

    method glPixelStorei ((pname : int), (param : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glPixelStorei (pname, param))
        end
    

    method glPointSize ((size : float)) : unit =
        begin
        ignore ((Obj.magic gl10)#glPointSize (size))
        end
    

    method glPolygonOffset ((factor : float), (units : float)) : unit =
        begin
        ignore ((Obj.magic gl10)#glPolygonOffset (factor, units))
        end
    

    method glPopMatrix () : unit =
        begin
        ignore ((Obj.magic gl10)#glPopMatrix ())
        end
    

    method glPushMatrix () : unit =
        begin
        ignore ((Obj.magic gl10)#glPushMatrix ())
        end
    

    method glReadPixels : 'any7. int * int * int * int * int * int * 'any7 -> unit = fun ((x : int), (y : int), (width : int), (height : int), (format : int), (type_ : int), pixels) ->
        let pixels = Obj.repr pixels in
        begin
        ignore ((Obj.magic gl10)#glReadPixels (x, y, width, height, format, type_, (Obj.magic pixels)))
        end [@@warning "-20"]
    

    method glRotatef ((angle : float), (x : float), (y : float), (z : float)) : unit =
        begin
        ignore ((Obj.magic gl10)#glRotatef (angle, x, y, z))
        end
    

    method glRotatex ((angle : int), (x : int), (y : int), (z : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glRotatef (angle, x, y, z))
        end
    

    method glSampleCoverage ((value : float), (invert : bool)) : unit =
        begin
        ignore ((Obj.magic gl10)#glSampleCoverage (value, invert))
        end
    

    method glScalef ((x : float), (y : float), (z : float)) : unit =
        begin
        ignore ((Obj.magic gl10)#glScalef (x, y, z))
        end
    

    method glScalex ((x : int), (y : int), (z : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glScalef (x, y, z))
        end
    

    method glScissor ((x : int), (y : int), (width : int), (height : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glScissor (x, y, width, height))
        end
    

    method glShadeModel ((mode : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glShadeModel (mode))
        end
    

    method glStencilFunc ((func : int), (ref_ : int), (mask : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glStencilFunc (func, ref_, mask))
        end
    

    method glStencilMask ((mask : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glStencilMask (mask))
        end
    

    method glStencilOp ((fail : int), (zfail : int), (zpass : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glStencilOp (fail, zfail, zpass))
        end
    

    method glTexCoordPointer : 'any4. int * int * int * 'any4 -> unit = fun ((size : int), (type_ : int), (stride : int), pointer) ->
        let pointer = Obj.repr pointer in
        begin
        ignore ((Obj.magic gl10)#glTexCoordPointer (size, type_, stride, (Obj.magic pointer)))
        end [@@warning "-20"]
    

    method glTexEnvf ((target : int), (pname : int), (param : float)) : unit =
        begin
        ignore ((Obj.magic gl10)#glTexEnvf (target, pname, param))
        end
    

    method glTexEnvfv ((target : int), (pname : int), (params : float array), (offset : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glTexEnvfv (target, pname, params, offset))
        end
    

    (* Java overload glTexEnvfv(INT, INT, FloatBuffer) is not converted: OCaml has one method per name *)
    

    method glTexImage2D : 'any9. int * int * int * int * int * int * int * int * 'any9 -> unit = fun ((target : int), (level : int), (internalformat : int), (width : int), (height : int), (border : int), (format : int), (type_ : int), pixels) ->
        let pixels = Obj.repr pixels in
        begin
        ignore ((Obj.magic gl10)#glTexImage2D (target, level, internalformat, width, height, border, format, type_, (Obj.magic pixels)))
        end [@@warning "-20"]
    

    method glTexParameterf ((target : int), (pname : int), (param : float)) : unit =
        begin
        ignore ((Obj.magic gl10)#glTexParameterf (target, pname, param))
        end
    

    method glTexParameteri ((target : int), (pname : int), (param : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glTexParameteri (target, pname, param))
        end
    

    method glTexSubImage2D : 'any9. int * int * int * int * int * int * int * int * 'any9 -> unit = fun ((target : int), (level : int), (xoffset : int), (yoffset : int), (width : int), (height : int), (format : int), (type_ : int), pixels) ->
        let pixels = Obj.repr pixels in
        begin
        ignore ((Obj.magic gl10)#glTexSubImage2D (target, level, xoffset, yoffset, width, height, format, type_, (Obj.magic pixels)))
        end [@@warning "-20"]
    

    method glTranslatef ((x : float), (y : float), (z : float)) : unit =
        begin
        ignore ((Obj.magic gl10)#glTranslatef (x, y, z))
        end
    

    method glVertexPointer : 'any4. int * int * int * 'any4 -> unit = fun ((size : int), (type_ : int), (stride : int), pointer) ->
        let pointer = Obj.repr pointer in
        begin
        ignore ((Obj.magic gl10)#glVertexPointer (size, type_, stride, (Obj.magic pointer)))
        end [@@warning "-20"]
    

    method glViewport ((x : int), (y : int), (width : int), (height : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glViewport (x, y, width, height))
        end
    

    method glBegin ((i : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glBegin (i))
        end
    

    method glEnd () : unit =
        begin
        ignore ((Obj.magic gl10)#glEnd ())
        end
    

    method glVertex3f ((f : float), (f2 : float), (f3 : float)) : unit =
        begin
        ignore ((Obj.magic gl10)#glVertex3f (f, f2, f3))
        end
    

    method glPolygonMode ((i : int), (i1 : int)) : unit =
        begin
        ignore ((Obj.magic gl10)#glPolygonMode (i, i1))
        end

    initializer
      begin
        rED <- "red: ";
        gREEN <- " green: ";
        bLUE <- " blue: ";
        aLPHA <- " alpha: ";
        pNAME <- "pname: ";
        _PNAME <- " pname: ";
        pARAM <- " param: ";
        pARAMS <- " params: ";
        lIGHT <- "light: ";
        fACE <- "face: ";
        tARGET <- "target: ";
        ();
        ();
        ();
        ();
        ();
        gl10 <- Obj.repr (gl2);
        glu <- Obj.repr ((GLU.createGLU ((Obj.magic gl10))));
        gL_LINE <- (com.get_jogamp ())#opengl#gL2#gL_LINE;
        gL_QUAD_STRIP <- (com.get_jogamp ())#opengl#gL2#gL_QUAD_STRIP
      end
  end [@@warning "-20"]
let () = java_register_constructor "JOGL10" (fun arguments -> Obj.repr (new jOGL10 (Obj.obj arguments)))


