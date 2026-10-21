(* Generated Code Do Not Modify *)
(* package javax.microedition.khronos.opengles *)

open Allbinary_java [@@warning "-33"]
(* import java.nio.Buffer *)
(* import java.nio.FloatBuffer *)
(* import java.nio.IntBuffer *)

class virtual gL11 =
  object
    method virtual glBindBuffer : int * int -> unit
    method virtual glBufferData : 'any3 . int * int * 'any3 * int -> unit
    method virtual glBufferSubData : 'any4 . int * int * int * 'any4 -> unit
    method virtual glClipPlanef : int * float array * int -> unit
    (* Java overload glClipPlanef(INT, FloatBuffer) is not converted: OCaml has one method per name *)
    method virtual glColor4ub : int * int * int * int -> unit
    method virtual glColorPointer : int * int * int * int -> unit
    method virtual glDeleteBuffers : int * int array * int -> unit
    (* Java overload glDeleteBuffers(INT, IntBuffer) is not converted: OCaml has one method per name *)
    method virtual glDrawElements : int * int * int * int -> unit
    method virtual glGenBuffers : int * int array * int -> unit
    (* Java overload glGenBuffers(INT, IntBuffer) is not converted: OCaml has one method per name *)
    method virtual glGetBufferParameteriv : int * int * int array * int -> unit
    (* Java overload glGetBufferParameteriv(INT, INT, IntBuffer) is not converted: OCaml has one method per name *)
    method virtual glGetClipPlanef : int * float array * int -> unit
    (* Java overload glGetClipPlanef(INT, FloatBuffer) is not converted: OCaml has one method per name *)
    method virtual glGetFloatv : int * float array * int -> unit
    (* Java overload glGetFloatv(INT, FloatBuffer) is not converted: OCaml has one method per name *)
    method virtual glGetLightfv : int * int * float array * int -> unit
    (* Java overload glGetLightfv(INT, INT, FloatBuffer) is not converted: OCaml has one method per name *)
    method virtual glGetMaterialfv : int * int * float array * int -> unit
    (* Java overload glGetMaterialfv(INT, INT, FloatBuffer) is not converted: OCaml has one method per name *)
    method virtual glGetTexEnviv : int * int * int array * int -> unit
    (* Java overload glGetTexEnviv(INT, INT, IntBuffer) is not converted: OCaml has one method per name *)
    method virtual glGetTexParameterfv : int * int * float array * int -> unit
    (* Java overload glGetTexParameterfv(INT, INT, FloatBuffer) is not converted: OCaml has one method per name *)
    method virtual glGetTexParameteriv : int * int * int array * int -> unit
    (* Java overload glGetTexParameteriv(INT, INT, IntBuffer) is not converted: OCaml has one method per name *)
    method virtual glIsBuffer : int -> bool
    method virtual glIsEnabled : int -> bool
    method virtual glIsTexture : int -> bool
    method virtual glNormalPointer : int * int * int -> unit
    method virtual glPointParameterf : int * float -> unit
    method virtual glPointParameterfv : int * float array * int -> unit
    (* Java overload glPointParameterfv(INT, FloatBuffer) is not converted: OCaml has one method per name *)
    method virtual glTexCoordPointer : int * int * int * int -> unit
    method virtual glTexEnvi : int * int * int -> unit
    method virtual glTexEnviv : int * int * int array * int -> unit
    (* Java overload glTexEnviv(INT, INT, IntBuffer) is not converted: OCaml has one method per name *)
    method virtual glTexParameterfv : int * int * float array * int -> unit
    (* Java overload glTexParameterfv(INT, INT, FloatBuffer) is not converted: OCaml has one method per name *)
    method virtual glTexParameteriv : int * int * int array * int -> unit
    (* Java overload glTexParameteriv(INT, INT, IntBuffer) is not converted: OCaml has one method per name *)
    method virtual glVertexPointer : int * int * int * int -> unit
  end

let gL_ACTIVE_TEXTURE : int = 34016
let get_gL_ACTIVE_TEXTURE () = gL_ACTIVE_TEXTURE
let () = java_register_static "GL11.get_gL_ACTIVE_TEXTURE" (fun _ -> Obj.repr (get_gL_ACTIVE_TEXTURE ()))

let gL_ADD_SIGNED : int = 34164
let get_gL_ADD_SIGNED () = gL_ADD_SIGNED
let () = java_register_static "GL11.get_gL_ADD_SIGNED" (fun _ -> Obj.repr (get_gL_ADD_SIGNED ()))

let gL_ALPHA_SCALE : int = 3356
let get_gL_ALPHA_SCALE () = gL_ALPHA_SCALE
let () = java_register_static "GL11.get_gL_ALPHA_SCALE" (fun _ -> Obj.repr (get_gL_ALPHA_SCALE ()))

let gL_ALPHA_TEST_FUNC : int = 3009
let get_gL_ALPHA_TEST_FUNC () = gL_ALPHA_TEST_FUNC
let () = java_register_static "GL11.get_gL_ALPHA_TEST_FUNC" (fun _ -> Obj.repr (get_gL_ALPHA_TEST_FUNC ()))

let gL_ALPHA_TEST_REF : int = 3010
let get_gL_ALPHA_TEST_REF () = gL_ALPHA_TEST_REF
let () = java_register_static "GL11.get_gL_ALPHA_TEST_REF" (fun _ -> Obj.repr (get_gL_ALPHA_TEST_REF ()))

