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
(* package org.allbinary.media.image.comparison.motion *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.Rectangle *)
(* import java.util.Vector *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class motionRectangle (rectangle_arg) =
  object (self)
    val mutable rectangle : Obj.t = Obj.repr 0
    method rectangle : 'r. 'r = Obj.magic rectangle
    method set_rectangle : 'v. 'v -> unit = fun value' -> rectangle <- Obj.repr value'
    val mutable pixelDeltaVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method pixelDeltaVector = pixelDeltaVector
    method set_pixelDeltaVector value' = pixelDeltaVector <- value'
    
    

    method getRectangle : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic rectangle)))
        end
    

    method setRectangle : 'any1. 'any1 -> unit = fun (rectangle_arg) ->
        let rectangle_arg = Obj.repr rectangle_arg in
        begin
        rectangle <- Obj.repr ((Obj.magic rectangle_arg))
        end [@@warning "-20"]
    

    method getPixelDeltaVector () : BasicArrayList.basicArrayList =
        begin
        (pixelDeltaVector :> BasicArrayList.basicArrayList)
        end
    

    method setPixelDeltaVector : 'any1. 'any1 -> unit = fun (pixelDeltaVector_arg) ->
        let pixelDeltaVector_arg = Obj.repr pixelDeltaVector_arg in
        begin
        pixelDeltaVector <- (Obj.magic pixelDeltaVector_arg)
        end [@@warning "-20"]
    

    method clone () : Obj.t =
        begin
        let motionRectangle : Obj.t ref = ref ((Obj.repr (new motionRectangle ((Obj.magic ((self#getRectangle ())#clone ())))))) in ();
        ignore ((Obj.magic !motionRectangle)#setPixelDeltaVector ((Obj.magic ((self#getPixelDeltaVector ())#clone ()))));
        (Obj.repr ((Obj.magic !motionRectangle)))
        end

    initializer
      begin
        rectangle <- (Obj.repr (Obj.magic 0));
        pixelDeltaVector <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        ();
        (self#setRectangle (rectangle_arg));
        (self#setPixelDeltaVector ((new BasicArrayListD.basicArrayListD ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "MotionRectangle" (fun arguments -> Obj.repr (new motionRectangle (Obj.obj arguments)))


