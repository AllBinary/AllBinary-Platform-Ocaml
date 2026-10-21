(* Generated Code Do Not Modify *)
(* package javax.microedition.khronos.opengles *)

open Allbinary_java [@@warning "-33"]

class virtual gL10 =
  object
    method virtual glActiveTexture : int -> unit
    method virtual glAlphaFunc : int * float -> unit
    method virtual glBindTexture : int * int -> unit
    method virtual glBlendFunc : int * int -> unit
    method virtual glClear : int -> unit
    method virtual glClearColor : float * float * float * float -> unit
    method virtual glClearDepthf : float -> unit
    method virtual glClearStencil : int -> unit
    method virtual glClientActiveTexture : int -> unit
    method virtual glColor4f : float * float * float * float -> unit
    method virtual glColorMask : bool * bool * bool * bool -> unit
    method virtual glColorPointer : 'any4 . int * int * int * 'any4 -> unit
    method virtual glCompressedTexImage2D : 'any8 . int * int * int * int * int * int * int * 'any8 -> unit
    method virtual glCompressedTexSubImage2D : 'any9 . int * int * int * int * int * int * int * int * 'any9 -> unit
    method virtual glCopyTexImage2D : int * int * int * int * int * int * int * int -> unit
    method virtual glCopyTexSubImage2D : int * int * int * int * int * int * int * int -> unit
    method virtual glCullFace : int -> unit
    method virtual glDeleteTextures : int * int array * int -> unit
    (* Java overload glDeleteTextures(INT, IntBuffer) is not converted: OCaml has one method per name *)
    method virtual glDepthFunc : int -> unit
    method virtual glDepthMask : bool -> unit
    method virtual glDepthRangef : float * float -> unit
    method virtual glDisable : int -> unit
    method virtual glDisableClientState : int -> unit
    method virtual glDrawArrays : int * int * int -> unit
    method virtual glDrawElements : 'any4 . int * int * int * 'any4 -> unit
    method virtual glEnable : int -> unit
    method virtual glEnableClientState : int -> unit
    method virtual glFinish : unit -> unit
    method virtual glFlush : unit -> unit
    method virtual glFogf : int * float -> unit
    method virtual glFogfv : int * float array * int -> unit
    (* Java overload glFogfv(INT, FloatBuffer) is not converted: OCaml has one method per name *)
    method virtual glFrontFace : int -> unit
    method virtual glFrustumf : float * float * float * float * float * float -> unit
    method virtual glGenTextures : int * int array * int -> unit
    (* Java overload glGenTextures(INT, IntBuffer) is not converted: OCaml has one method per name *)
    method virtual glGetError : unit -> int
    method virtual glGetIntegerv : int * int array * int -> unit
    (* Java overload glGetIntegerv(INT, IntBuffer) is not converted: OCaml has one method per name *)
    method virtual glGetString : int -> string
    method virtual glHint : int * int -> unit
    method virtual glLightModelf : int * float -> unit
    method virtual glLightModelfv : int * float array * int -> unit
    (* Java overload glLightModelfv(INT, FloatBuffer) is not converted: OCaml has one method per name *)
    method virtual glLightf : int * int * float -> unit
    method virtual glLightfv : int * int * float array * int -> unit
    (* Java overload glLightfv(INT, INT, FloatBuffer) is not converted: OCaml has one method per name *)
    method virtual glLineWidth : float -> unit
    method virtual glLoadIdentity : unit -> unit
    method virtual glLoadMatrixf : float array * int -> unit
    (* Java overload glLoadMatrixf(FloatBuffer) is not converted: OCaml has one method per name *)
    method virtual glLogicOp : int -> unit
    method virtual glMaterialf : int * int * float -> unit
    method virtual glMaterialfv : int * int * float array * int -> unit
    (* Java overload glMaterialfv(INT, INT, FloatBuffer) is not converted: OCaml has one method per name *)
    method virtual glMatrixMode : int -> unit
    method virtual glMultMatrixf : float array * int -> unit
    (* Java overload glMultMatrixf(FloatBuffer) is not converted: OCaml has one method per name *)
    method virtual glMultiTexCoord4f : int * float * float * float * float -> unit
    method virtual glNormal3f : float * float * float -> unit
    method virtual glNormalPointer : 'any3 . int * int * 'any3 -> unit
    method virtual glOrthof : float * float * float * float * float * float -> unit
    method virtual glPixelStorei : int * int -> unit
    method virtual glPointSize : float -> unit
    method virtual glPolygonOffset : float * float -> unit
    method virtual glPopMatrix : unit -> unit
    method virtual glPushMatrix : unit -> unit
    method virtual glReadPixels : 'any7 . int * int * int * int * int * int * 'any7 -> unit
    method virtual glRotatef : float * float * float * float -> unit
    method virtual glRotatex : int * int * int * int -> unit
    method virtual glSampleCoverage : float * bool -> unit
    method virtual glScalef : float * float * float -> unit
    method virtual glScalex : int * int * int -> unit
    method virtual glScissor : int * int * int * int -> unit
    method virtual glShadeModel : int -> unit
    method virtual glStencilFunc : int * int * int -> unit
    method virtual glStencilMask : int -> unit
    method virtual glStencilOp : int * int * int -> unit
    method virtual glTexCoordPointer : 'any4 . int * int * int * 'any4 -> unit
    method virtual glTexEnvf : int * int * float -> unit
    method virtual glTexEnvfv : int * int * float array * int -> unit
    (* Java overload glTexEnvfv(INT, INT, FloatBuffer) is not converted: OCaml has one method per name *)
    method virtual glTexImage2D : 'any9 . int * int * int * int * int * int * int * int * 'any9 -> unit
    method virtual glTexParameterf : int * int * float -> unit
    method virtual glTexParameteri : int * int * int -> unit
    method virtual glTexSubImage2D : 'any9 . int * int * int * int * int * int * int * int * 'any9 -> unit
    method virtual glTranslatef : float * float * float -> unit
    method virtual glVertexPointer : 'any4 . int * int * int * 'any4 -> unit
    method virtual glViewport : int * int * int * int -> unit
    method virtual glBegin : int -> unit
    method virtual glEnd : unit -> unit
    method virtual glVertex3f : float * float * float -> unit
    method virtual glPolygonMode : int * int -> unit
  end

let gL_ADD : int = 260
let get_gL_ADD () = gL_ADD
let () = java_register_static "GL10.get_gL_ADD" (fun _ -> Obj.repr (get_gL_ADD ()))

let gL_ALIASED_LINE_WIDTH_RANGE : int = 33902
let get_gL_ALIASED_LINE_WIDTH_RANGE () = gL_ALIASED_LINE_WIDTH_RANGE
let () = java_register_static "GL10.get_gL_ALIASED_LINE_WIDTH_RANGE" (fun _ -> Obj.repr (get_gL_ALIASED_LINE_WIDTH_RANGE ()))

let gL_ALIASED_POINT_SIZE_RANGE : int = 33901
let get_gL_ALIASED_POINT_SIZE_RANGE () = gL_ALIASED_POINT_SIZE_RANGE
let () = java_register_static "GL10.get_gL_ALIASED_POINT_SIZE_RANGE" (fun _ -> Obj.repr (get_gL_ALIASED_POINT_SIZE_RANGE ()))

let gL_ALPHA : int = 6406
let get_gL_ALPHA () = gL_ALPHA
let () = java_register_static "GL10.get_gL_ALPHA" (fun _ -> Obj.repr (get_gL_ALPHA ()))

let gL_ALPHA_BITS : int = 3413
let get_gL_ALPHA_BITS () = gL_ALPHA_BITS
let () = java_register_static "GL10.get_gL_ALPHA_BITS" (fun _ -> Obj.repr (get_gL_ALPHA_BITS ()))

let gL_ALPHA_TEST : int = 3008
let get_gL_ALPHA_TEST () = gL_ALPHA_TEST
let () = java_register_static "GL10.get_gL_ALPHA_TEST" (fun _ -> Obj.repr (get_gL_ALPHA_TEST ()))

let gL_ALWAYS : int = 519
let get_gL_ALWAYS () = gL_ALWAYS
let () = java_register_static "GL10.get_gL_ALWAYS" (fun _ -> Obj.repr (get_gL_ALWAYS ()))

let gL_AMBIENT : int = 4608
let get_gL_AMBIENT () = gL_AMBIENT
let () = java_register_static "GL10.get_gL_AMBIENT" (fun _ -> Obj.repr (get_gL_AMBIENT ()))

let gL_AMBIENT_AND_DIFFUSE : int = 5634
let get_gL_AMBIENT_AND_DIFFUSE () = gL_AMBIENT_AND_DIFFUSE
let () = java_register_static "GL10.get_gL_AMBIENT_AND_DIFFUSE" (fun _ -> Obj.repr (get_gL_AMBIENT_AND_DIFFUSE ()))

let gL_AND : int = 5377
let get_gL_AND () = gL_AND
let () = java_register_static "GL10.get_gL_AND" (fun _ -> Obj.repr (get_gL_AND ()))