let gL_ARRAY_BUFFER : int = 34962
let get_gL_ARRAY_BUFFER () = gL_ARRAY_BUFFER
let () = java_register_static "GL11.get_gL_ARRAY_BUFFER" (fun _ -> Obj.repr (get_gL_ARRAY_BUFFER ()))

let gL_ARRAY_BUFFER_BINDING : int = 34964
let get_gL_ARRAY_BUFFER_BINDING () = gL_ARRAY_BUFFER_BINDING
let () = java_register_static "GL11.get_gL_ARRAY_BUFFER_BINDING" (fun _ -> Obj.repr (get_gL_ARRAY_BUFFER_BINDING ()))

let gL_BLEND_DST : int = 3040
let get_gL_BLEND_DST () = gL_BLEND_DST
let () = java_register_static "GL11.get_gL_BLEND_DST" (fun _ -> Obj.repr (get_gL_BLEND_DST ()))

let gL_BLEND_SRC : int = 3041
let get_gL_BLEND_SRC () = gL_BLEND_SRC
let () = java_register_static "GL11.get_gL_BLEND_SRC" (fun _ -> Obj.repr (get_gL_BLEND_SRC ()))

let gL_BUFFER_ACCESS : int = 35003
let get_gL_BUFFER_ACCESS () = gL_BUFFER_ACCESS
let () = java_register_static "GL11.get_gL_BUFFER_ACCESS" (fun _ -> Obj.repr (get_gL_BUFFER_ACCESS ()))

let gL_BUFFER_SIZE : int = 34660
let get_gL_BUFFER_SIZE () = gL_BUFFER_SIZE
let () = java_register_static "GL11.get_gL_BUFFER_SIZE" (fun _ -> Obj.repr (get_gL_BUFFER_SIZE ()))

let gL_BUFFER_USAGE : int = 34661
let get_gL_BUFFER_USAGE () = gL_BUFFER_USAGE
let () = java_register_static "GL11.get_gL_BUFFER_USAGE" (fun _ -> Obj.repr (get_gL_BUFFER_USAGE ()))

let gL_CLIENT_ACTIVE_TEXTURE : int = 34017
let get_gL_CLIENT_ACTIVE_TEXTURE () = gL_CLIENT_ACTIVE_TEXTURE
let () = java_register_static "GL11.get_gL_CLIENT_ACTIVE_TEXTURE" (fun _ -> Obj.repr (get_gL_CLIENT_ACTIVE_TEXTURE ()))

let gL_CLIP_PLANE0 : int = 12288
let get_gL_CLIP_PLANE0 () = gL_CLIP_PLANE0
let () = java_register_static "GL11.get_gL_CLIP_PLANE0" (fun _ -> Obj.repr (get_gL_CLIP_PLANE0 ()))

let gL_CLIP_PLANE1 : int = 12289
let get_gL_CLIP_PLANE1 () = gL_CLIP_PLANE1
let () = java_register_static "GL11.get_gL_CLIP_PLANE1" (fun _ -> Obj.repr (get_gL_CLIP_PLANE1 ()))

let gL_CLIP_PLANE2 : int = 12290
let get_gL_CLIP_PLANE2 () = gL_CLIP_PLANE2
let () = java_register_static "GL11.get_gL_CLIP_PLANE2" (fun _ -> Obj.repr (get_gL_CLIP_PLANE2 ()))

let gL_CLIP_PLANE3 : int = 12291
let get_gL_CLIP_PLANE3 () = gL_CLIP_PLANE3
let () = java_register_static "GL11.get_gL_CLIP_PLANE3" (fun _ -> Obj.repr (get_gL_CLIP_PLANE3 ()))

let gL_CLIP_PLANE4 : int = 12292
let get_gL_CLIP_PLANE4 () = gL_CLIP_PLANE4
let () = java_register_static "GL11.get_gL_CLIP_PLANE4" (fun _ -> Obj.repr (get_gL_CLIP_PLANE4 ()))

let gL_CLIP_PLANE5 : int = 12293
let get_gL_CLIP_PLANE5 () = gL_CLIP_PLANE5
let () = java_register_static "GL11.get_gL_CLIP_PLANE5" (fun _ -> Obj.repr (get_gL_CLIP_PLANE5 ()))

let gL_COLOR_ARRAY_BUFFER_BINDING : int = 34968
let get_gL_COLOR_ARRAY_BUFFER_BINDING () = gL_COLOR_ARRAY_BUFFER_BINDING
let () = java_register_static "GL11.get_gL_COLOR_ARRAY_BUFFER_BINDING" (fun _ -> Obj.repr (get_gL_COLOR_ARRAY_BUFFER_BINDING ()))

let gL_COLOR_ARRAY_POINTER : int = 32912
let get_gL_COLOR_ARRAY_POINTER () = gL_COLOR_ARRAY_POINTER
let () = java_register_static "GL11.get_gL_COLOR_ARRAY_POINTER" (fun _ -> Obj.repr (get_gL_COLOR_ARRAY_POINTER ()))

let gL_COLOR_ARRAY_SIZE : int = 32897
let get_gL_COLOR_ARRAY_SIZE () = gL_COLOR_ARRAY_SIZE
let () = java_register_static "GL11.get_gL_COLOR_ARRAY_SIZE" (fun _ -> Obj.repr (get_gL_COLOR_ARRAY_SIZE ()))

