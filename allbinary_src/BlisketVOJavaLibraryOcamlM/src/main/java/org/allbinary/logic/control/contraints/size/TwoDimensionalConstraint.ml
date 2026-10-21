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
(* package org.allbinary.logic.control.contraints.size *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.w3c.dom.Node *)

class twoDimensionalConstraint (_node) =
  object
    val mutable widthSizeConstraintInterface : SizeConstraintInterface.sizeConstraintInterface = (Obj.magic 0)
    method widthSizeConstraintInterface = widthSizeConstraintInterface
    method set_widthSizeConstraintInterface value' = widthSizeConstraintInterface <- value'
    val mutable heightSizeConstraintInterface : SizeConstraintInterface.sizeConstraintInterface = (Obj.magic 0)
    method heightSizeConstraintInterface = heightSizeConstraintInterface
    method set_heightSizeConstraintInterface value' = heightSizeConstraintInterface <- value'
    
    

    method getHeight () : SizeConstraintInterface.sizeConstraintInterface =
        begin
        (heightSizeConstraintInterface :> SizeConstraintInterface.sizeConstraintInterface)
        end
    

    method getWidth () : SizeConstraintInterface.sizeConstraintInterface =
        begin
        (widthSizeConstraintInterface :> SizeConstraintInterface.sizeConstraintInterface)
        end
    

    method setHeight : 'any1. 'any1 -> unit = fun (heightSizeConstraintInterface_arg) ->
        let heightSizeConstraintInterface_arg = Obj.repr heightSizeConstraintInterface_arg in
        begin
        heightSizeConstraintInterface <- (Obj.magic heightSizeConstraintInterface_arg)
        end [@@warning "-20"]
    

    method setWidth : 'any1. 'any1 -> unit = fun (widthSizeConstraintInterface_arg) ->
        let widthSizeConstraintInterface_arg = Obj.repr widthSizeConstraintInterface_arg in
        begin
        widthSizeConstraintInterface <- (Obj.magic widthSizeConstraintInterface_arg)
        end [@@warning "-20"]

    initializer
      begin
        widthSizeConstraintInterface <- ((Obj.magic 0) :> SizeConstraintInterface.sizeConstraintInterface);
        heightSizeConstraintInterface <- ((Obj.magic 0) :> SizeConstraintInterface.sizeConstraintInterface);
        ();
        ()
      end
  end
let () = java_register_constructor "TwoDimensionalConstraint" (fun arguments -> Obj.repr (new twoDimensionalConstraint (Obj.obj arguments)))