let gL_AND_INVERTED : int = 5380
let get_gL_AND_INVERTED () = gL_AND_INVERTED
let () = java_register_static "GL10.get_gL_AND_INVERTED" (fun _ -> Obj.repr (get_gL_AND_INVERTED ()))

let gL_AND_REVERSE : int = 5378
let get_gL_AND_REVERSE () = gL_AND_REVERSE
let () = java_register_static "GL10.get_gL_AND_REVERSE" (fun _ -> Obj.repr (get_gL_AND_REVERSE ()))

let gL_BACK : int = 1029
let get_gL_BACK () = gL_BACK
let () = java_register_static "GL10.get_gL_BACK" (fun _ -> Obj.repr (get_gL_BACK ()))

let gL_BLEND : int = 3042
let get_gL_BLEND () = gL_BLEND
let () = java_register_static "GL10.get_gL_BLEND" (fun _ -> Obj.repr (get_gL_BLEND ()))

let gL_BLUE_BITS : int = 3412
let get_gL_BLUE_BITS () = gL_BLUE_BITS
let () = java_register_static "GL10.get_gL_BLUE_BITS" (fun _ -> Obj.repr (get_gL_BLUE_BITS ()))

let gL_BYTE : int = 5120
let get_gL_BYTE () = gL_BYTE
let () = java_register_static "GL10.get_gL_BYTE" (fun _ -> Obj.repr (get_gL_BYTE ()))

let gL_CCW : int = 2305
let get_gL_CCW () = gL_CCW
let () = java_register_static "GL10.get_gL_CCW" (fun _ -> Obj.repr (get_gL_CCW ()))

let gL_CLAMP_TO_EDGE : int = 33071
let get_gL_CLAMP_TO_EDGE () = gL_CLAMP_TO_EDGE
let () = java_register_static "GL10.get_gL_CLAMP_TO_EDGE" (fun _ -> Obj.repr (get_gL_CLAMP_TO_EDGE ()))

let gL_CLEAR : int = 5376
let get_gL_CLEAR () = gL_CLEAR
let () = java_register_static "GL10.get_gL_CLEAR" (fun _ -> Obj.repr (get_gL_CLEAR ()))

let gL_COLOR_ARRAY : int = 32886
let get_gL_COLOR_ARRAY () = gL_COLOR_ARRAY
let () = java_register_static "GL10.get_gL_COLOR_ARRAY" (fun _ -> Obj.repr (get_gL_COLOR_ARRAY ()))

let gL_COLOR_BUFFER_BIT : int = 16384
let get_gL_COLOR_BUFFER_BIT () = gL_COLOR_BUFFER_BIT
let () = java_register_static "GL10.get_gL_COLOR_BUFFER_BIT" (fun _ -> Obj.repr (get_gL_COLOR_BUFFER_BIT ()))

let gL_COLOR_LOGIC_OP : int = 3058
let get_gL_COLOR_LOGIC_OP () = gL_COLOR_LOGIC_OP
let () = java_register_static "GL10.get_gL_COLOR_LOGIC_OP" (fun _ -> Obj.repr (get_gL_COLOR_LOGIC_OP ()))

let gL_COLOR_MATERIAL : int = 2903
let get_gL_COLOR_MATERIAL () = gL_COLOR_MATERIAL
let () = java_register_static "GL10.get_gL_COLOR_MATERIAL" (fun _ -> Obj.repr (get_gL_COLOR_MATERIAL ()))

let gL_COMPRESSED_TEXTURE_FORMATS : int = 34467
let get_gL_COMPRESSED_TEXTURE_FORMATS () = gL_COMPRESSED_TEXTURE_FORMATS
let () = java_register_static "GL10.get_gL_COMPRESSED_TEXTURE_FORMATS" (fun _ -> Obj.repr (get_gL_COMPRESSED_TEXTURE_FORMATS ()))

let gL_CONSTANT_ATTENUATION : int = 4615
let get_gL_CONSTANT_ATTENUATION () = gL_CONSTANT_ATTENUATION
let () = java_register_static "GL10.get_gL_CONSTANT_ATTENUATION" (fun _ -> Obj.repr (get_gL_CONSTANT_ATTENUATION ()))

let gL_COPY : int = 5379
let get_gL_COPY () = gL_COPY
let () = java_register_static "GL10.get_gL_COPY" (fun _ -> Obj.repr (get_gL_COPY ()))

let gL_COPY_INVERTED : int = 5388
let get_gL_COPY_INVERTED () = gL_COPY_INVERTED
let () = java_register_static "GL10.get_gL_COPY_INVERTED" (fun _ -> Obj.repr (get_gL_COPY_INVERTED ()))

let gL_CULL_FACE : int = 2884
let get_gL_CULL_FACE () = gL_CULL_FACE
let () = java_register_static "GL10.get_gL_CULL_FACE" (fun _ -> Obj.repr (get_gL_CULL_FACE ()))

let gL_CW : int = 2304
let get_gL_CW () = gL_CW
let () = java_register_static "GL10.get_gL_CW" (fun _ -> Obj.repr (get_gL_CW ()))

let gL_DECAL : int = 8449
let get_gL_DECAL () = gL_DECAL
let () = java_register_static "GL10.get_gL_DECAL" (fun _ -> Obj.repr (get_gL_DECAL ()))

let gL_DECR : int = 7683
let get_gL_DECR () = gL_DECR
let () = java_register_static "GL10.get_gL_DECR" (fun _ -> Obj.repr (get_gL_DECR ()))

let gL_DEPTH_BITS : int = 3414
let get_gL_DEPTH_BITS () = gL_DEPTH_BITS
let () = java_register_static "GL10.get_gL_DEPTH_BITS" (fun _ -> Obj.repr (get_gL_DEPTH_BITS ()))

let gL_DEPTH_BUFFER_BIT : int = 256
let get_gL_DEPTH_BUFFER_BIT () = gL_DEPTH_BUFFER_BIT
let () = java_register_static "GL10.get_gL_DEPTH_BUFFER_BIT" (fun _ -> Obj.repr (get_gL_DEPTH_BUFFER_BIT ()))

let gL_DEPTH_TEST : int = 2929
let get_gL_DEPTH_TEST () = gL_DEPTH_TEST
let () = java_register_static "GL10.get_gL_DEPTH_TEST" (fun _ -> Obj.repr (get_gL_DEPTH_TEST ()))

let gL_DIFFUSE : int = 4609
let get_gL_DIFFUSE () = gL_DIFFUSE
let () = java_register_static "GL10.get_gL_DIFFUSE" (fun _ -> Obj.repr (get_gL_DIFFUSE ()))

let gL_DITHER : int = 3024
let get_gL_DITHER () = gL_DITHER
let () = java_register_static "GL10.get_gL_DITHER" (fun _ -> Obj.repr (get_gL_DITHER ()))

let gL_DONT_CARE : int = 4352
let get_gL_DONT_CARE () = gL_DONT_CARE
let () = java_register_static "GL10.get_gL_DONT_CARE" (fun _ -> Obj.repr (get_gL_DONT_CARE ()))

let gL_DST_ALPHA : int = 772
let get_gL_DST_ALPHA () = gL_DST_ALPHA
let () = java_register_static "GL10.get_gL_DST_ALPHA" (fun _ -> Obj.repr (get_gL_DST_ALPHA ()))

let gL_DST_COLOR : int = 774
let get_gL_DST_COLOR () = gL_DST_COLOR
let () = java_register_static "GL10.get_gL_DST_COLOR" (fun _ -> Obj.repr (get_gL_DST_COLOR ()))

let gL_EMISSION : int = 5632
let get_gL_EMISSION () = gL_EMISSION
let () = java_register_static "GL10.get_gL_EMISSION" (fun _ -> Obj.repr (get_gL_EMISSION ()))

let gL_EQUAL : int = 514
let get_gL_EQUAL () = gL_EQUAL
let () = java_register_static "GL10.get_gL_EQUAL" (fun _ -> Obj.repr (get_gL_EQUAL ()))

let gL_EQUIV : int = 5385
let get_gL_EQUIV () = gL_EQUIV
let () = java_register_static "GL10.get_gL_EQUIV" (fun _ -> Obj.repr (get_gL_EQUIV ()))

let gL_EXP : int = 2048
let get_gL_EXP () = gL_EXP
let () = java_register_static "GL10.get_gL_EXP" (fun _ -> Obj.repr (get_gL_EXP ()))

let gL_EXP2 : int = 2049
let get_gL_EXP2 () = gL_EXP2
let () = java_register_static "GL10.get_gL_EXP2" (fun _ -> Obj.repr (get_gL_EXP2 ()))

let gL_EXTENSIONS : int = 7939
let get_gL_EXTENSIONS () = gL_EXTENSIONS
let () = java_register_static "GL10.get_gL_EXTENSIONS" (fun _ -> Obj.repr (get_gL_EXTENSIONS ()))

let gL_FALSE : int = 0
let get_gL_FALSE () = gL_FALSE
let () = java_register_static "GL10.get_gL_FALSE" (fun _ -> Obj.repr (get_gL_FALSE ()))

