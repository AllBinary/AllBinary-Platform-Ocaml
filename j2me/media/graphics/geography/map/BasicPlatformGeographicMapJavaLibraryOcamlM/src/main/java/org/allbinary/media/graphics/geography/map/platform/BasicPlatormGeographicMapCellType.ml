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
(* package org.allbinary.media.graphics.geography.map.platform *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellType *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListS *)

class basicPlatormGeographicMapCellType ((types_arg : BasicArrayList.basicArrayList)) =
  object (self)
    val mutable types : int array = (Obj.magic 0)
    method types = types
    method set_types value' = types <- value'
    
    

    method isType : 'any1. 'any1 -> bool = fun (type_) ->
        let type_ = Obj.repr type_ in
        begin
        (self#hasType (((Obj.magic type_)#getType ())))
        end [@@warning "-20"]
    

    method hasType ((type_ : int)) : bool =
        try
        begin
        let size : int ref = ref ((Array.length types)) in ();
        for index = 0 to !size - 1 do
            if (types.(index) = type_) then begin
                raise (Java_return (Obj.repr (true)))
            end
        done;
        false
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        ();
        ();
        let size : int ref = ref ((types_arg#size ())) in ();
        let typeArray : int array ref = ref ((Array.make (!size) 0)) in ();
        let typeAsInteger : int ref = ref ((Obj.magic 0)) in ();
        let type_ : int ref = ref (0) in ();
        for index = 0 to !size - 1 do
            typeAsInteger := ((Obj.magic (types_arg#get (index))));
            type_ := !typeAsInteger;
            (new GeographicMapCellType.geographicMapCellType (!type_, 0));
            !typeArray.(index) <- !type_
        done;
        types <- !typeArray
      end
  end
let () = java_register_constructor "BasicPlatormGeographicMapCellType" (fun arguments -> Obj.repr (new basicPlatormGeographicMapCellType (Obj.obj arguments)))

let createType ((type_ : int)) =
        begin
        let types_arg : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListS.basicArrayListS (1)) :> BasicArrayList.basicArrayList)) in ();
        ignore (!types_arg#add (((SmallIntegerSingletonFactory.getInstance ())#getAt (type_))));
        let basicPlatormGeographicMapCellType : Obj.t ref = ref ((Obj.repr (new basicPlatormGeographicMapCellType (!types_arg)))) in ();
        (Obj.magic !basicPlatormGeographicMapCellType)
        end
let () = java_register_static "BasicPlatormGeographicMapCellType.createType" (fun arguments -> Obj.repr (createType (Obj.obj arguments)))


