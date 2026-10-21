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
(* package org.allbinary.media.graphics.geography.map.topview *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellType *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListS *)

class basicTopViewGeographicMapCellType ((name_arg : string), (types_arg : BasicArrayList.basicArrayList), (cost_arg : int)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable cost : int = 0
    method cost = cost
    method set_cost value' = cost <- value'
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
    

    method getTypes () : int array =
        begin
        types
        end
    

    method toString () : string =
        begin
        let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let size : int ref = ref ((Array.length types)) in ();
        for index = 0 to !size - 1 do
            ignore ((!stringMaker#appendint (types.(index)))#append ((CommonSeps.getInstance ())#cOMMA))
        done;
        (java_string_of (Obj.repr !stringMaker))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        ();
        let size : int ref = ref ((types_arg#size ())) in ();
        let typeArray : int array ref = ref ((Array.make (!size) 0)) in ();
        let typeAsInteger : int ref = ref ((Obj.magic 0)) in ();
        let type_ : int ref = ref (0) in ();
        for index = 0 to !size - 1 do
            typeAsInteger := ((Obj.magic (types_arg#get (index))));
            type_ := !typeAsInteger;
            if (((GeographicMapCellTypeFactory.getInstance ())#getGeographicMapCellTypeArray ()).(!type_) == (Obj.magic 0)) then begin
                (new RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType (name_arg, !type_, cost_arg, 0))
            end else begin
                ()
            end;
            !typeArray.(index) <- !type_
        done;
        name <- name_arg;
        cost <- cost_arg;
        types <- !typeArray
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicTopViewGeographicMapCellType" (fun arguments -> Obj.repr (new basicTopViewGeographicMapCellType (Obj.obj arguments)))

let createType ((name_arg : string), (type_ : int), (cost_arg : int)) =
        begin
        let types_arg : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListS.basicArrayListS (1)) :> BasicArrayList.basicArrayList)) in ();
        ignore (!types_arg#add (type_));
        (new basicTopViewGeographicMapCellType (name_arg, !types_arg, cost_arg))
        end
let () = java_register_static "BasicTopViewGeographicMapCellType.createType" (fun arguments -> Obj.repr (createType (Obj.obj arguments)))