let gL_FASTEST : int = 4353
let get_gL_FASTEST () = gL_FASTEST
let () = java_register_static "GL10.get_gL_FASTEST" (fun _ -> Obj.repr (get_gL_FASTEST ()))

let gL_FIXED : int = 5132
let get_gL_FIXED () = gL_FIXED
let () = java_register_static "GL10.get_gL_FIXED" (fun _ -> Obj.repr (get_gL_FIXED ()))

let gL_FLAT : int = 7424
let get_gL_FLAT () = gL_FLAT
let () = java_register_static "GL10.get_gL_FLAT" (fun _ -> Obj.repr (get_gL_FLAT ()))

let gL_FLOAT : int = 5126
let get_gL_FLOAT () = gL_FLOAT
let () = java_register_static "GL10.get_gL_FLOAT" (fun _ -> Obj.repr (get_gL_FLOAT ()))

let gL_FOG : int = 2912
let get_gL_FOG () = gL_FOG
let () = java_register_static "GL10.get_gL_FOG" (fun _ -> Obj.repr (get_gL_FOG ()))

let gL_FOG_COLOR : int = 2918
let get_gL_FOG_COLOR () = gL_FOG_COLOR
let () = java_register_static "GL10.get_gL_FOG_COLOR" (fun _ -> Obj.repr (get_gL_FOG_COLOR ()))

let gL_FOG_DENSITY : int = 2914
let get_gL_FOG_DENSITY () = gL_FOG_DENSITY
let () = java_register_static "GL10.get_gL_FOG_DENSITY" (fun _ -> Obj.repr (get_gL_FOG_DENSITY ()))

let gL_FOG_END : int = 2916
let get_gL_FOG_END () = gL_FOG_END
let () = java_register_static "GL10.get_gL_FOG_END" (fun _ -> Obj.repr (get_gL_FOG_END ()))

let gL_FOG_HINT : int = 3156
let get_gL_FOG_HINT () = gL_FOG_HINT
let () = java_register_static "GL10.get_gL_FOG_HINT" (fun _ -> Obj.repr (get_gL_FOG_HINT ()))

let gL_FOG_MODE : int = 2917
let get_gL_FOG_MODE () = gL_FOG_MODE
let () = java_register_static "GL10.get_gL_FOG_MODE" (fun _ -> Obj.repr (get_gL_FOG_MODE ()))

let gL_FOG_START : int = 2915
let get_gL_FOG_START () = gL_FOG_START
let () = java_register_static "GL10.get_gL_FOG_START" (fun _ -> Obj.repr (get_gL_FOG_START ()))

let gL_FRONT : int = 1028
let get_gL_FRONT () = gL_FRONT
let () = java_register_static "GL10.get_gL_FRONT" (fun _ -> Obj.repr (get_gL_FRONT ()))

let gL_FRONT_AND_BACK : int = 1032
let get_gL_FRONT_AND_BACK () = gL_FRONT_AND_BACK
let () = java_register_static "GL10.get_gL_FRONT_AND_BACK" (fun _ -> Obj.repr (get_gL_FRONT_AND_BACK ()))

let gL_GEQUAL : int = 518
let get_gL_GEQUAL () = gL_GEQUAL
let () = java_register_static "GL10.get_gL_GEQUAL" (fun _ -> Obj.repr (get_gL_GEQUAL ()))

let gL_GREATER : int = 516
let get_gL_GREATER () = gL_GREATER
let () = java_register_static "GL10.get_gL_GREATER" (fun _ -> Obj.repr (get_gL_GREATER ()))

let gL_GREEN_BITS : int = 3411
let get_gL_GREEN_BITS () = gL_GREEN_BITS
let () = java_register_static "GL10.get_gL_GREEN_BITS" (fun _ -> Obj.repr (get_gL_GREEN_BITS ()))

let gL_IMPLEMENTATION_COLOR_READ_FORMAT_OES : int = 35739
let get_gL_IMPLEMENTATION_COLOR_READ_FORMAT_OES () = gL_IMPLEMENTATION_COLOR_READ_FORMAT_OES
let () = java_register_static "GL10.get_gL_IMPLEMENTATION_COLOR_READ_FORMAT_OES" (fun _ -> Obj.repr (get_gL_IMPLEMENTATION_COLOR_READ_FORMAT_OES ()))

let gL_IMPLEMENTATION_COLOR_READ_TYPE_OES : int = 35738
let get_gL_IMPLEMENTATION_COLOR_READ_TYPE_OES () = gL_IMPLEMENTATION_COLOR_READ_TYPE_OES
let () = java_register_static "GL10.get_gL_IMPLEMENTATION_COLOR_READ_TYPE_OES" (fun _ -> Obj.repr (get_gL_IMPLEMENTATION_COLOR_READ_TYPE_OES ()))

let gL_INCR : int = 7682
let get_gL_INCR () = gL_INCR
let () = java_register_static "GL10.get_gL_INCR" (fun _ -> Obj.repr (get_gL_INCR ()))

let gL_INVALID_ENUM : int = 1280
let get_gL_INVALID_ENUM () = gL_INVALID_ENUM
let () = java_register_static "GL10.get_gL_INVALID_ENUM" (fun _ -> Obj.repr (get_gL_INVALID_ENUM ()))

let gL_INVALID_OPERATION : int = 1282
let get_gL_INVALID_OPERATION () = gL_INVALID_OPERATION
let () = java_register_static "GL10.get_gL_INVALID_OPERATION" (fun _ -> Obj.repr (get_gL_INVALID_OPERATION ()))

let gL_INVALID_VALUE : int = 1281
let get_gL_INVALID_VALUE () = gL_INVALID_VALUE
let () = java_register_static "GL10.get_gL_INVALID_VALUE" (fun _ -> Obj.repr (get_gL_INVALID_VALUE ()))

let gL_INVERT : int = 5386
let get_gL_INVERT () = gL_INVERT
let () = java_register_static "GL10.get_gL_INVERT" (fun _ -> Obj.repr (get_gL_INVERT ()))

let gL_KEEP : int = 7680
let get_gL_KEEP () = gL_KEEP
let () = java_register_static "GL10.get_gL_KEEP" (fun _ -> Obj.repr (get_gL_KEEP ()))

let gL_LEQUAL : int = 515
let get_gL_LEQUAL () = gL_LEQUAL
let () = java_register_static "GL10.get_gL_LEQUAL" (fun _ -> Obj.repr (get_gL_LEQUAL ()))

let gL_LESS : int = 513
let get_gL_LESS () = gL_LESS
let () = java_register_static "GL10.get_gL_LESS" (fun _ -> Obj.repr (get_gL_LESS ()))

let gL_LIGHT_MODEL_AMBIENT : int = 2899
let get_gL_LIGHT_MODEL_AMBIENT () = gL_LIGHT_MODEL_AMBIENT
let () = java_register_static "GL10.get_gL_LIGHT_MODEL_AMBIENT" (fun _ -> Obj.repr (get_gL_LIGHT_MODEL_AMBIENT ()))

let gL_LIGHT_MODEL_TWO_SIDE : int = 2898
let get_gL_LIGHT_MODEL_TWO_SIDE () = gL_LIGHT_MODEL_TWO_SIDE
let () = java_register_static "GL10.get_gL_LIGHT_MODEL_TWO_SIDE" (fun _ -> Obj.repr (get_gL_LIGHT_MODEL_TWO_SIDE ()))

let gL_LIGHT0 : int = 16384
let get_gL_LIGHT0 () = gL_LIGHT0
let () = java_register_static "GL10.get_gL_LIGHT0" (fun _ -> Obj.repr (get_gL_LIGHT0 ()))

let gL_LIGHT1 : int = 16385
let get_gL_LIGHT1 () = gL_LIGHT1
let () = java_register_static "GL10.get_gL_LIGHT1" (fun _ -> Obj.repr (get_gL_LIGHT1 ()))

let gL_LIGHT2 : int = 16386
let get_gL_LIGHT2 () = gL_LIGHT2
let () = java_register_static "GL10.get_gL_LIGHT2" (fun _ -> Obj.repr (get_gL_LIGHT2 ()))

let gL_LIGHT3 : int = 16387
let get_gL_LIGHT3 () = gL_LIGHT3
let () = java_register_static "GL10.get_gL_LIGHT3" (fun _ -> Obj.repr (get_gL_LIGHT3 ()))

let gL_LIGHT4 : int = 16388
let get_gL_LIGHT4 () = gL_LIGHT4
let () = java_register_static "GL10.get_gL_LIGHT4" (fun _ -> Obj.repr (get_gL_LIGHT4 ()))

let gL_LIGHT5 : int = 16389
let get_gL_LIGHT5 () = gL_LIGHT5
let () = java_register_static "GL10.get_gL_LIGHT5" (fun _ -> Obj.repr (get_gL_LIGHT5 ()))

let gL_LIGHT6 : int = 16390
let get_gL_LIGHT6 () = gL_LIGHT6
let () = java_register_static "GL10.get_gL_LIGHT6" (fun _ -> Obj.repr (get_gL_LIGHT6 ()))

