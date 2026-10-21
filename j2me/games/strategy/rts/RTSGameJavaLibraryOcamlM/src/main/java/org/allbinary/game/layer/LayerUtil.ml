(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.math.PositionStrings *)
(* import org.allbinary.util.ABHashtable *)

let hASHTABLE : string = "Hashtable: "
let get_hASHTABLE () = hASHTABLE
let () = java_register_static "LayerUtil.get_hASHTABLE" (fun _ -> Obj.repr (get_hASHTABLE ()))

let toString : 'any1. 'any1 * int * int * int -> string = fun (hashtable, (x : int), (y : int), (z : int)) ->
        let hashtable = Obj.repr hashtable in
        begin
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        let positionStrings : PositionStrings.positionStrings ref = ref (((PositionStrings.getInstance ()) :> PositionStrings.positionStrings)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (hASHTABLE));
        ignore (!stringBuffer#append (((StringUtil.getInstance ())#toString ((Obj.magic hashtable)))));
        ignore (!stringBuffer#append (!commonSeps#sPACE));
        ignore (!stringBuffer#append (!positionStrings#x_LABEL));
        ignore (!stringBuffer#appendint (x));
        ignore (!stringBuffer#append (!commonSeps#sPACE));
        ignore (!stringBuffer#append (!positionStrings#y_LABEL));
        ignore (!stringBuffer#appendint (y));
        ignore (!stringBuffer#append (!commonSeps#sPACE));
        ignore (!stringBuffer#append (!positionStrings#z_LABEL));
        ignore (!stringBuffer#appendint (z));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-20"]

let () = java_register_static "LayerUtil.toString" (fun arguments -> Obj.repr (toString (Obj.obj arguments)))
class layerUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "LayerUtil" (fun arguments -> Obj.repr (new layerUtil (Obj.obj arguments)))