let gL_COLOR_ARRAY_STRIDE : int = 32899
let get_gL_COLOR_ARRAY_STRIDE () = gL_COLOR_ARRAY_STRIDE
let () = java_register_static "GL11.get_gL_COLOR_ARRAY_STRIDE" (fun _ -> Obj.repr (get_gL_COLOR_ARRAY_STRIDE ()))

let gL_COLOR_ARRAY_TYPE : int = 32898
let get_gL_COLOR_ARRAY_TYPE () = gL_COLOR_ARRAY_TYPE
let () = java_register_static "GL11.get_gL_COLOR_ARRAY_TYPE" (fun _ -> Obj.repr (get_gL_COLOR_ARRAY_TYPE ()))

let gL_COLOR_CLEAR_VALUE : int = 3106
let get_gL_COLOR_CLEAR_VALUE () = gL_COLOR_CLEAR_VALUE
let () = java_register_static "GL11.get_gL_COLOR_CLEAR_VALUE" (fun _ -> Obj.repr (get_gL_COLOR_CLEAR_VALUE ()))

let gL_COLOR_WRITEMASK : int = 3107
let get_gL_COLOR_WRITEMASK () = gL_COLOR_WRITEMASK
let () = java_register_static "GL11.get_gL_COLOR_WRITEMASK" (fun _ -> Obj.repr (get_gL_COLOR_WRITEMASK ()))

let gL_COMBINE : int = 34160
let get_gL_COMBINE () = gL_COMBINE
let () = java_register_static "GL11.get_gL_COMBINE" (fun _ -> Obj.repr (get_gL_COMBINE ()))

let gL_COMBINE_ALPHA : int = 34162
let get_gL_COMBINE_ALPHA () = gL_COMBINE_ALPHA
let () = java_register_static "GL11.get_gL_COMBINE_ALPHA" (fun _ -> Obj.repr (get_gL_COMBINE_ALPHA ()))

let gL_COMBINE_RGB : int = 34161
let get_gL_COMBINE_RGB () = gL_COMBINE_RGB
let () = java_register_static "GL11.get_gL_COMBINE_RGB" (fun _ -> Obj.repr (get_gL_COMBINE_RGB ()))

let gL_CONSTANT : int = 34166
let get_gL_CONSTANT () = gL_CONSTANT
let () = java_register_static "GL11.get_gL_CONSTANT" (fun _ -> Obj.repr (get_gL_CONSTANT ()))

let gL_COORD_REPLACE_OES : int = 34914
let get_gL_COORD_REPLACE_OES () = gL_COORD_REPLACE_OES
let () = java_register_static "GL11.get_gL_COORD_REPLACE_OES" (fun _ -> Obj.repr (get_gL_COORD_REPLACE_OES ()))

let gL_CULL_FACE_MODE : int = 2885
let get_gL_CULL_FACE_MODE () = gL_CULL_FACE_MODE
let () = java_register_static "GL11.get_gL_CULL_FACE_MODE" (fun _ -> Obj.repr (get_gL_CULL_FACE_MODE ()))

let gL_CURRENT_COLOR : int = 2816
let get_gL_CURRENT_COLOR () = gL_CURRENT_COLOR
let () = java_register_static "GL11.get_gL_CURRENT_COLOR" (fun _ -> Obj.repr (get_gL_CURRENT_COLOR ()))

let gL_CURRENT_NORMAL : int = 2818
let get_gL_CURRENT_NORMAL () = gL_CURRENT_NORMAL
let () = java_register_static "GL11.get_gL_CURRENT_NORMAL" (fun _ -> Obj.repr (get_gL_CURRENT_NORMAL ()))

let gL_CURRENT_TEXTURE_COORDS : int = 2819
let get_gL_CURRENT_TEXTURE_COORDS () = gL_CURRENT_TEXTURE_COORDS
let () = java_register_static "GL11.get_gL_CURRENT_TEXTURE_COORDS" (fun _ -> Obj.repr (get_gL_CURRENT_TEXTURE_COORDS ()))

let gL_DEPTH_CLEAR_VALUE : int = 2931
let get_gL_DEPTH_CLEAR_VALUE () = gL_DEPTH_CLEAR_VALUE
let () = java_register_static "GL11.get_gL_DEPTH_CLEAR_VALUE" (fun _ -> Obj.repr (get_gL_DEPTH_CLEAR_VALUE ()))

let gL_DEPTH_FUNC : int = 2932
let get_gL_DEPTH_FUNC () = gL_DEPTH_FUNC
let () = java_register_static "GL11.get_gL_DEPTH_FUNC" (fun _ -> Obj.repr (get_gL_DEPTH_FUNC ()))

let gL_DEPTH_RANGE : int = 2928
let get_gL_DEPTH_RANGE () = gL_DEPTH_RANGE
let () = java_register_static "GL11.get_gL_DEPTH_RANGE" (fun _ -> Obj.repr (get_gL_DEPTH_RANGE ()))

let gL_DEPTH_WRITEMASK : int = 2930
let get_gL_DEPTH_WRITEMASK () = gL_DEPTH_WRITEMASK
let () = java_register_static "GL11.get_gL_DEPTH_WRITEMASK" (fun _ -> Obj.repr (get_gL_DEPTH_WRITEMASK ()))

let gL_DOT3_RGB : int = 34478
let get_gL_DOT3_RGB () = gL_DOT3_RGB
let () = java_register_static "GL11.get_gL_DOT3_RGB" (fun _ -> Obj.repr (get_gL_DOT3_RGB ()))