let gL_LIGHT7 : int = 16391
let get_gL_LIGHT7 () = gL_LIGHT7
let () = java_register_static "GL10.get_gL_LIGHT7" (fun _ -> Obj.repr (get_gL_LIGHT7 ()))

let gL_LIGHTING : int = 2896
let get_gL_LIGHTING () = gL_LIGHTING
let () = java_register_static "GL10.get_gL_LIGHTING" (fun _ -> Obj.repr (get_gL_LIGHTING ()))

let gL_LINE_LOOP : int = 2
let get_gL_LINE_LOOP () = gL_LINE_LOOP
let () = java_register_static "GL10.get_gL_LINE_LOOP" (fun _ -> Obj.repr (get_gL_LINE_LOOP ()))

let gL_LINE_SMOOTH : int = 2848
let get_gL_LINE_SMOOTH () = gL_LINE_SMOOTH
let () = java_register_static "GL10.get_gL_LINE_SMOOTH" (fun _ -> Obj.repr (get_gL_LINE_SMOOTH ()))

let gL_LINE_SMOOTH_HINT : int = 3154
let get_gL_LINE_SMOOTH_HINT () = gL_LINE_SMOOTH_HINT
let () = java_register_static "GL10.get_gL_LINE_SMOOTH_HINT" (fun _ -> Obj.repr (get_gL_LINE_SMOOTH_HINT ()))

let gL_LINE_STRIP : int = 3
let get_gL_LINE_STRIP () = gL_LINE_STRIP
let () = java_register_static "GL10.get_gL_LINE_STRIP" (fun _ -> Obj.repr (get_gL_LINE_STRIP ()))

let gL_LINEAR : int = 9729
let get_gL_LINEAR () = gL_LINEAR
let () = java_register_static "GL10.get_gL_LINEAR" (fun _ -> Obj.repr (get_gL_LINEAR ()))

let gL_LINEAR_ATTENUATION : int = 4616
let get_gL_LINEAR_ATTENUATION () = gL_LINEAR_ATTENUATION
let () = java_register_static "GL10.get_gL_LINEAR_ATTENUATION" (fun _ -> Obj.repr (get_gL_LINEAR_ATTENUATION ()))

let gL_LINEAR_MIPMAP_LINEAR : int = 9987
let get_gL_LINEAR_MIPMAP_LINEAR () = gL_LINEAR_MIPMAP_LINEAR
let () = java_register_static "GL10.get_gL_LINEAR_MIPMAP_LINEAR" (fun _ -> Obj.repr (get_gL_LINEAR_MIPMAP_LINEAR ()))

let gL_LINEAR_MIPMAP_NEAREST : int = 9985
let get_gL_LINEAR_MIPMAP_NEAREST () = gL_LINEAR_MIPMAP_NEAREST
let () = java_register_static "GL10.get_gL_LINEAR_MIPMAP_NEAREST" (fun _ -> Obj.repr (get_gL_LINEAR_MIPMAP_NEAREST ()))

let gL_LINES : int = 1
let get_gL_LINES () = gL_LINES
let () = java_register_static "GL10.get_gL_LINES" (fun _ -> Obj.repr (get_gL_LINES ()))

let gL_LUMINANCE : int = 6409
let get_gL_LUMINANCE () = gL_LUMINANCE
let () = java_register_static "GL10.get_gL_LUMINANCE" (fun _ -> Obj.repr (get_gL_LUMINANCE ()))

let gL_LUMINANCE_ALPHA : int = 6410
let get_gL_LUMINANCE_ALPHA () = gL_LUMINANCE_ALPHA
let () = java_register_static "GL10.get_gL_LUMINANCE_ALPHA" (fun _ -> Obj.repr (get_gL_LUMINANCE_ALPHA ()))

let gL_MAX_ELEMENTS_INDICES : int = 33001
let get_gL_MAX_ELEMENTS_INDICES () = gL_MAX_ELEMENTS_INDICES
let () = java_register_static "GL10.get_gL_MAX_ELEMENTS_INDICES" (fun _ -> Obj.repr (get_gL_MAX_ELEMENTS_INDICES ()))

let gL_MAX_ELEMENTS_VERTICES : int = 33000
let get_gL_MAX_ELEMENTS_VERTICES () = gL_MAX_ELEMENTS_VERTICES
let () = java_register_static "GL10.get_gL_MAX_ELEMENTS_VERTICES" (fun _ -> Obj.repr (get_gL_MAX_ELEMENTS_VERTICES ()))

let gL_MAX_LIGHTS : int = 3377
let get_gL_MAX_LIGHTS () = gL_MAX_LIGHTS
let () = java_register_static "GL10.get_gL_MAX_LIGHTS" (fun _ -> Obj.repr (get_gL_MAX_LIGHTS ()))

let gL_MAX_MODELVIEW_STACK_DEPTH : int = 3382
let get_gL_MAX_MODELVIEW_STACK_DEPTH () = gL_MAX_MODELVIEW_STACK_DEPTH
let () = java_register_static "GL10.get_gL_MAX_MODELVIEW_STACK_DEPTH" (fun _ -> Obj.repr (get_gL_MAX_MODELVIEW_STACK_DEPTH ()))

let gL_MAX_PROJECTION_STACK_DEPTH : int = 3384
let get_gL_MAX_PROJECTION_STACK_DEPTH () = gL_MAX_PROJECTION_STACK_DEPTH
let () = java_register_static "GL10.get_gL_MAX_PROJECTION_STACK_DEPTH" (fun _ -> Obj.repr (get_gL_MAX_PROJECTION_STACK_DEPTH ()))

let gL_MAX_TEXTURE_SIZE : int = 3379
let get_gL_MAX_TEXTURE_SIZE () = gL_MAX_TEXTURE_SIZE
let () = java_register_static "GL10.get_gL_MAX_TEXTURE_SIZE" (fun _ -> Obj.repr (get_gL_MAX_TEXTURE_SIZE ()))

let gL_MAX_TEXTURE_STACK_DEPTH : int = 3385
let get_gL_MAX_TEXTURE_STACK_DEPTH () = gL_MAX_TEXTURE_STACK_DEPTH
let () = java_register_static "GL10.get_gL_MAX_TEXTURE_STACK_DEPTH" (fun _ -> Obj.repr (get_gL_MAX_TEXTURE_STACK_DEPTH ()))

let gL_MAX_TEXTURE_UNITS : int = 34018
let get_gL_MAX_TEXTURE_UNITS () = gL_MAX_TEXTURE_UNITS
let () = java_register_static "GL10.get_gL_MAX_TEXTURE_UNITS" (fun _ -> Obj.repr (get_gL_MAX_TEXTURE_UNITS ()))

let gL_MAX_VIEWPORT_DIMS : int = 3386
let get_gL_MAX_VIEWPORT_DIMS () = gL_MAX_VIEWPORT_DIMS
let () = java_register_static "GL10.get_gL_MAX_VIEWPORT_DIMS" (fun _ -> Obj.repr (get_gL_MAX_VIEWPORT_DIMS ()))

let gL_MODELVIEW : int = 5888
let get_gL_MODELVIEW () = gL_MODELVIEW
let () = java_register_static "GL10.get_gL_MODELVIEW" (fun _ -> Obj.repr (get_gL_MODELVIEW ()))

let gL_MODULATE : int = 8448
let get_gL_MODULATE () = gL_MODULATE
let () = java_register_static "GL10.get_gL_MODULATE" (fun _ -> Obj.repr (get_gL_MODULATE ()))

let gL_MULTISAMPLE : int = 32925
let get_gL_MULTISAMPLE () = gL_MULTISAMPLE
let () = java_register_static "GL10.get_gL_MULTISAMPLE" (fun _ -> Obj.repr (get_gL_MULTISAMPLE ()))

let gL_NAND : int = 5390
let get_gL_NAND () = gL_NAND
let () = java_register_static "GL10.get_gL_NAND" (fun _ -> Obj.repr (get_gL_NAND ()))

let gL_NEAREST : int = 9728
let get_gL_NEAREST () = gL_NEAREST
let () = java_register_static "GL10.get_gL_NEAREST" (fun _ -> Obj.repr (get_gL_NEAREST ()))

let gL_NEAREST_MIPMAP_LINEAR : int = 9986
let get_gL_NEAREST_MIPMAP_LINEAR () = gL_NEAREST_MIPMAP_LINEAR
let () = java_register_static "GL10.get_gL_NEAREST_MIPMAP_LINEAR" (fun _ -> Obj.repr (get_gL_NEAREST_MIPMAP_LINEAR ()))

let gL_NEAREST_MIPMAP_NEAREST : int = 9984
let get_gL_NEAREST_MIPMAP_NEAREST () = gL_NEAREST_MIPMAP_NEAREST
let () = java_register_static "GL10.get_gL_NEAREST_MIPMAP_NEAREST" (fun _ -> Obj.repr (get_gL_NEAREST_MIPMAP_NEAREST ()))

let gL_NEVER : int = 512
let get_gL_NEVER () = gL_NEVER
let () = java_register_static "GL10.get_gL_NEVER" (fun _ -> Obj.repr (get_gL_NEVER ()))

