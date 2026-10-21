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
(* package org.allbinary.media.graphics.geography.map *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)

let nULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY = (Array.make (0) (Obj.magic 0))
let get_nULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY () = nULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY
let () = java_register_static "GeographicMapCellType.get_nULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY" (fun _ -> Obj.repr (get_nULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY ()))
class geographicMapCellType ((type__arg : int), (reset : int)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable type_ : int = 0
    method type_ = type_
    method set_type_ value' = type_ <- value'
    
    

    method getType () : int =
        begin
        type_
        end
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr ((SmallIntegerSingletonFactory.getInstance ())#getAt (type_))))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        type_ <- type__arg;
        if (type__arg <> (-2147483648)) then begin
            let geographicMapCellTypeFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "GeographicMapCellTypeFactory.getInstance" (Obj.repr ()))))) in ();
            let geographicMapCellTypeArray : Obj.t ref = ref ((Obj.repr ((Obj.magic !geographicMapCellTypeFactory)#getGeographicMapCellTypeArray ()))) in ();
            if (((Obj.magic !geographicMapCellTypeArray).(type__arg) == (Obj.magic 0)) || (reset = 1)) then begin
                (Obj.magic !geographicMapCellTypeArray).(type__arg) <- self
            end else begin
                if (reset <> (-1)) then begin
                    raise (Failure ("RuntimeException"))
                end
            end
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "GeographicMapCellType" (fun arguments -> Obj.repr (new geographicMapCellType (Obj.obj arguments)))

let nULL_GEOGRAPHIC_MAP_CELL_TYPE = (new geographicMapCellType ((-2147483648), 0))
let get_nULL_GEOGRAPHIC_MAP_CELL_TYPE () = nULL_GEOGRAPHIC_MAP_CELL_TYPE
let () = java_register_static "GeographicMapCellType.get_nULL_GEOGRAPHIC_MAP_CELL_TYPE" (fun _ -> Obj.repr (get_nULL_GEOGRAPHIC_MAP_CELL_TYPE ()))


