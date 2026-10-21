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
(* import org.allbinary.logic.NullUtil *)

class geographicMapCellHistoryProgress ((geographicMapCellHistoryArray_arg : GeographicMapCellHistory.geographicMapCellHistory array)) =
  object (self)
    inherit GeographicMapCellHistoryProgressBase.geographicMapCellHistoryProgressBase ()
    val mutable totalVisitedArray : int array = (Obj.magic 0)
    method totalVisitedArray = totalVisitedArray
    method set_totalVisitedArray value' = totalVisitedArray <- value'
    val mutable geographicMapCellHistoryArray : GeographicMapCellHistory.geographicMapCellHistory array = (Obj.magic 0)
    method geographicMapCellHistoryArray = geographicMapCellHistoryArray
    method set_geographicMapCellHistoryArray value' = geographicMapCellHistoryArray <- value'
    
    

    method init () : unit =
        begin
        totalVisitedArray <- (Array.make ((Array.length geographicMapCellHistoryArray)) 0)
        end [@@warning "-7"]
    

    method isAnyProgress () : bool =
        begin
        let isProgressing : bool ref = ref (false) in ();
        let size : int ref = ref ((Array.length geographicMapCellHistoryArray)) in ();
        let currentTotalVisited : int ref = ref (0) in ();
        let totalVisited : int ref = ref (0) in ();
        for index = 0 to !size - 1 do
            totalVisited := (geographicMapCellHistoryArray.(index)#getTotalVisited ());
            currentTotalVisited := totalVisitedArray.(index);
            if (!currentTotalVisited < !totalVisited) then begin
                isProgressing := true;
                totalVisitedArray.(index) <- !totalVisited
            end
        done;
        !isProgressing
        end [@@warning "-7"]

    initializer
      begin
        totalVisitedArray <- (NullUtil.getInstance ())#nULL_INT_ARRAY;
        geographicMapCellHistoryArray <- (GeographicMapCellHistory.get_nULL_GEOGRPAHIC_MAP_HISTORY_ARRAY ());
        ();
        geographicMapCellHistoryArray <- geographicMapCellHistoryArray_arg;
        (self#init ())
      end
  end
let () = java_register_constructor "GeographicMapCellHistoryProgress" (fun arguments -> Obj.repr (new geographicMapCellHistoryProgress (Obj.obj arguments)))


