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
(* package org.allbinary.input.automation.module.game *)

open Allbinary_java [@@warning "-33"]
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)

class hitPointGameObject (bufferedImage, (minX : int), (maxX : int), (y : int)) =
  object (self)
    inherit MeteredGameObject.meteredGameObject (bufferedImage, minX, maxX, y)
    val mutable damaged : bool = false
    method damaged = damaged
    method set_damaged value' = damaged <- value'
    val mutable closeDeath : bool = false
    method closeDeath = closeDeath
    method set_closeDeath value' = closeDeath <- value'
    val mutable hP_LABEL : string = ""
    method hP_LABEL = hP_LABEL
    method set_hP_LABEL value' = hP_LABEL <- value'
    val mutable iS_DAMAGED_LABEL : string = ""
    method iS_DAMAGED_LABEL = iS_DAMAGED_LABEL
    method set_iS_DAMAGED_LABEL value' = iS_DAMAGED_LABEL <- value'
    val mutable iS_CLOSE_DEATH_LABEL : string = ""
    method iS_CLOSE_DEATH_LABEL = iS_CLOSE_DEATH_LABEL
    method set_iS_CLOSE_DEATH_LABEL value' = iS_CLOSE_DEATH_LABEL <- value'
    
    

    method isMoreThan ((aFloat : float)) : bool =
        try
        begin
        if (((self#getRatios ()).(((Array.length (self#getRatios ())) - 1))#doubleValue ()) > aFloat) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method isCloseDeath () : bool =
        begin
        closeDeath
        end [@@warning "-7"]
    

    method setCloseDeath ((closeDeath_arg : bool)) : unit =
        begin
        closeDeath <- closeDeath_arg
        end [@@warning "-7"]
    

    method isDamaged () : bool =
        begin
        damaged
        end [@@warning "-7"]
    

    method setDamaged ((damaged_arg : bool)) : unit =
        begin
        damaged <- damaged_arg
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (hP_LABEL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr super))));
        ignore (!stringBuffer#append (!commonSeps#nEW_LINE));
        ignore (!stringBuffer#append (iS_DAMAGED_LABEL));
        ignore (!stringBuffer#appendboolean ((self#isDamaged ())));
        ignore (!stringBuffer#append (!commonSeps#nEW_LINE));
        ignore (!stringBuffer#append (iS_CLOSE_DEATH_LABEL));
        ignore (!stringBuffer#appendboolean ((self#isCloseDeath ())));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]

    initializer
      begin
        damaged <- false;
        closeDeath <- false;
        hP_LABEL <- "HP: ";
        iS_DAMAGED_LABEL <- "isDamaged: ";
        iS_CLOSE_DEATH_LABEL <- "isCloseDeath: ";
        ();
        (* super(...) is the inherit clause *) ();
        if (((self#getRatios ()).(((Array.length bufferedImage) - 1))#doubleValue ()) < 1.0) then begin
            (self#setDamaged (true))
        end else begin
            (self#setDamaged (false))
        end;
        if (((self#getRatios ()).(((Array.length bufferedImage) - 1))#doubleValue ()) > 0.25) then begin
            closeDeath <- false
        end else begin
            closeDeath <- true
        end
      end
  end
let () = java_register_constructor "HitPointGameObject" (fun arguments -> Obj.repr (new hitPointGameObject (Obj.obj arguments)))


