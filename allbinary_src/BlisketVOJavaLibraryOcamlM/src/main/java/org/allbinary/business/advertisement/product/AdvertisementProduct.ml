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
(* package org.allbinary.business.advertisement.product *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface *)

class advertisementProduct () =
  object
    val mutable type_ : string = ""
    method type_ = type_
    method set_type_ value' = type_ <- value'
    val mutable link : string = ""
    method link = link
    method set_link value' = link <- value'
    val mutable number : int = 0
    method number = number
    method set_number value' = number <- value'
    val mutable constraint_ : TwoDimensionalConstraintInterface.twoDimensionalConstraintInterface = (Obj.magic 0)
    method constraint_ = constraint_
    method set_constraint_ value' = constraint_ <- value'
    
    

    method getType () : string =
        begin
        type_
        end
    

    method getLink () : string =
        begin
        link
        end
    

    method getNumber () : int =
        begin
        number
        end
    

    method getTwoDimensionalConstraint () : TwoDimensionalConstraintInterface.twoDimensionalConstraintInterface =
        begin
        (constraint_ :> TwoDimensionalConstraintInterface.twoDimensionalConstraintInterface)
        end

    initializer
      begin
        type_ <- "";
        link <- "";
        number <- 0;
        constraint_ <- ((Obj.magic 0) :> TwoDimensionalConstraintInterface.twoDimensionalConstraintInterface);
        ();
        ()
      end
  end
let () = java_register_constructor "AdvertisementProduct" (fun arguments -> Obj.repr (new advertisementProduct (Obj.obj arguments)))


