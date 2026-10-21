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
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.util.ABHashtable *)

let hashtable : Obj.t = (Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()))
let get_hashtable () = Obj.magic hashtable
let () = java_register_static "GeographicMapCellPositionFactory.get_hashtable" (fun _ -> Obj.repr (get_hashtable ()))

let getHashtable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic hashtable)))
        end

let () = java_register_static "GeographicMapCellPositionFactory.getHashtable" (fun arguments -> Obj.repr (getHashtable (Obj.obj arguments)))
class geographicMapCellPositionFactory () =
  object (self)
    inherit GeographicMapCellPositionBaseFactory.geographicMapCellPositionBaseFactory ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    method getInstance : 'any1. 'any1 -> BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory = fun (geographicMapInterface) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        try
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        let allBinaryTiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref ((((Obj.magic geographicMapInterface)#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let geographicMapCellPositionFactoryCanBeNull : Obj.t ref = ref ((Obj.repr ((Obj.magic hashtable)#get ((!allBinaryTiledLayer#getDataId ()))))) in ();
        if (!geographicMapCellPositionFactoryCanBeNull == (Obj.magic 0)) then begin
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Creating GeographicMapCellPositionFactory for TileLayer: "))#appendint ((java_to_int (Obj.repr (((!allBinaryTiledLayer#getDataId ())#intValue ())))))))), self, !commonStrings#gET_INSTANCE));
            geographicMapCellPositionFactoryCanBeNull := (new BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory ((Obj.magic geographicMapInterface)));
            ignore ((Obj.magic hashtable)#put ((!allBinaryTiledLayer#getDataId ()), !geographicMapCellPositionFactoryCanBeNull));
            raise (Java_return (Obj.repr ((Obj.magic !geographicMapCellPositionFactoryCanBeNull))))
        end else begin
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Reusing GeographicMapCellPositionFactory for TileLayer: "))#appendint ((java_to_int (Obj.repr (((!allBinaryTiledLayer#getDataId ())#intValue ())))))))), self, !commonStrings#gET_INSTANCE));
            raise (Java_return (Obj.repr ((Obj.magic !geographicMapCellPositionFactoryCanBeNull))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "GeographicMapCellPositionFactory" (fun arguments -> Obj.repr (new geographicMapCellPositionFactory (Obj.obj arguments)))