let gL_NICEST : int = 4354
let get_gL_NICEST () = gL_NICEST
let () = java_register_static "GL10.get_gL_NICEST" (fun _ -> Obj.repr (get_gL_NICEST ()))

let gL_NO_ERROR : int = 0
let get_gL_NO_ERROR () = gL_NO_ERROR
let () = java_register_static "GL10.get_gL_NO_ERROR" (fun _ -> Obj.repr (get_gL_NO_ERROR ()))

let gL_NOOP : int = 5381
let get_gL_NOOP () = gL_NOOP
let () = java_register_static "GL10.get_gL_NOOP" (fun _ -> Obj.repr (get_gL_NOOP ()))

let gL_NOR : int = 5384
let get_gL_NOR () = gL_NOR
let () = java_register_static "GL10.get_gL_NOR" (fun _ -> Obj.repr (get_gL_NOR ()))

let gL_NORMAL_ARRAY : int = 32885
let get_gL_NORMAL_ARRAY () = gL_NORMAL_ARRAY
let () = java_register_static "GL10.get_gL_NORMAL_ARRAY" (fun _ -> Obj.repr (get_gL_NORMAL_ARRAY ()))

let gL_NORMALIZE : int = 2977
let get_gL_NORMALIZE () = gL_NORMALIZE
let () = java_register_static "GL10.get_gL_NORMALIZE" (fun _ -> Obj.repr (get_gL_NORMALIZE ()))

let gL_NOTEQUAL : int = 517
let get_gL_NOTEQUAL () = gL_NOTEQUAL
let () = java_register_static "GL10.get_gL_NOTEQUAL" (fun _ -> Obj.repr (get_gL_NOTEQUAL ()))

let gL_NUM_COMPRESSED_TEXTURE_FORMATS : int = 34466
let get_gL_NUM_COMPRESSED_TEXTURE_FORMATS () = gL_NUM_COMPRESSED_TEXTURE_FORMATS
let () = java_register_static "GL10.get_gL_NUM_COMPRESSED_TEXTURE_FORMATS" (fun _ -> Obj.repr (get_gL_NUM_COMPRESSED_TEXTURE_FORMATS ()))

let gL_ONE : int = 1
let get_gL_ONE () = gL_ONE
let () = java_register_static "GL10.get_gL_ONE" (fun _ -> Obj.repr (get_gL_ONE ()))

let gL_ONE_MINUS_DST_ALPHA : int = 773
let get_gL_ONE_MINUS_DST_ALPHA () = gL_ONE_MINUS_DST_ALPHA
let () = java_register_static "GL10.get_gL_ONE_MINUS_DST_ALPHA" (fun _ -> Obj.repr (get_gL_ONE_MINUS_DST_ALPHA ()))

let gL_ONE_MINUS_DST_COLOR : int = 775
let get_gL_ONE_MINUS_DST_COLOR () = gL_ONE_MINUS_DST_COLOR
let () = java_register_static "GL10.get_gL_ONE_MINUS_DST_COLOR" (fun _ -> Obj.repr (get_gL_ONE_MINUS_DST_COLOR ()))

let gL_ONE_MINUS_SRC_ALPHA : int = 771
let get_gL_ONE_MINUS_SRC_ALPHA () = gL_ONE_MINUS_SRC_ALPHA
let () = java_register_static "GL10.get_gL_ONE_MINUS_SRC_ALPHA" (fun _ -> Obj.repr (get_gL_ONE_MINUS_SRC_ALPHA ()))

let gL_ONE_MINUS_SRC_COLOR : int = 769
let get_gL_ONE_MINUS_SRC_COLOR () = gL_ONE_MINUS_SRC_COLOR
let () = java_register_static "GL10.get_gL_ONE_MINUS_SRC_COLOR" (fun _ -> Obj.repr (get_gL_ONE_MINUS_SRC_COLOR ()))

let gL_OR : int = 5383
let get_gL_OR () = gL_OR
let () = java_register_static "GL10.get_gL_OR" (fun _ -> Obj.repr (get_gL_OR ()))

let gL_OR_INVERTED : int = 5389
let get_gL_OR_INVERTED () = gL_OR_INVERTED
let () = java_register_static "GL10.get_gL_OR_INVERTED" (fun _ -> Obj.repr (get_gL_OR_INVERTED ()))

let gL_OR_REVERSE : int = 5387
let get_gL_OR_REVERSE () = gL_OR_REVERSE
let () = java_register_static "GL10.get_gL_OR_REVERSE" (fun _ -> Obj.repr (get_gL_OR_REVERSE ()))

let gL_OUT_OF_MEMORY : int = 1285
let get_gL_OUT_OF_MEMORY () = gL_OUT_OF_MEMORY
let () = java_register_static "GL10.get_gL_OUT_OF_MEMORY" (fun _ -> Obj.repr (get_gL_OUT_OF_MEMORY ()))

let gL_PACK_ALIGNMENT : int = 3333
let get_gL_PACK_ALIGNMENT () = gL_PACK_ALIGNMENT
let () = java_register_static "GL10.get_gL_PACK_ALIGNMENT" (fun _ -> Obj.repr (get_gL_PACK_ALIGNMENT ()))

let gL_PALETTE4_R5_G6_B5_OES : int = 35730
let get_gL_PALETTE4_R5_G6_B5_OES () = gL_PALETTE4_R5_G6_B5_OES
let () = java_register_static "GL10.get_gL_PALETTE4_R5_G6_B5_OES" (fun _ -> Obj.repr (get_gL_PALETTE4_R5_G6_B5_OES ()))

let gL_PALETTE4_RGB5_A1_OES : int = 35732
let get_gL_PALETTE4_RGB5_A1_OES () = gL_PALETTE4_RGB5_A1_OES
let () = java_register_static "GL10.get_gL_PALETTE4_RGB5_A1_OES" (fun _ -> Obj.repr (get_gL_PALETTE4_RGB5_A1_OES ()))

let gL_PALETTE4_RGB8_OES : int = 35728
let get_gL_PALETTE4_RGB8_OES () = gL_PALETTE4_RGB8_OES
let () = java_register_static "GL10.get_gL_PALETTE4_RGB8_OES" (fun _ -> Obj.repr (get_gL_PALETTE4_RGB8_OES ()))

let gL_PALETTE4_RGBA4_OES : int = 35731
let get_gL_PALETTE4_RGBA4_OES () = gL_PALETTE4_RGBA4_OES
let () = java_register_static "GL10.get_gL_PALETTE4_RGBA4_OES" (fun _ -> Obj.repr (get_gL_PALETTE4_RGBA4_OES ()))

let gL_PALETTE4_RGBA8_OES : int = 35729
let get_gL_PALETTE4_RGBA8_OES () = gL_PALETTE4_RGBA8_OES
let () = java_register_static "GL10.get_gL_PALETTE4_RGBA8_OES" (fun _ -> Obj.repr (get_gL_PALETTE4_RGBA8_OES ()))

let gL_PALETTE8_R5_G6_B5_OES : int = 35735
let get_gL_PALETTE8_R5_G6_B5_OES () = gL_PALETTE8_R5_G6_B5_OES
let () = java_register_static "GL10.get_gL_PALETTE8_R5_G6_B5_OES" (fun _ -> Obj.repr (get_gL_PALETTE8_R5_G6_B5_OES ()))

let gL_PALETTE8_RGB5_A1_OES : int = 35737
let get_gL_PALETTE8_RGB5_A1_OES () = gL_PALETTE8_RGB5_A1_OES
let () = java_register_static "GL10.get_gL_PALETTE8_RGB5_A1_OES" (fun _ -> Obj.repr (get_gL_PALETTE8_RGB5_A1_OES ()))

let gL_PALETTE8_RGB8_OES : int = 35733
let get_gL_PALETTE8_RGB8_OES () = gL_PALETTE8_RGB8_OES
let () = java_register_static "GL10.get_gL_PALETTE8_RGB8_OES" (fun _ -> Obj.repr (get_gL_PALETTE8_RGB8_OES ()))

let gL_PALETTE8_RGBA4_OES : int = 35736
let get_gL_PALETTE8_RGBA4_OES () = gL_PALETTE8_RGBA4_OES
let () = java_register_static "GL10.get_gL_PALETTE8_RGBA4_OES" (fun _ -> Obj.repr (get_gL_PALETTE8_RGBA4_OES ()))

let gL_PALETTE8_RGBA8_OES : int = 35734
let get_gL_PALETTE8_RGBA8_OES () = gL_PALETTE8_RGBA8_OES
let () = java_register_static "GL10.get_gL_PALETTE8_RGBA8_OES" (fun _ -> Obj.repr (get_gL_PALETTE8_RGBA8_OES ()))

let gL_PERSPECTIVE_CORRECTION_HINT : int = 3152
let get_gL_PERSPECTIVE_CORRECTION_HINT () = gL_PERSPECTIVE_CORRECTION_HINT
let () = java_register_static "GL10.get_gL_PERSPECTIVE_CORRECTION_HINT" (fun _ -> Obj.repr (get_gL_PERSPECTIVE_CORRECTION_HINT ()))