let gL_DOT3_RGBA : int = 34479
let get_gL_DOT3_RGBA () = gL_DOT3_RGBA
let () = java_register_static "GL11.get_gL_DOT3_RGBA" (fun _ -> Obj.repr (get_gL_DOT3_RGBA ()))

let gL_DYNAMIC_DRAW : int = 35048
let get_gL_DYNAMIC_DRAW () = gL_DYNAMIC_DRAW
let () = java_register_static "GL11.get_gL_DYNAMIC_DRAW" (fun _ -> Obj.repr (get_gL_DYNAMIC_DRAW ()))

let gL_ELEMENT_ARRAY_BUFFER : int = 34963
let get_gL_ELEMENT_ARRAY_BUFFER () = gL_ELEMENT_ARRAY_BUFFER
let () = java_register_static "GL11.get_gL_ELEMENT_ARRAY_BUFFER" (fun _ -> Obj.repr (get_gL_ELEMENT_ARRAY_BUFFER ()))

let gL_ELEMENT_ARRAY_BUFFER_BINDING : int = 34965
let get_gL_ELEMENT_ARRAY_BUFFER_BINDING () = gL_ELEMENT_ARRAY_BUFFER_BINDING
let () = java_register_static "GL11.get_gL_ELEMENT_ARRAY_BUFFER_BINDING" (fun _ -> Obj.repr (get_gL_ELEMENT_ARRAY_BUFFER_BINDING ()))

let gL_FRONT_FACE : int = 2886
let get_gL_FRONT_FACE () = gL_FRONT_FACE
let () = java_register_static "GL11.get_gL_FRONT_FACE" (fun _ -> Obj.repr (get_gL_FRONT_FACE ()))

let gL_GENERATE_MIPMAP : int = 33169
let get_gL_GENERATE_MIPMAP () = gL_GENERATE_MIPMAP
let () = java_register_static "GL11.get_gL_GENERATE_MIPMAP" (fun _ -> Obj.repr (get_gL_GENERATE_MIPMAP ()))

let gL_GENERATE_MIPMAP_HINT : int = 33170
let get_gL_GENERATE_MIPMAP_HINT () = gL_GENERATE_MIPMAP_HINT
let () = java_register_static "GL11.get_gL_GENERATE_MIPMAP_HINT" (fun _ -> Obj.repr (get_gL_GENERATE_MIPMAP_HINT ()))

let gL_INTERPOLATE : int = 34165
let get_gL_INTERPOLATE () = gL_INTERPOLATE
let () = java_register_static "GL11.get_gL_INTERPOLATE" (fun _ -> Obj.repr (get_gL_INTERPOLATE ()))

let gL_LINE_WIDTH : int = 2849
let get_gL_LINE_WIDTH () = gL_LINE_WIDTH
let () = java_register_static "GL11.get_gL_LINE_WIDTH" (fun _ -> Obj.repr (get_gL_LINE_WIDTH ()))

let gL_LOGIC_OP_MODE : int = 3056
let get_gL_LOGIC_OP_MODE () = gL_LOGIC_OP_MODE
let () = java_register_static "GL11.get_gL_LOGIC_OP_MODE" (fun _ -> Obj.repr (get_gL_LOGIC_OP_MODE ()))

let gL_MATRIX_MODE : int = 2976
let get_gL_MATRIX_MODE () = gL_MATRIX_MODE
let () = java_register_static "GL11.get_gL_MATRIX_MODE" (fun _ -> Obj.repr (get_gL_MATRIX_MODE ()))

let gL_MAX_CLIP_PLANES : int = 3378
let get_gL_MAX_CLIP_PLANES () = gL_MAX_CLIP_PLANES
let () = java_register_static "GL11.get_gL_MAX_CLIP_PLANES" (fun _ -> Obj.repr (get_gL_MAX_CLIP_PLANES ()))

let gL_MODELVIEW_MATRIX : int = 2982
let get_gL_MODELVIEW_MATRIX () = gL_MODELVIEW_MATRIX
let () = java_register_static "GL11.get_gL_MODELVIEW_MATRIX" (fun _ -> Obj.repr (get_gL_MODELVIEW_MATRIX ()))

let gL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES : int = 35213
let get_gL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES () = gL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES
let () = java_register_static "GL11.get_gL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES" (fun _ -> Obj.repr (get_gL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES ()))

let gL_MODELVIEW_STACK_DEPTH : int = 2979
let get_gL_MODELVIEW_STACK_DEPTH () = gL_MODELVIEW_STACK_DEPTH
let () = java_register_static "GL11.get_gL_MODELVIEW_STACK_DEPTH" (fun _ -> Obj.repr (get_gL_MODELVIEW_STACK_DEPTH ()))

let gL_NORMAL_ARRAY_BUFFER_BINDING : int = 34967
let get_gL_NORMAL_ARRAY_BUFFER_BINDING () = gL_NORMAL_ARRAY_BUFFER_BINDING
let () = java_register_static "GL11.get_gL_NORMAL_ARRAY_BUFFER_BINDING" (fun _ -> Obj.repr (get_gL_NORMAL_ARRAY_BUFFER_BINDING ()))

let gL_NORMAL_ARRAY_POINTER : int = 32911
let get_gL_NORMAL_ARRAY_POINTER () = gL_NORMAL_ARRAY_POINTER
let () = java_register_static "GL11.get_gL_NORMAL_ARRAY_POINTER" (fun _ -> Obj.repr (get_gL_NORMAL_ARRAY_POINTER ()))

