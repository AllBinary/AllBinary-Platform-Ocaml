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
(* package org.allbinary.business.advertisement.area *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints *)
(* import org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface *)
(* import org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint *)
(* import org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class advertisementAreaConstraints (document) =
  object
    val mutable displayInBrowserContraintsInterface : DisplayInBrowserContraintsInterface.displayInBrowserContraintsInterface = (Obj.magic 0)
    method displayInBrowserContraintsInterface = displayInBrowserContraintsInterface
    method set_displayInBrowserContraintsInterface value' = displayInBrowserContraintsInterface <- value'
    val mutable twoDimensionConstraintsInterface : TwoDimensionalConstraintInterface.twoDimensionalConstraintInterface = (Obj.magic 0)
    method twoDimensionConstraintsInterface = twoDimensionConstraintsInterface
    method set_twoDimensionConstraintsInterface value' = twoDimensionConstraintsInterface <- value'
    
    

    method setDisplayInBrowserContraints : 'any1. 'any1 -> unit = fun (displayInBrowserContraintsInterface_arg) ->
        let displayInBrowserContraintsInterface_arg = Obj.repr displayInBrowserContraintsInterface_arg in
        begin
        displayInBrowserContraintsInterface <- (Obj.magic displayInBrowserContraintsInterface_arg)
        end [@@warning "-20"]
    

    method getTwoDimensionContraints : 'any1. 'any1 -> unit = fun (twoDimensionConstraintsInterface_arg) ->
        let twoDimensionConstraintsInterface_arg = Obj.repr twoDimensionConstraintsInterface_arg in
        begin
        twoDimensionConstraintsInterface <- (Obj.magic twoDimensionConstraintsInterface_arg)
        end [@@warning "-20"]
    

    method getDisplayInBrowserContraints () : DisplayInBrowserContraintsInterface.displayInBrowserContraintsInterface =
        begin
        (displayInBrowserContraintsInterface :> DisplayInBrowserContraintsInterface.displayInBrowserContraintsInterface)
        end
    

    (* Java overload getTwoDimensionContraints() is not converted: OCaml has one method per name *)

    initializer
      begin
        ();
        ();
        ();
        let node : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode ((AdvertisementAreaData.getInstance ())#nAME, (document#getChildNodes ()))))) in ();
        displayInBrowserContraintsInterface <- (new DisplayInBrowserContraints.displayInBrowserContraints ((Obj.magic !node)));
        twoDimensionConstraintsInterface <- (new TwoDimensionalConstraint.twoDimensionalConstraint ((Obj.magic !node)))
      end
  end
let () = java_register_constructor "AdvertisementAreaConstraints" (fun arguments -> Obj.repr (new advertisementAreaConstraints (Obj.obj arguments)))