let gL_POINT_SMOOTH : int = 2832
let get_gL_POINT_SMOOTH () = gL_POINT_SMOOTH
let () = java_register_static "GL10.get_gL_POINT_SMOOTH" (fun _ -> Obj.repr (get_gL_POINT_SMOOTH ()))

let gL_POINT_SMOOTH_HINT : int = 3153
let get_gL_POINT_SMOOTH_HINT () = gL_POINT_SMOOTH_HINT
let () = java_register_static "GL10.get_gL_POINT_SMOOTH_HINT" (fun _ -> Obj.repr (get_gL_POINT_SMOOTH_HINT ()))

let gL_POINTS : int = 0
let get_gL_POINTS () = gL_POINTS
let () = java_register_static "GL10.get_gL_POINTS" (fun _ -> Obj.repr (get_gL_POINTS ()))

let gL_POINT_FADE_THRESHOLD_SIZE : int = 33064
let get_gL_POINT_FADE_THRESHOLD_SIZE () = gL_POINT_FADE_THRESHOLD_SIZE
let () = java_register_static "GL10.get_gL_POINT_FADE_THRESHOLD_SIZE" (fun _ -> Obj.repr (get_gL_POINT_FADE_THRESHOLD_SIZE ()))

let gL_POINT_SIZE : int = 2833
let get_gL_POINT_SIZE () = gL_POINT_SIZE
let () = java_register_static "GL10.get_gL_POINT_SIZE" (fun _ -> Obj.repr (get_gL_POINT_SIZE ()))

let gL_POLYGON_OFFSET_FILL : int = 32823
let get_gL_POLYGON_OFFSET_FILL () = gL_POLYGON_OFFSET_FILL
let () = java_register_static "GL10.get_gL_POLYGON_OFFSET_FILL" (fun _ -> Obj.repr (get_gL_POLYGON_OFFSET_FILL ()))

let gL_POLYGON_SMOOTH_HINT : int = 3155
let get_gL_POLYGON_SMOOTH_HINT () = gL_POLYGON_SMOOTH_HINT
let () = java_register_static "GL10.get_gL_POLYGON_SMOOTH_HINT" (fun _ -> Obj.repr (get_gL_POLYGON_SMOOTH_HINT ()))

let gL_POSITION : int = 4611
let get_gL_POSITION () = gL_POSITION
let () = java_register_static "GL10.get_gL_POSITION" (fun _ -> Obj.repr (get_gL_POSITION ()))

let gL_PROJECTION : int = 5889
let get_gL_PROJECTION () = gL_PROJECTION
let () = java_register_static "GL10.get_gL_PROJECTION" (fun _ -> Obj.repr (get_gL_PROJECTION ()))

let gL_QUADRATIC_ATTENUATION : int = 4617
let get_gL_QUADRATIC_ATTENUATION () = gL_QUADRATIC_ATTENUATION
let () = java_register_static "GL10.get_gL_QUADRATIC_ATTENUATION" (fun _ -> Obj.repr (get_gL_QUADRATIC_ATTENUATION ()))

let gL_RED_BITS : int = 3410
let get_gL_RED_BITS () = gL_RED_BITS
let () = java_register_static "GL10.get_gL_RED_BITS" (fun _ -> Obj.repr (get_gL_RED_BITS ()))

let gL_RENDERER : int = 7937
let get_gL_RENDERER () = gL_RENDERER
let () = java_register_static "GL10.get_gL_RENDERER" (fun _ -> Obj.repr (get_gL_RENDERER ()))

let gL_REPEAT : int = 10497
let get_gL_REPEAT () = gL_REPEAT
let () = java_register_static "GL10.get_gL_REPEAT" (fun _ -> Obj.repr (get_gL_REPEAT ()))

let gL_REPLACE : int = 7681
let get_gL_REPLACE () = gL_REPLACE
let () = java_register_static "GL10.get_gL_REPLACE" (fun _ -> Obj.repr (get_gL_REPLACE ()))

let gL_RESCALE_NORMAL : int = 32826
let get_gL_RESCALE_NORMAL () = gL_RESCALE_NORMAL
let () = java_register_static "GL10.get_gL_RESCALE_NORMAL" (fun _ -> Obj.repr (get_gL_RESCALE_NORMAL ()))

let gL_RGB : int = 6407
let get_gL_RGB () = gL_RGB
let () = java_register_static "GL10.get_gL_RGB" (fun _ -> Obj.repr (get_gL_RGB ()))

let gL_RGBA : int = 6408
let get_gL_RGBA () = gL_RGBA
let () = java_register_static "GL10.get_gL_RGBA" (fun _ -> Obj.repr (get_gL_RGBA ()))

let gL_SAMPLE_ALPHA_TO_COVERAGE : int = 32926
let get_gL_SAMPLE_ALPHA_TO_COVERAGE () = gL_SAMPLE_ALPHA_TO_COVERAGE
let () = java_register_static "GL10.get_gL_SAMPLE_ALPHA_TO_COVERAGE" (fun _ -> Obj.repr (get_gL_SAMPLE_ALPHA_TO_COVERAGE ()))

let gL_SAMPLE_ALPHA_TO_ONE : int = 32927
let get_gL_SAMPLE_ALPHA_TO_ONE () = gL_SAMPLE_ALPHA_TO_ONE
let () = java_register_static "GL10.get_gL_SAMPLE_ALPHA_TO_ONE" (fun _ -> Obj.repr (get_gL_SAMPLE_ALPHA_TO_ONE ()))

let gL_SAMPLE_COVERAGE : int = 32928
let get_gL_SAMPLE_COVERAGE () = gL_SAMPLE_COVERAGE
let () = java_register_static "GL10.get_gL_SAMPLE_COVERAGE" (fun _ -> Obj.repr (get_gL_SAMPLE_COVERAGE ()))

let gL_SCISSOR_TEST : int = 3089
let get_gL_SCISSOR_TEST () = gL_SCISSOR_TEST
let () = java_register_static "GL10.get_gL_SCISSOR_TEST" (fun _ -> Obj.repr (get_gL_SCISSOR_TEST ()))

let gL_SET : int = 5391
let get_gL_SET () = gL_SET
let () = java_register_static "GL10.get_gL_SET" (fun _ -> Obj.repr (get_gL_SET ()))

let gL_SHININESS : int = 5633
let get_gL_SHININESS () = gL_SHININESS
let () = java_register_static "GL10.get_gL_SHININESS" (fun _ -> Obj.repr (get_gL_SHININESS ()))

let gL_SHORT : int = 5122
let get_gL_SHORT () = gL_SHORT
let () = java_register_static "GL10.get_gL_SHORT" (fun _ -> Obj.repr (get_gL_SHORT ()))

let gL_SMOOTH : int = 7425
let get_gL_SMOOTH () = gL_SMOOTH
let () = java_register_static "GL10.get_gL_SMOOTH" (fun _ -> Obj.repr (get_gL_SMOOTH ()))

let gL_SMOOTH_LINE_WIDTH_RANGE : int = 2850
let get_gL_SMOOTH_LINE_WIDTH_RANGE () = gL_SMOOTH_LINE_WIDTH_RANGE
let () = java_register_static "GL10.get_gL_SMOOTH_LINE_WIDTH_RANGE" (fun _ -> Obj.repr (get_gL_SMOOTH_LINE_WIDTH_RANGE ()))

let gL_SMOOTH_POINT_SIZE_RANGE : int = 2834
let get_gL_SMOOTH_POINT_SIZE_RANGE () = gL_SMOOTH_POINT_SIZE_RANGE
let () = java_register_static "GL10.get_gL_SMOOTH_POINT_SIZE_RANGE" (fun _ -> Obj.repr (get_gL_SMOOTH_POINT_SIZE_RANGE ()))

let gL_SPECULAR : int = 4610
let get_gL_SPECULAR () = gL_SPECULAR
let () = java_register_static "GL10.get_gL_SPECULAR" (fun _ -> Obj.repr (get_gL_SPECULAR ()))

let gL_SPOT_CUTOFF : int = 4614
let get_gL_SPOT_CUTOFF () = gL_SPOT_CUTOFF
let () = java_register_static "GL10.get_gL_SPOT_CUTOFF" (fun _ -> Obj.repr (get_gL_SPOT_CUTOFF ()))

let gL_SPOT_DIRECTION : int = 4612
let get_gL_SPOT_DIRECTION () = gL_SPOT_DIRECTION
let () = java_register_static "GL10.get_gL_SPOT_DIRECTION" (fun _ -> Obj.repr (get_gL_SPOT_DIRECTION ()))

let gL_SPOT_EXPONENT : int = 4613
let get_gL_SPOT_EXPONENT () = gL_SPOT_EXPONENT
let () = java_register_static "GL10.get_gL_SPOT_EXPONENT" (fun _ -> Obj.repr (get_gL_SPOT_EXPONENT ()))

let gL_SRC_ALPHA : int = 770
let get_gL_SRC_ALPHA () = gL_SRC_ALPHA
let () = java_register_static "GL10.get_gL_SRC_ALPHA" (fun _ -> Obj.repr (get_gL_SRC_ALPHA ()))

