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
(* package org.allbinary.graphics *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import jsinterop.annotations.JsType *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsConstructor *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.math.PositionStrings *)
(* import org.allbinary.string.CommonSeps *)

let pOINT_LABEL : string = "Point: "
let get_pOINT_LABEL () = pOINT_LABEL
let () = java_register_static "GPoint.get_pOINT_LABEL" (fun _ -> Obj.repr (get_pOINT_LABEL ()))

let toStringStatic ((x_arg : int), (y_arg : int), (z_arg : int)) : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let positionStrings : PositionStrings.positionStrings ref = ref (((PositionStrings.getInstance ()) :> PositionStrings.positionStrings)) in ();
        ignore (!stringBuffer#append (pOINT_LABEL));
        ignore (!stringBuffer#append (!positionStrings#x_LABEL));
        ignore (!stringBuffer#appendint (x_arg));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
        ignore (!stringBuffer#append (!positionStrings#y_LABEL));
        ignore (!stringBuffer#appendint (y_arg));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
        ignore (!stringBuffer#append (!positionStrings#z_LABEL));
        ignore (!stringBuffer#appendint (z_arg));
        (java_string_of (Obj.repr !stringBuffer))
        end

let () = java_register_static "GPoint.toStringStatic" (fun arguments -> Obj.repr (toStringStatic (Obj.obj arguments)))
class gPoint ((x_arg : int), (y_arg : int), (z_arg : int)) =
  object (self)
    val mutable x : int = 0
    method x = x
    method set_x value' = x <- value'
    val mutable y : int = 0
    method y = y
    method set_y value' = y <- value'
    val mutable z : int = 0
    method z = z
    method set_z value' = z <- value'
    
    

    method getX () : int =
        begin
        x
        end
    

    method getY () : int =
        begin
        y
        end
    

    method getZ () : int =
        begin
        z
        end
    

    method getRawX () : int =
        begin
        x
        end
    

    method getRawY () : int =
        begin
        y
        end
    

    method getRawZ () : int =
        begin
        z
        end
    

    method toString () : string =
        begin
        (toStringStatic ((self#getX ()), (self#getY ()), (self#getZ ())))
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        x <- x_arg;
        y <- y_arg;
        z <- z_arg
      end
  end
let () = java_register_constructor "GPoint" (fun arguments -> Obj.repr (new gPoint (Obj.obj arguments)))

let getInstance : 'any1. 'any1 -> _ = fun (point) ->
        let point = Obj.repr point in
        begin
        (new gPoint (((Obj.magic point)#getX ()), ((Obj.magic point)#getY ()), ((Obj.magic point)#getZ ())))
        end [@@warning "-20"]
let () = java_register_static "GPoint.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


