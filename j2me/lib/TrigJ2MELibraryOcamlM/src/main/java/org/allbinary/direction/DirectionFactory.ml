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
(* import org.allbinary.string.CommonPhoneStrings *)
(* import org.allbinary.string.CommonSeps *)

class directionFactory () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable lEFT : Direction.direction = (Obj.magic 0)
    method lEFT = lEFT
    method set_lEFT value' = lEFT <- value'
    val mutable rIGHT : Direction.direction = (Obj.magic 0)
    method rIGHT = rIGHT
    method set_rIGHT value' = rIGHT <- value'
    val mutable dOWN : Direction.direction = (Obj.magic 0)
    method dOWN = dOWN
    method set_dOWN value' = dOWN <- value'
    val mutable uP : Direction.direction = (Obj.magic 0)
    method uP = uP
    method set_uP value' = uP <- value'
    val mutable uP_LEFT : Direction.direction = (Obj.magic 0)
    method uP_LEFT = uP_LEFT
    method set_uP_LEFT value' = uP_LEFT <- value'
    val mutable uP_RIGHT : Direction.direction = (Obj.magic 0)
    method uP_RIGHT = uP_RIGHT
    method set_uP_RIGHT value' = uP_RIGHT <- value'
    val mutable dOWN_LEFT : Direction.direction = (Obj.magic 0)
    method dOWN_LEFT = dOWN_LEFT
    method set_dOWN_LEFT value' = dOWN_LEFT <- value'
    val mutable dOWN_RIGHT : Direction.direction = (Obj.magic 0)
    method dOWN_RIGHT = dOWN_RIGHT
    method set_dOWN_RIGHT value' = dOWN_RIGHT <- value'
    val mutable nOT_BORDERED_WITH : Direction.direction = (Obj.magic 0)
    method nOT_BORDERED_WITH = nOT_BORDERED_WITH
    method set_nOT_BORDERED_WITH value' = nOT_BORDERED_WITH <- value'
    val mutable nO_DIRECTION : Direction.direction = (Obj.magic 0)
    method nO_DIRECTION = nO_DIRECTION
    method set_nO_DIRECTION value' = nO_DIRECTION <- value'
    val mutable tOP : Direction.direction = (Obj.magic 0)
    method tOP = tOP
    method set_tOP value' = tOP <- value'
    val mutable bOTTOM : Direction.direction = (Obj.magic 0)
    method bOTTOM = bOTTOM
    method set_bOTTOM value' = bOTTOM <- value'
    val mutable aLL_DIRECTION : Direction.direction = (Obj.magic 0)
    method aLL_DIRECTION = aLL_DIRECTION
    method set_aLL_DIRECTION value' = aLL_DIRECTION <- value'
    

    initializer
      begin
        nAME <- "DIRECTION";
        lEFT <- ((new Direction.direction ((CommonPhoneStrings.getInstance ())#lEFT, "WEST", 0, 1)) :> Direction.direction);
        rIGHT <- ((new Direction.direction ((CommonPhoneStrings.getInstance ())#rIGHT, "EAST", 1, 0)) :> Direction.direction);
        dOWN <- ((new Direction.direction ((CommonPhoneStrings.getInstance ())#dOWN, "SOUTH", 2, 0)) :> Direction.direction);
        uP <- ((new Direction.direction ((CommonPhoneStrings.getInstance ())#uP, "NORTH", 3, 0)) :> Direction.direction);
        ();
        ();
        ();
        ();
        nOT_BORDERED_WITH <- ((new Direction.direction ("NOT_BORDERED_WITH", "NOT_BORDERED_WITH", 8, 0)) :> Direction.direction);
        nO_DIRECTION <- ((new Direction.direction ("NO_DIRECTION", "NO_DIRECTION", 9, 0)) :> Direction.direction);
        tOP <- ((new Direction.direction ("TOP", "TOP", 10, 0)) :> Direction.direction);
        bOTTOM <- ((new Direction.direction ("BOTTOM", "BOTTOM", 11, 0)) :> Direction.direction);
        aLL_DIRECTION <- ((new Direction.direction ("ALL_DIRECTION", "ALL_DIRECTION", 12, 0)) :> Direction.direction);
        ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        uP_LEFT <- (new Direction.direction ("UP LEFT", (java_string_of (Obj.repr (((!stringBuffer#append ((uP#getOtherName ())))#append (!commonSeps#sPACE))#append ((lEFT#getOtherName ()))))), 4, 0));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        uP_RIGHT <- (new Direction.direction ("UP RIGHT", (java_string_of (Obj.repr (((!stringBuffer#append ((uP#getOtherName ())))#append (!commonSeps#sPACE))#append ((rIGHT#getOtherName ()))))), 5, 0));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        dOWN_LEFT <- (new Direction.direction ("DOWN LEFT", (java_string_of (Obj.repr (((!stringBuffer#append ((dOWN#getOtherName ())))#append (!commonSeps#sPACE))#append ((lEFT#getOtherName ()))))), 6, 0));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        dOWN_RIGHT <- (new Direction.direction ("DOWN RIGHT", (java_string_of (Obj.repr (((!stringBuffer#append ((dOWN#getOtherName ())))#append (!commonSeps#sPACE))#append ((rIGHT#getOtherName ()))))), 7, 0))
      end
  end
let () = java_register_constructor "DirectionFactory" (fun arguments -> Obj.repr (new directionFactory (Obj.obj arguments)))

let instance = (new directionFactory ())
let get_instance () = instance
let () = java_register_static "DirectionFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "DirectionFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