let gL_SRC_ALPHA_SATURATE : int = 776
let get_gL_SRC_ALPHA_SATURATE () = gL_SRC_ALPHA_SATURATE
let () = java_register_static "GL10.get_gL_SRC_ALPHA_SATURATE" (fun _ -> Obj.repr (get_gL_SRC_ALPHA_SATURATE ()))

let gL_SRC_COLOR : int = 768
let get_gL_SRC_COLOR () = gL_SRC_COLOR
let () = java_register_static "GL10.get_gL_SRC_COLOR" (fun _ -> Obj.repr (get_gL_SRC_COLOR ()))

let gL_STACK_OVERFLOW : int = 1283
let get_gL_STACK_OVERFLOW () = gL_STACK_OVERFLOW
let () = java_register_static "GL10.get_gL_STACK_OVERFLOW" (fun _ -> Obj.repr (get_gL_STACK_OVERFLOW ()))

let gL_STACK_UNDERFLOW : int = 1284
let get_gL_STACK_UNDERFLOW () = gL_STACK_UNDERFLOW
let () = java_register_static "GL10.get_gL_STACK_UNDERFLOW" (fun _ -> Obj.repr (get_gL_STACK_UNDERFLOW ()))

let gL_STENCIL_BITS : int = 3415
let get_gL_STENCIL_BITS () = gL_STENCIL_BITS
let () = java_register_static "GL10.get_gL_STENCIL_BITS" (fun _ -> Obj.repr (get_gL_STENCIL_BITS ()))

let gL_STENCIL_BUFFER_BIT : int = 1024
let get_gL_STENCIL_BUFFER_BIT () = gL_STENCIL_BUFFER_BIT
let () = java_register_static "GL10.get_gL_STENCIL_BUFFER_BIT" (fun _ -> Obj.repr (get_gL_STENCIL_BUFFER_BIT ()))

let gL_STENCIL_TEST : int = 2960
let get_gL_STENCIL_TEST () = gL_STENCIL_TEST
let () = java_register_static "GL10.get_gL_STENCIL_TEST" (fun _ -> Obj.repr (get_gL_STENCIL_TEST ()))

let gL_SUBPIXEL_BITS : int = 3408
let get_gL_SUBPIXEL_BITS () = gL_SUBPIXEL_BITS
let () = java_register_static "GL10.get_gL_SUBPIXEL_BITS" (fun _ -> Obj.repr (get_gL_SUBPIXEL_BITS ()))

let gL_TEXTURE : int = 5890
let get_gL_TEXTURE () = gL_TEXTURE
let () = java_register_static "GL10.get_gL_TEXTURE" (fun _ -> Obj.repr (get_gL_TEXTURE ()))

let gL_TEXTURE_2D : int = 3553
let get_gL_TEXTURE_2D () = gL_TEXTURE_2D
let () = java_register_static "GL10.get_gL_TEXTURE_2D" (fun _ -> Obj.repr (get_gL_TEXTURE_2D ()))

let gL_TEXTURE_COORD_ARRAY : int = 32888
let get_gL_TEXTURE_COORD_ARRAY () = gL_TEXTURE_COORD_ARRAY
let () = java_register_static "GL10.get_gL_TEXTURE_COORD_ARRAY" (fun _ -> Obj.repr (get_gL_TEXTURE_COORD_ARRAY ()))

let gL_TEXTURE_ENV : int = 8960
let get_gL_TEXTURE_ENV () = gL_TEXTURE_ENV
let () = java_register_static "GL10.get_gL_TEXTURE_ENV" (fun _ -> Obj.repr (get_gL_TEXTURE_ENV ()))

let gL_TEXTURE_ENV_COLOR : int = 8705
let get_gL_TEXTURE_ENV_COLOR () = gL_TEXTURE_ENV_COLOR
let () = java_register_static "GL10.get_gL_TEXTURE_ENV_COLOR" (fun _ -> Obj.repr (get_gL_TEXTURE_ENV_COLOR ()))

let gL_TEXTURE_ENV_MODE : int = 8704
let get_gL_TEXTURE_ENV_MODE () = gL_TEXTURE_ENV_MODE
let () = java_register_static "GL10.get_gL_TEXTURE_ENV_MODE" (fun _ -> Obj.repr (get_gL_TEXTURE_ENV_MODE ()))

let gL_TEXTURE_MAG_FILTER : int = 10240
let get_gL_TEXTURE_MAG_FILTER () = gL_TEXTURE_MAG_FILTER
let () = java_register_static "GL10.get_gL_TEXTURE_MAG_FILTER" (fun _ -> Obj.repr (get_gL_TEXTURE_MAG_FILTER ()))

let gL_TEXTURE_MIN_FILTER : int = 10241
let get_gL_TEXTURE_MIN_FILTER () = gL_TEXTURE_MIN_FILTER
let () = java_register_static "GL10.get_gL_TEXTURE_MIN_FILTER" (fun _ -> Obj.repr (get_gL_TEXTURE_MIN_FILTER ()))

let gL_TEXTURE_WRAP_S : int = 10242
let get_gL_TEXTURE_WRAP_S () = gL_TEXTURE_WRAP_S
let () = java_register_static "GL10.get_gL_TEXTURE_WRAP_S" (fun _ -> Obj.repr (get_gL_TEXTURE_WRAP_S ()))

let gL_TEXTURE_WRAP_T : int = 10243
let get_gL_TEXTURE_WRAP_T () = gL_TEXTURE_WRAP_T
let () = java_register_static "GL10.get_gL_TEXTURE_WRAP_T" (fun _ -> Obj.repr (get_gL_TEXTURE_WRAP_T ()))

let gL_TEXTURE0 : int = 33984
let get_gL_TEXTURE0 () = gL_TEXTURE0
let () = java_register_static "GL10.get_gL_TEXTURE0" (fun _ -> Obj.repr (get_gL_TEXTURE0 ()))

let gL_TEXTURE1 : int = 33985
let get_gL_TEXTURE1 () = gL_TEXTURE1
let () = java_register_static "GL10.get_gL_TEXTURE1" (fun _ -> Obj.repr (get_gL_TEXTURE1 ()))

let gL_TEXTURE2 : int = 33986
let get_gL_TEXTURE2 () = gL_TEXTURE2
let () = java_register_static "GL10.get_gL_TEXTURE2" (fun _ -> Obj.repr (get_gL_TEXTURE2 ()))

let gL_TEXTURE3 : int = 33987
let get_gL_TEXTURE3 () = gL_TEXTURE3
let () = java_register_static "GL10.get_gL_TEXTURE3" (fun _ -> Obj.repr (get_gL_TEXTURE3 ()))

let gL_TEXTURE4 : int = 33988
let get_gL_TEXTURE4 () = gL_TEXTURE4
let () = java_register_static "GL10.get_gL_TEXTURE4" (fun _ -> Obj.repr (get_gL_TEXTURE4 ()))

let gL_TEXTURE5 : int = 33989
let get_gL_TEXTURE5 () = gL_TEXTURE5
let () = java_register_static "GL10.get_gL_TEXTURE5" (fun _ -> Obj.repr (get_gL_TEXTURE5 ()))

let gL_TEXTURE6 : int = 33990
let get_gL_TEXTURE6 () = gL_TEXTURE6
let () = java_register_static "GL10.get_gL_TEXTURE6" (fun _ -> Obj.repr (get_gL_TEXTURE6 ()))

let gL_TEXTURE7 : int = 33991
let get_gL_TEXTURE7 () = gL_TEXTURE7
let () = java_register_static "GL10.get_gL_TEXTURE7" (fun _ -> Obj.repr (get_gL_TEXTURE7 ()))

let gL_TEXTURE8 : int = 33992
let get_gL_TEXTURE8 () = gL_TEXTURE8
let () = java_register_static "GL10.get_gL_TEXTURE8" (fun _ -> Obj.repr (get_gL_TEXTURE8 ()))

let gL_TEXTURE9 : int = 33993
let get_gL_TEXTURE9 () = gL_TEXTURE9
let () = java_register_static "GL10.get_gL_TEXTURE9" (fun _ -> Obj.repr (get_gL_TEXTURE9 ()))

let gL_TEXTURE10 : int = 33994
let get_gL_TEXTURE10 () = gL_TEXTURE10
let () = java_register_static "GL10.get_gL_TEXTURE10" (fun _ -> Obj.repr (get_gL_TEXTURE10 ()))

let gL_TEXTURE11 : int = 33995
let get_gL_TEXTURE11 () = gL_TEXTURE11
let () = java_register_static "GL10.get_gL_TEXTURE11" (fun _ -> Obj.repr (get_gL_TEXTURE11 ()))

let gL_TEXTURE12 : int = 33996
let get_gL_TEXTURE12 () = gL_TEXTURE12
let () = java_register_static "GL10.get_gL_TEXTURE12" (fun _ -> Obj.repr (get_gL_TEXTURE12 ()))

let gL_TEXTURE13 : int = 33997
let get_gL_TEXTURE13 () = gL_TEXTURE13
let () = java_register_static "GL10.get_gL_TEXTURE13" (fun _ -> Obj.repr (get_gL_TEXTURE13 ()))

