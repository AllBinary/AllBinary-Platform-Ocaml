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
(* package org.allbinary.business.advertisement.thumbnail *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface *)

class advertisementThumbnail () =
  object
    val mutable imageFileName : string = ""
    method imageFileName = imageFileName
    method set_imageFileName value' = imageFileName <- value'
    val mutable imageUrl : string = ""
    method imageUrl = imageUrl
    method set_imageUrl value' = imageUrl <- value'
    val mutable constraint_ : TwoDimensionalConstraintInterface.twoDimensionalConstraintInterface = (Obj.magic 0)
    method constraint_ = constraint_
    method set_constraint_ value' = constraint_ <- value'
    
    

    method getFileName () : string =
        begin
        imageFileName
        end
    

    method getUrl () : string =
        begin
        imageUrl
        end
    

    method getTwoDimensionalConstraint () : TwoDimensionalConstraintInterface.twoDimensionalConstraintInterface =
        begin
        (constraint_ :> TwoDimensionalConstraintInterface.twoDimensionalConstraintInterface)
        end

    initializer
      begin
        imageFileName <- "";
        imageUrl <- "";
        constraint_ <- ((Obj.magic 0) :> TwoDimensionalConstraintInterface.twoDimensionalConstraintInterface);
        ();
        ()
      end
  end
let () = java_register_constructor "AdvertisementThumbnail" (fun arguments -> Obj.repr (new advertisementThumbnail (Obj.obj arguments)))


