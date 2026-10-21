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
(* package org.allbinary.data.tables.advertisement.areas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

let cLASSNAME : string = "org.allbinary.data.tables.AdvertisementEntity"
let get_cLASSNAME () = cLASSNAME
let () = java_register_static "AdvertisementAreasEntityFactory.get_cLASSNAME" (fun _ -> Obj.repr (get_cLASSNAME ()))

let getInstance () : AdvertisementAreasEntityInterface.advertisementAreasEntityInterface =
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        (try
            ((Obj.magic (new AdvertisementAreasEntity.advertisementAreasEntity ())) :> AdvertisementAreasEntityInterface.advertisementAreasEntityInterface)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eNTITYFACTORYERROR)) then begin
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                ignore ((Obj.magic !logUtil)#put (!commonStrings#eXCEPTION, "AdvertisementAreasEntityFactory", !commonStrings#gET_INSTANCE, e))
            end;
            ((Obj.magic 0) :> AdvertisementAreasEntityInterface.advertisementAreasEntityInterface)
        end)
        end

let () = java_register_static "AdvertisementAreasEntityFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class advertisementAreasEntityFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "AdvertisementAreasEntityFactory" (fun arguments -> Obj.repr (new advertisementAreasEntityFactory (Obj.obj arguments)))


