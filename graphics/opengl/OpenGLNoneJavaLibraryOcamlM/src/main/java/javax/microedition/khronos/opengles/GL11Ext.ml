(* Generated Code Do Not Modify *)
(* package javax.microedition.khronos.opengles *)

open Allbinary_java [@@warning "-33"]
(* import java.nio.Buffer *)
(* import java.nio.FloatBuffer *)
(* import java.nio.IntBuffer *)
(* import java.nio.ShortBuffer *)

class virtual gL11Ext =
  object
    inherit GL.gL
    method virtual glTexParameterfv : int * int * float array * int -> unit
    method virtual glCurrentPaletteMatrixOES : int -> unit
    method virtual glDrawTexfOES : float * float * float * float * float -> unit
    method virtual glDrawTexfvOES : float array * int -> unit
    (* Java overload glDrawTexfvOES(FloatBuffer) is not converted: OCaml has one method per name *)
    method virtual glDrawTexiOES : int * int * int * int * int -> unit
    method virtual glDrawTexivOES : int array * int -> unit
    (* Java overload glDrawTexivOES(IntBuffer) is not converted: OCaml has one method per name *)
    method virtual glDrawTexsOES : int * int * int * int * int -> unit
    method virtual glDrawTexsvOES : int array * int -> unit
    (* Java overload glDrawTexsvOES(ShortBuffer) is not converted: OCaml has one method per name *)
    method virtual glDrawTexxOES : int * int * int * int * int -> unit
    method virtual glDrawTexxvOES : int array * int -> unit
    (* Java overload glDrawTexxvOES(IntBuffer) is not converted: OCaml has one method per name *)
    method virtual glEnable : int -> unit
    method virtual glEnableClientState : int -> unit
    method virtual glLoadPaletteFromModelViewMatrixOES : unit -> unit
    method virtual glMatrixIndexPointerOES : 'any4 . int * int * int * 'any4 -> unit
    (* Java overload glMatrixIndexPointerOES(INT, INT, INT, INT) is not converted: OCaml has one method per name *)
    method virtual glWeightPointerOES : 'any4 . int * int * int * 'any4 -> unit
    (* Java overload glWeightPointerOES(INT, INT, INT, INT) is not converted: OCaml has one method per name *)
  end

let gL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES : int = 35742
let get_gL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES () = gL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES
let () = java_register_static "GL11Ext.get_gL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES" (fun _ -> Obj.repr (get_gL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES ()))

let gL_MATRIX_INDEX_ARRAY_OES : int = 34884
let get_gL_MATRIX_INDEX_ARRAY_OES () = gL_MATRIX_INDEX_ARRAY_OES
let () = java_register_static "GL11Ext.get_gL_MATRIX_INDEX_ARRAY_OES" (fun _ -> Obj.repr (get_gL_MATRIX_INDEX_ARRAY_OES ()))

let gL_MATRIX_INDEX_ARRAY_POINTER_OES : int = 34889
let get_gL_MATRIX_INDEX_ARRAY_POINTER_OES () = gL_MATRIX_INDEX_ARRAY_POINTER_OES
let () = java_register_static "GL11Ext.get_gL_MATRIX_INDEX_ARRAY_POINTER_OES" (fun _ -> Obj.repr (get_gL_MATRIX_INDEX_ARRAY_POINTER_OES ()))

let gL_MATRIX_INDEX_ARRAY_SIZE_OES : int = 34886
let get_gL_MATRIX_INDEX_ARRAY_SIZE_OES () = gL_MATRIX_INDEX_ARRAY_SIZE_OES
let () = java_register_static "GL11Ext.get_gL_MATRIX_INDEX_ARRAY_SIZE_OES" (fun _ -> Obj.repr (get_gL_MATRIX_INDEX_ARRAY_SIZE_OES ()))

let gL_MATRIX_INDEX_ARRAY_STRIDE_OES : int = 34888
let get_gL_MATRIX_INDEX_ARRAY_STRIDE_OES () = gL_MATRIX_INDEX_ARRAY_STRIDE_OES
let () = java_register_static "GL11Ext.get_gL_MATRIX_INDEX_ARRAY_STRIDE_OES" (fun _ -> Obj.repr (get_gL_MATRIX_INDEX_ARRAY_STRIDE_OES ()))