let gL_NORMAL_ARRAY_STRIDE : int = 32895
let get_gL_NORMAL_ARRAY_STRIDE () = gL_NORMAL_ARRAY_STRIDE
let () = java_register_static "GL11.get_gL_NORMAL_ARRAY_STRIDE" (fun _ -> Obj.repr (get_gL_NORMAL_ARRAY_STRIDE ()))

let gL_NORMAL_ARRAY_TYPE : int = 32894
let get_gL_NORMAL_ARRAY_TYPE () = gL_NORMAL_ARRAY_TYPE
let () = java_register_static "GL11.get_gL_NORMAL_ARRAY_TYPE" (fun _ -> Obj.repr (get_gL_NORMAL_ARRAY_TYPE ()))

let gL_OPERAND0_ALPHA : int = 34200
let get_gL_OPERAND0_ALPHA () = gL_OPERAND0_ALPHA
let () = java_register_static "GL11.get_gL_OPERAND0_ALPHA" (fun _ -> Obj.repr (get_gL_OPERAND0_ALPHA ()))

let gL_OPERAND0_RGB : int = 34192
let get_gL_OPERAND0_RGB () = gL_OPERAND0_RGB
let () = java_register_static "GL11.get_gL_OPERAND0_RGB" (fun _ -> Obj.repr (get_gL_OPERAND0_RGB ()))

let gL_OPERAND1_ALPHA : int = 34201
let get_gL_OPERAND1_ALPHA () = gL_OPERAND1_ALPHA
let () = java_register_static "GL11.get_gL_OPERAND1_ALPHA" (fun _ -> Obj.repr (get_gL_OPERAND1_ALPHA ()))

let gL_OPERAND1_RGB : int = 34193
let get_gL_OPERAND1_RGB () = gL_OPERAND1_RGB
let () = java_register_static "GL11.get_gL_OPERAND1_RGB" (fun _ -> Obj.repr (get_gL_OPERAND1_RGB ()))

let gL_OPERAND2_ALPHA : int = 34202
let get_gL_OPERAND2_ALPHA () = gL_OPERAND2_ALPHA
let () = java_register_static "GL11.get_gL_OPERAND2_ALPHA" (fun _ -> Obj.repr (get_gL_OPERAND2_ALPHA ()))

let gL_OPERAND2_RGB : int = 34194
let get_gL_OPERAND2_RGB () = gL_OPERAND2_RGB
let () = java_register_static "GL11.get_gL_OPERAND2_RGB" (fun _ -> Obj.repr (get_gL_OPERAND2_RGB ()))

let gL_POINT_DISTANCE_ATTENUATION : int = 33065
let get_gL_POINT_DISTANCE_ATTENUATION () = gL_POINT_DISTANCE_ATTENUATION
let () = java_register_static "GL11.get_gL_POINT_DISTANCE_ATTENUATION" (fun _ -> Obj.repr (get_gL_POINT_DISTANCE_ATTENUATION ()))

let gL_POINT_FADE_THRESHOLD_SIZE : int = 33064
let get_gL_POINT_FADE_THRESHOLD_SIZE () = gL_POINT_FADE_THRESHOLD_SIZE
let () = java_register_static "GL11.get_gL_POINT_FADE_THRESHOLD_SIZE" (fun _ -> Obj.repr (get_gL_POINT_FADE_THRESHOLD_SIZE ()))

let gL_POINT_SIZE : int = 2833
let get_gL_POINT_SIZE () = gL_POINT_SIZE
let () = java_register_static "GL11.get_gL_POINT_SIZE" (fun _ -> Obj.repr (get_gL_POINT_SIZE ()))

let gL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES : int = 35743
let get_gL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES () = gL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES
let () = java_register_static "GL11.get_gL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES" (fun _ -> Obj.repr (get_gL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES ()))

let gL_POINT_SIZE_ARRAY_OES : int = 35740
let get_gL_POINT_SIZE_ARRAY_OES () = gL_POINT_SIZE_ARRAY_OES
let () = java_register_static "GL11.get_gL_POINT_SIZE_ARRAY_OES" (fun _ -> Obj.repr (get_gL_POINT_SIZE_ARRAY_OES ()))

let gL_POINT_SIZE_ARRAY_POINTER_OES : int = 35212
let get_gL_POINT_SIZE_ARRAY_POINTER_OES () = gL_POINT_SIZE_ARRAY_POINTER_OES
let () = java_register_static "GL11.get_gL_POINT_SIZE_ARRAY_POINTER_OES" (fun _ -> Obj.repr (get_gL_POINT_SIZE_ARRAY_POINTER_OES ()))

let gL_POINT_SIZE_ARRAY_STRIDE_OES : int = 35211
let get_gL_POINT_SIZE_ARRAY_STRIDE_OES () = gL_POINT_SIZE_ARRAY_STRIDE_OES
let () = java_register_static "GL11.get_gL_POINT_SIZE_ARRAY_STRIDE_OES" (fun _ -> Obj.repr (get_gL_POINT_SIZE_ARRAY_STRIDE_OES ()))

