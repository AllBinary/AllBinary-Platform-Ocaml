(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package min3d.core *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.khronos.egl.EGLConfig *)
(* import javax.microedition.khronos.opengles.GL10 *)

class virtual renderer =
  object
    method virtual onSurfaceCreated : 'any1 'any2 . 'any1 * 'any2 -> unit
    method virtual onSurfaceChanged : 'any1 . 'any1 * int * int -> unit
    method virtual onDrawFrame : 'any1 . 'any1 -> unit
  end