let gL_MATRIX_INDEX_ARRAY_TYPE_OES : int = 34887
let get_gL_MATRIX_INDEX_ARRAY_TYPE_OES () = gL_MATRIX_INDEX_ARRAY_TYPE_OES
let () = java_register_static "GL11Ext.get_gL_MATRIX_INDEX_ARRAY_TYPE_OES" (fun _ -> Obj.repr (get_gL_MATRIX_INDEX_ARRAY_TYPE_OES ()))

let gL_MATRIX_PALETTE_OES : int = 34880
let get_gL_MATRIX_PALETTE_OES () = gL_MATRIX_PALETTE_OES
let () = java_register_static "GL11Ext.get_gL_MATRIX_PALETTE_OES" (fun _ -> Obj.repr (get_gL_MATRIX_PALETTE_OES ()))

let gL_MAX_PALETTE_MATRICES_OES : int = 34882
let get_gL_MAX_PALETTE_MATRICES_OES () = gL_MAX_PALETTE_MATRICES_OES
let () = java_register_static "GL11Ext.get_gL_MAX_PALETTE_MATRICES_OES" (fun _ -> Obj.repr (get_gL_MAX_PALETTE_MATRICES_OES ()))

let gL_MAX_VERTEX_UNITS_OES : int = 34468
let get_gL_MAX_VERTEX_UNITS_OES () = gL_MAX_VERTEX_UNITS_OES
let () = java_register_static "GL11Ext.get_gL_MAX_VERTEX_UNITS_OES" (fun _ -> Obj.repr (get_gL_MAX_VERTEX_UNITS_OES ()))

let gL_TEXTURE_CROP_RECT_OES : int = 35741
let get_gL_TEXTURE_CROP_RECT_OES () = gL_TEXTURE_CROP_RECT_OES
let () = java_register_static "GL11Ext.get_gL_TEXTURE_CROP_RECT_OES" (fun _ -> Obj.repr (get_gL_TEXTURE_CROP_RECT_OES ()))

let gL_WEIGHT_ARRAY_BUFFER_BINDING_OES : int = 34974
let get_gL_WEIGHT_ARRAY_BUFFER_BINDING_OES () = gL_WEIGHT_ARRAY_BUFFER_BINDING_OES
let () = java_register_static "GL11Ext.get_gL_WEIGHT_ARRAY_BUFFER_BINDING_OES" (fun _ -> Obj.repr (get_gL_WEIGHT_ARRAY_BUFFER_BINDING_OES ()))

let gL_WEIGHT_ARRAY_OES : int = 34477
let get_gL_WEIGHT_ARRAY_OES () = gL_WEIGHT_ARRAY_OES
let () = java_register_static "GL11Ext.get_gL_WEIGHT_ARRAY_OES" (fun _ -> Obj.repr (get_gL_WEIGHT_ARRAY_OES ()))

let gL_WEIGHT_ARRAY_POINTER_OES : int = 34476
let get_gL_WEIGHT_ARRAY_POINTER_OES () = gL_WEIGHT_ARRAY_POINTER_OES
let () = java_register_static "GL11Ext.get_gL_WEIGHT_ARRAY_POINTER_OES" (fun _ -> Obj.repr (get_gL_WEIGHT_ARRAY_POINTER_OES ()))

let gL_WEIGHT_ARRAY_SIZE_OES : int = 34475
let get_gL_WEIGHT_ARRAY_SIZE_OES () = gL_WEIGHT_ARRAY_SIZE_OES
let () = java_register_static "GL11Ext.get_gL_WEIGHT_ARRAY_SIZE_OES" (fun _ -> Obj.repr (get_gL_WEIGHT_ARRAY_SIZE_OES ()))

let gL_WEIGHT_ARRAY_STRIDE_OES : int = 34474
let get_gL_WEIGHT_ARRAY_STRIDE_OES () = gL_WEIGHT_ARRAY_STRIDE_OES
let () = java_register_static "GL11Ext.get_gL_WEIGHT_ARRAY_STRIDE_OES" (fun _ -> Obj.repr (get_gL_WEIGHT_ARRAY_STRIDE_OES ()))

let gL_WEIGHT_ARRAY_TYPE_OES : int = 34473
let get_gL_WEIGHT_ARRAY_TYPE_OES () = gL_WEIGHT_ARRAY_TYPE_OES
let () = java_register_static "GL11Ext.get_gL_WEIGHT_ARRAY_TYPE_OES" (fun _ -> Obj.repr (get_gL_WEIGHT_ARRAY_TYPE_OES ()))