let gL_POINT_SIZE_ARRAY_TYPE_OES : int = 35210
let get_gL_POINT_SIZE_ARRAY_TYPE_OES () = gL_POINT_SIZE_ARRAY_TYPE_OES
let () = java_register_static "GL11.get_gL_POINT_SIZE_ARRAY_TYPE_OES" (fun _ -> Obj.repr (get_gL_POINT_SIZE_ARRAY_TYPE_OES ()))

let gL_POINT_SIZE_MAX : int = 33063
let get_gL_POINT_SIZE_MAX () = gL_POINT_SIZE_MAX
let () = java_register_static "GL11.get_gL_POINT_SIZE_MAX" (fun _ -> Obj.repr (get_gL_POINT_SIZE_MAX ()))

let gL_POINT_SIZE_MIN : int = 33062
let get_gL_POINT_SIZE_MIN () = gL_POINT_SIZE_MIN
let () = java_register_static "GL11.get_gL_POINT_SIZE_MIN" (fun _ -> Obj.repr (get_gL_POINT_SIZE_MIN ()))

let gL_POINT_SPRITE_OES : int = 34913
let get_gL_POINT_SPRITE_OES () = gL_POINT_SPRITE_OES
let () = java_register_static "GL11.get_gL_POINT_SPRITE_OES" (fun _ -> Obj.repr (get_gL_POINT_SPRITE_OES ()))

let gL_POLYGON_OFFSET_FACTOR : int = 32824
let get_gL_POLYGON_OFFSET_FACTOR () = gL_POLYGON_OFFSET_FACTOR
let () = java_register_static "GL11.get_gL_POLYGON_OFFSET_FACTOR" (fun _ -> Obj.repr (get_gL_POLYGON_OFFSET_FACTOR ()))

let gL_POLYGON_OFFSET_UNITS : int = 10752
let get_gL_POLYGON_OFFSET_UNITS () = gL_POLYGON_OFFSET_UNITS
let () = java_register_static "GL11.get_gL_POLYGON_OFFSET_UNITS" (fun _ -> Obj.repr (get_gL_POLYGON_OFFSET_UNITS ()))

let gL_PREVIOUS : int = 34168
let get_gL_PREVIOUS () = gL_PREVIOUS
let () = java_register_static "GL11.get_gL_PREVIOUS" (fun _ -> Obj.repr (get_gL_PREVIOUS ()))

let gL_PRIMARY_COLOR : int = 34167
let get_gL_PRIMARY_COLOR () = gL_PRIMARY_COLOR
let () = java_register_static "GL11.get_gL_PRIMARY_COLOR" (fun _ -> Obj.repr (get_gL_PRIMARY_COLOR ()))

let gL_PROJECTION_MATRIX : int = 2983
let get_gL_PROJECTION_MATRIX () = gL_PROJECTION_MATRIX
let () = java_register_static "GL11.get_gL_PROJECTION_MATRIX" (fun _ -> Obj.repr (get_gL_PROJECTION_MATRIX ()))

let gL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES : int = 35214
let get_gL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES () = gL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES
let () = java_register_static "GL11.get_gL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES" (fun _ -> Obj.repr (get_gL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES ()))

let gL_PROJECTION_STACK_DEPTH : int = 2980
let get_gL_PROJECTION_STACK_DEPTH () = gL_PROJECTION_STACK_DEPTH
let () = java_register_static "GL11.get_gL_PROJECTION_STACK_DEPTH" (fun _ -> Obj.repr (get_gL_PROJECTION_STACK_DEPTH ()))

let gL_RGB_SCALE : int = 34163
let get_gL_RGB_SCALE () = gL_RGB_SCALE
let () = java_register_static "GL11.get_gL_RGB_SCALE" (fun _ -> Obj.repr (get_gL_RGB_SCALE ()))

let gL_SAMPLE_BUFFERS : int = 32936
let get_gL_SAMPLE_BUFFERS () = gL_SAMPLE_BUFFERS
let () = java_register_static "GL11.get_gL_SAMPLE_BUFFERS" (fun _ -> Obj.repr (get_gL_SAMPLE_BUFFERS ()))

let gL_SAMPLE_COVERAGE_INVERT : int = 32939
let get_gL_SAMPLE_COVERAGE_INVERT () = gL_SAMPLE_COVERAGE_INVERT
let () = java_register_static "GL11.get_gL_SAMPLE_COVERAGE_INVERT" (fun _ -> Obj.repr (get_gL_SAMPLE_COVERAGE_INVERT ()))

let gL_SAMPLE_COVERAGE_VALUE : int = 32938
let get_gL_SAMPLE_COVERAGE_VALUE () = gL_SAMPLE_COVERAGE_VALUE
let () = java_register_static "GL11.get_gL_SAMPLE_COVERAGE_VALUE" (fun _ -> Obj.repr (get_gL_SAMPLE_COVERAGE_VALUE ()))

let gL_SAMPLES : int = 32937
let get_gL_SAMPLES () = gL_SAMPLES
let () = java_register_static "GL11.get_gL_SAMPLES" (fun _ -> Obj.repr (get_gL_SAMPLES ()))

let gL_SCISSOR_BOX : int = 3088
let get_gL_SCISSOR_BOX () = gL_SCISSOR_BOX
let () = java_register_static "GL11.get_gL_SCISSOR_BOX" (fun _ -> Obj.repr (get_gL_SCISSOR_BOX ()))

let gL_SHADE_MODEL : int = 2900
let get_gL_SHADE_MODEL () = gL_SHADE_MODEL
let () = java_register_static "GL11.get_gL_SHADE_MODEL" (fun _ -> Obj.repr (get_gL_SHADE_MODEL ()))

