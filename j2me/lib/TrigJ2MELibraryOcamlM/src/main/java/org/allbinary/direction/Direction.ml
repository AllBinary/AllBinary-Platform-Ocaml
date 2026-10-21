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
(* package org.allbinary.direction *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringMaker *)

let directionArray = ref ((Array.make (13) (Obj.magic 0)))
let get_directionArray () = !directionArray
let set_directionArray value' = directionArray := value'
let () = java_register_static "Direction.get_directionArray" (fun _ -> Obj.repr (get_directionArray ()))

let getInstance ((direction : int)) =
        begin
        !directionArray.(direction)
        end

let () = java_register_static "Direction.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class direction ((name_arg : string), (otherName_arg : string), (value_arg : int), (frameFactor_arg : int)) =
  object (self)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable otherName : string = ""
    method otherName = otherName
    method set_otherName value' = otherName <- value'
    val mutable value : int = 0
    method value = value
    method set_value value' = value <- value'
    val mutable frameFactor : int = 0
    method frameFactor = frameFactor
    method set_frameFactor value' = frameFactor <- value'
    
    

    method getValue () : int =
        begin
        value
        end
    

    method getFrameFactor () : int =
        begin
        frameFactor
        end
    

    method getOtherName () : string =
        begin
        otherName
        end
    

    method getName () : string =
        begin
        name
        end
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("Direction: "));
        ignore (!stringBuffer#append ((self#getName ())));
        ignore (!stringBuffer#append (" Or: "));
        ignore (!stringBuffer#append ((self#getOtherName ())));
        ignore (!stringBuffer#append (" Value: "));
        ignore (!stringBuffer#appendint (value));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        name <- name_arg;
        otherName <- otherName_arg;
        value <- value_arg;
        frameFactor <- frameFactor_arg;
        !directionArray.(value_arg) <- self
      end
  end
let () = java_register_constructor "Direction" (fun arguments -> Obj.repr (new direction (Obj.obj arguments)))