let gL_TEXTURE14 : int = 33998
let get_gL_TEXTURE14 () = gL_TEXTURE14
let () = java_register_static "GL10.get_gL_TEXTURE14" (fun _ -> Obj.repr (get_gL_TEXTURE14 ()))

let gL_TEXTURE15 : int = 33999
let get_gL_TEXTURE15 () = gL_TEXTURE15
let () = java_register_static "GL10.get_gL_TEXTURE15" (fun _ -> Obj.repr (get_gL_TEXTURE15 ()))

let gL_TEXTURE16 : int = 34000
let get_gL_TEXTURE16 () = gL_TEXTURE16
let () = java_register_static "GL10.get_gL_TEXTURE16" (fun _ -> Obj.repr (get_gL_TEXTURE16 ()))

let gL_TEXTURE17 : int = 34001
let get_gL_TEXTURE17 () = gL_TEXTURE17
let () = java_register_static "GL10.get_gL_TEXTURE17" (fun _ -> Obj.repr (get_gL_TEXTURE17 ()))

let gL_TEXTURE18 : int = 34002
let get_gL_TEXTURE18 () = gL_TEXTURE18
let () = java_register_static "GL10.get_gL_TEXTURE18" (fun _ -> Obj.repr (get_gL_TEXTURE18 ()))

let gL_TEXTURE19 : int = 34003
let get_gL_TEXTURE19 () = gL_TEXTURE19
let () = java_register_static "GL10.get_gL_TEXTURE19" (fun _ -> Obj.repr (get_gL_TEXTURE19 ()))

let gL_TEXTURE20 : int = 34004
let get_gL_TEXTURE20 () = gL_TEXTURE20
let () = java_register_static "GL10.get_gL_TEXTURE20" (fun _ -> Obj.repr (get_gL_TEXTURE20 ()))

let gL_TEXTURE21 : int = 34005
let get_gL_TEXTURE21 () = gL_TEXTURE21
let () = java_register_static "GL10.get_gL_TEXTURE21" (fun _ -> Obj.repr (get_gL_TEXTURE21 ()))

let gL_TEXTURE22 : int = 34006
let get_gL_TEXTURE22 () = gL_TEXTURE22
let () = java_register_static "GL10.get_gL_TEXTURE22" (fun _ -> Obj.repr (get_gL_TEXTURE22 ()))

let gL_TEXTURE23 : int = 34007
let get_gL_TEXTURE23 () = gL_TEXTURE23
let () = java_register_static "GL10.get_gL_TEXTURE23" (fun _ -> Obj.repr (get_gL_TEXTURE23 ()))

let gL_TEXTURE24 : int = 34008
let get_gL_TEXTURE24 () = gL_TEXTURE24
let () = java_register_static "GL10.get_gL_TEXTURE24" (fun _ -> Obj.repr (get_gL_TEXTURE24 ()))

let gL_TEXTURE25 : int = 34009
let get_gL_TEXTURE25 () = gL_TEXTURE25
let () = java_register_static "GL10.get_gL_TEXTURE25" (fun _ -> Obj.repr (get_gL_TEXTURE25 ()))

let gL_TEXTURE26 : int = 34010
let get_gL_TEXTURE26 () = gL_TEXTURE26
let () = java_register_static "GL10.get_gL_TEXTURE26" (fun _ -> Obj.repr (get_gL_TEXTURE26 ()))

let gL_TEXTURE27 : int = 34011
let get_gL_TEXTURE27 () = gL_TEXTURE27
let () = java_register_static "GL10.get_gL_TEXTURE27" (fun _ -> Obj.repr (get_gL_TEXTURE27 ()))

let gL_TEXTURE28 : int = 34012
let get_gL_TEXTURE28 () = gL_TEXTURE28
let () = java_register_static "GL10.get_gL_TEXTURE28" (fun _ -> Obj.repr (get_gL_TEXTURE28 ()))

let gL_TEXTURE29 : int = 34013
let get_gL_TEXTURE29 () = gL_TEXTURE29
let () = java_register_static "GL10.get_gL_TEXTURE29" (fun _ -> Obj.repr (get_gL_TEXTURE29 ()))

let gL_TEXTURE30 : int = 34014
let get_gL_TEXTURE30 () = gL_TEXTURE30
let () = java_register_static "GL10.get_gL_TEXTURE30" (fun _ -> Obj.repr (get_gL_TEXTURE30 ()))

let gL_TEXTURE31 : int = 34015
let get_gL_TEXTURE31 () = gL_TEXTURE31
let () = java_register_static "GL10.get_gL_TEXTURE31" (fun _ -> Obj.repr (get_gL_TEXTURE31 ()))

let gL_TRIANGLE_FAN : int = 6
let get_gL_TRIANGLE_FAN () = gL_TRIANGLE_FAN
let () = java_register_static "GL10.get_gL_TRIANGLE_FAN" (fun _ -> Obj.repr (get_gL_TRIANGLE_FAN ()))

let gL_TRIANGLE_STRIP : int = 5
let get_gL_TRIANGLE_STRIP () = gL_TRIANGLE_STRIP
let () = java_register_static "GL10.get_gL_TRIANGLE_STRIP" (fun _ -> Obj.repr (get_gL_TRIANGLE_STRIP ()))

let gL_TRIANGLES : int = 4
let get_gL_TRIANGLES () = gL_TRIANGLES
let () = java_register_static "GL10.get_gL_TRIANGLES" (fun _ -> Obj.repr (get_gL_TRIANGLES ()))

let gL_TRUE : int = 1
let get_gL_TRUE () = gL_TRUE
let () = java_register_static "GL10.get_gL_TRUE" (fun _ -> Obj.repr (get_gL_TRUE ()))

let gL_UNPACK_ALIGNMENT : int = 3317
let get_gL_UNPACK_ALIGNMENT () = gL_UNPACK_ALIGNMENT
let () = java_register_static "GL10.get_gL_UNPACK_ALIGNMENT" (fun _ -> Obj.repr (get_gL_UNPACK_ALIGNMENT ()))

let gL_UNSIGNED_BYTE : int = 5121
let get_gL_UNSIGNED_BYTE () = gL_UNSIGNED_BYTE
let () = java_register_static "GL10.get_gL_UNSIGNED_BYTE" (fun _ -> Obj.repr (get_gL_UNSIGNED_BYTE ()))

let gL_UNSIGNED_SHORT : int = 5123
let get_gL_UNSIGNED_SHORT () = gL_UNSIGNED_SHORT
let () = java_register_static "GL10.get_gL_UNSIGNED_SHORT" (fun _ -> Obj.repr (get_gL_UNSIGNED_SHORT ()))

let gL_UNSIGNED_SHORT_4_4_4_4 : int = 32819
let get_gL_UNSIGNED_SHORT_4_4_4_4 () = gL_UNSIGNED_SHORT_4_4_4_4
let () = java_register_static "GL10.get_gL_UNSIGNED_SHORT_4_4_4_4" (fun _ -> Obj.repr (get_gL_UNSIGNED_SHORT_4_4_4_4 ()))

let gL_UNSIGNED_SHORT_5_5_5_1 : int = 32820
let get_gL_UNSIGNED_SHORT_5_5_5_1 () = gL_UNSIGNED_SHORT_5_5_5_1
let () = java_register_static "GL10.get_gL_UNSIGNED_SHORT_5_5_5_1" (fun _ -> Obj.repr (get_gL_UNSIGNED_SHORT_5_5_5_1 ()))

let gL_UNSIGNED_SHORT_5_6_5 : int = 33635
let get_gL_UNSIGNED_SHORT_5_6_5 () = gL_UNSIGNED_SHORT_5_6_5
let () = java_register_static "GL10.get_gL_UNSIGNED_SHORT_5_6_5" (fun _ -> Obj.repr (get_gL_UNSIGNED_SHORT_5_6_5 ()))

let gL_VENDOR : int = 7936
let get_gL_VENDOR () = gL_VENDOR
let () = java_register_static "GL10.get_gL_VENDOR" (fun _ -> Obj.repr (get_gL_VENDOR ()))

let gL_VERSION : int = 7938
let get_gL_VERSION () = gL_VERSION
let () = java_register_static "GL10.get_gL_VERSION" (fun _ -> Obj.repr (get_gL_VERSION ()))

let gL_VERTEX_ARRAY : int = 32884
let get_gL_VERTEX_ARRAY () = gL_VERTEX_ARRAY
let () = java_register_static "GL10.get_gL_VERTEX_ARRAY" (fun _ -> Obj.repr (get_gL_VERTEX_ARRAY ()))

let gL_XOR : int = 5382
let get_gL_XOR () = gL_XOR
let () = java_register_static "GL10.get_gL_XOR" (fun _ -> Obj.repr (get_gL_XOR ()))

let gL_ZERO : int = 0
let get_gL_ZERO () = gL_ZERO
let () = java_register_static "GL10.get_gL_ZERO" (fun _ -> Obj.repr (get_gL_ZERO ()))