let gL_SRC0_ALPHA : int = 34184
let get_gL_SRC0_ALPHA () = gL_SRC0_ALPHA
let () = java_register_static "GL11.get_gL_SRC0_ALPHA" (fun _ -> Obj.repr (get_gL_SRC0_ALPHA ()))

let gL_SRC0_RGB : int = 34176
let get_gL_SRC0_RGB () = gL_SRC0_RGB
let () = java_register_static "GL11.get_gL_SRC0_RGB" (fun _ -> Obj.repr (get_gL_SRC0_RGB ()))

let gL_SRC1_ALPHA : int = 34185
let get_gL_SRC1_ALPHA () = gL_SRC1_ALPHA
let () = java_register_static "GL11.get_gL_SRC1_ALPHA" (fun _ -> Obj.repr (get_gL_SRC1_ALPHA ()))

let gL_SRC1_RGB : int = 34177
let get_gL_SRC1_RGB () = gL_SRC1_RGB
let () = java_register_static "GL11.get_gL_SRC1_RGB" (fun _ -> Obj.repr (get_gL_SRC1_RGB ()))

let gL_SRC2_ALPHA : int = 34186
let get_gL_SRC2_ALPHA () = gL_SRC2_ALPHA
let () = java_register_static "GL11.get_gL_SRC2_ALPHA" (fun _ -> Obj.repr (get_gL_SRC2_ALPHA ()))

let gL_SRC2_RGB : int = 34178
let get_gL_SRC2_RGB () = gL_SRC2_RGB
let () = java_register_static "GL11.get_gL_SRC2_RGB" (fun _ -> Obj.repr (get_gL_SRC2_RGB ()))

let gL_STATIC_DRAW : int = 35044
let get_gL_STATIC_DRAW () = gL_STATIC_DRAW
let () = java_register_static "GL11.get_gL_STATIC_DRAW" (fun _ -> Obj.repr (get_gL_STATIC_DRAW ()))

let gL_STENCIL_CLEAR_VALUE : int = 2961
let get_gL_STENCIL_CLEAR_VALUE () = gL_STENCIL_CLEAR_VALUE
let () = java_register_static "GL11.get_gL_STENCIL_CLEAR_VALUE" (fun _ -> Obj.repr (get_gL_STENCIL_CLEAR_VALUE ()))

let gL_STENCIL_FAIL : int = 2964
let get_gL_STENCIL_FAIL () = gL_STENCIL_FAIL
let () = java_register_static "GL11.get_gL_STENCIL_FAIL" (fun _ -> Obj.repr (get_gL_STENCIL_FAIL ()))

let gL_STENCIL_FUNC : int = 2962
let get_gL_STENCIL_FUNC () = gL_STENCIL_FUNC
let () = java_register_static "GL11.get_gL_STENCIL_FUNC" (fun _ -> Obj.repr (get_gL_STENCIL_FUNC ()))

let gL_STENCIL_PASS_DEPTH_FAIL : int = 2965
let get_gL_STENCIL_PASS_DEPTH_FAIL () = gL_STENCIL_PASS_DEPTH_FAIL
let () = java_register_static "GL11.get_gL_STENCIL_PASS_DEPTH_FAIL" (fun _ -> Obj.repr (get_gL_STENCIL_PASS_DEPTH_FAIL ()))

let gL_STENCIL_PASS_DEPTH_PASS : int = 2966
let get_gL_STENCIL_PASS_DEPTH_PASS () = gL_STENCIL_PASS_DEPTH_PASS
let () = java_register_static "GL11.get_gL_STENCIL_PASS_DEPTH_PASS" (fun _ -> Obj.repr (get_gL_STENCIL_PASS_DEPTH_PASS ()))

let gL_STENCIL_REF : int = 2967
let get_gL_STENCIL_REF () = gL_STENCIL_REF
let () = java_register_static "GL11.get_gL_STENCIL_REF" (fun _ -> Obj.repr (get_gL_STENCIL_REF ()))

let gL_STENCIL_VALUE_MASK : int = 2963
let get_gL_STENCIL_VALUE_MASK () = gL_STENCIL_VALUE_MASK
let () = java_register_static "GL11.get_gL_STENCIL_VALUE_MASK" (fun _ -> Obj.repr (get_gL_STENCIL_VALUE_MASK ()))

let gL_STENCIL_WRITEMASK : int = 2968
let get_gL_STENCIL_WRITEMASK () = gL_STENCIL_WRITEMASK
let () = java_register_static "GL11.get_gL_STENCIL_WRITEMASK" (fun _ -> Obj.repr (get_gL_STENCIL_WRITEMASK ()))

let gL_SUBTRACT : int = 34023
let get_gL_SUBTRACT () = gL_SUBTRACT
let () = java_register_static "GL11.get_gL_SUBTRACT" (fun _ -> Obj.repr (get_gL_SUBTRACT ()))

let gL_TEXTURE_BINDING_2D : int = 32873
let get_gL_TEXTURE_BINDING_2D () = gL_TEXTURE_BINDING_2D
let () = java_register_static "GL11.get_gL_TEXTURE_BINDING_2D" (fun _ -> Obj.repr (get_gL_TEXTURE_BINDING_2D ()))

let gL_TEXTURE_COORD_ARRAY_BUFFER_BINDING : int = 34970
let get_gL_TEXTURE_COORD_ARRAY_BUFFER_BINDING () = gL_TEXTURE_COORD_ARRAY_BUFFER_BINDING
let () = java_register_static "GL11.get_gL_TEXTURE_COORD_ARRAY_BUFFER_BINDING" (fun _ -> Obj.repr (get_gL_TEXTURE_COORD_ARRAY_BUFFER_BINDING ()))

let gL_TEXTURE_COORD_ARRAY_POINTER : int = 32914
let get_gL_TEXTURE_COORD_ARRAY_POINTER () = gL_TEXTURE_COORD_ARRAY_POINTER
let () = java_register_static "GL11.get_gL_TEXTURE_COORD_ARRAY_POINTER" (fun _ -> Obj.repr (get_gL_TEXTURE_COORD_ARRAY_POINTER ()))

let gL_TEXTURE_COORD_ARRAY_SIZE : int = 32904
let get_gL_TEXTURE_COORD_ARRAY_SIZE () = gL_TEXTURE_COORD_ARRAY_SIZE
let () = java_register_static "GL11.get_gL_TEXTURE_COORD_ARRAY_SIZE" (fun _ -> Obj.repr (get_gL_TEXTURE_COORD_ARRAY_SIZE ()))

let gL_TEXTURE_COORD_ARRAY_STRIDE : int = 32906
let get_gL_TEXTURE_COORD_ARRAY_STRIDE () = gL_TEXTURE_COORD_ARRAY_STRIDE
let () = java_register_static "GL11.get_gL_TEXTURE_COORD_ARRAY_STRIDE" (fun _ -> Obj.repr (get_gL_TEXTURE_COORD_ARRAY_STRIDE ()))

let gL_TEXTURE_COORD_ARRAY_TYPE : int = 32905
let get_gL_TEXTURE_COORD_ARRAY_TYPE () = gL_TEXTURE_COORD_ARRAY_TYPE
let () = java_register_static "GL11.get_gL_TEXTURE_COORD_ARRAY_TYPE" (fun _ -> Obj.repr (get_gL_TEXTURE_COORD_ARRAY_TYPE ()))

let gL_TEXTURE_MATRIX : int = 2984
let get_gL_TEXTURE_MATRIX () = gL_TEXTURE_MATRIX
let () = java_register_static "GL11.get_gL_TEXTURE_MATRIX" (fun _ -> Obj.repr (get_gL_TEXTURE_MATRIX ()))

let gL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES : int = 35215
let get_gL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES () = gL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES
let () = java_register_static "GL11.get_gL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES" (fun _ -> Obj.repr (get_gL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES ()))

let gL_TEXTURE_STACK_DEPTH : int = 2981
let get_gL_TEXTURE_STACK_DEPTH () = gL_TEXTURE_STACK_DEPTH
let () = java_register_static "GL11.get_gL_TEXTURE_STACK_DEPTH" (fun _ -> Obj.repr (get_gL_TEXTURE_STACK_DEPTH ()))

let gL_VERTEX_ARRAY_BUFFER_BINDING : int = 34966
let get_gL_VERTEX_ARRAY_BUFFER_BINDING () = gL_VERTEX_ARRAY_BUFFER_BINDING
let () = java_register_static "GL11.get_gL_VERTEX_ARRAY_BUFFER_BINDING" (fun _ -> Obj.repr (get_gL_VERTEX_ARRAY_BUFFER_BINDING ()))

let gL_VERTEX_ARRAY_POINTER : int = 32910
let get_gL_VERTEX_ARRAY_POINTER () = gL_VERTEX_ARRAY_POINTER
let () = java_register_static "GL11.get_gL_VERTEX_ARRAY_POINTER" (fun _ -> Obj.repr (get_gL_VERTEX_ARRAY_POINTER ()))

let gL_VERTEX_ARRAY_SIZE : int = 32890
let get_gL_VERTEX_ARRAY_SIZE () = gL_VERTEX_ARRAY_SIZE
let () = java_register_static "GL11.get_gL_VERTEX_ARRAY_SIZE" (fun _ -> Obj.repr (get_gL_VERTEX_ARRAY_SIZE ()))

let gL_VERTEX_ARRAY_STRIDE : int = 32892
let get_gL_VERTEX_ARRAY_STRIDE () = gL_VERTEX_ARRAY_STRIDE
let () = java_register_static "GL11.get_gL_VERTEX_ARRAY_STRIDE" (fun _ -> Obj.repr (get_gL_VERTEX_ARRAY_STRIDE ()))

let gL_VERTEX_ARRAY_TYPE : int = 32891
let get_gL_VERTEX_ARRAY_TYPE () = gL_VERTEX_ARRAY_TYPE
let () = java_register_static "GL11.get_gL_VERTEX_ARRAY_TYPE" (fun _ -> Obj.repr (get_gL_VERTEX_ARRAY_TYPE ()))

let gL_VIEWPORT : int = 2978
let get_gL_VIEWPORT () = gL_VIEWPORT
let () = java_register_static "GL11.get_gL_VIEWPORT" (fun _ -> Obj.repr (get_gL_VIEWPORT ()))

let gL_WRITE_ONLY : int = 35001
let get_gL_WRITE_ONLY () = gL_WRITE_ONLY
let () = java_register_static "GL11.get_gL_WRITE_ONLY" (fun _ -> Obj.repr (get_gL_WRITE_ONLY ()))


