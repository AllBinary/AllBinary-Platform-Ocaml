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
(* package org.allbinary.logic.communication.java.vm.stats *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tables.TableMappingInterface *)
(* import org.allbinary.logic.StdUtil *)

class jvmStatisticsMapping () =
  object (self)
    inherit JvmStatistics.jvmStatistics ()
    
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((JvmStatisticsData.get_fREE_MEMORY_BYTES ()), (self#getFreeMemoryBytesString ())));
        ignore (!hashMap#put ((JvmStatisticsData.get_fREE_MEMORY_KILOBYTES ()), (self#getFreeMemoryKilobytesString ())));
        ignore (!hashMap#put ((JvmStatisticsData.get_fREE_MEMORY_MEGABYTES ()), (self#getFreeMemoryMegabytesString ())));
        ignore (!hashMap#put ((JvmStatisticsData.get_mAX_MEMORY_BYTES ()), (self#getMaxMemoryBytesString ())));
        ignore (!hashMap#put ((JvmStatisticsData.get_mAX_MEMORY_KILOBYTES ()), (self#getMaxMemoryKilobytesString ())));
        ignore (!hashMap#put ((JvmStatisticsData.get_mAX_MEMORY_MEGABYTES ()), (self#getMaxMemoryMegabytesString ())));
        ignore (!hashMap#put ((JvmStatisticsData.get_nUMBER_OF_THREADS ()), (self#getNumberOfThreadsString ())));
        ignore (!hashMap#put ((JvmStatisticsData.get_tOTAL_MEMORY_BYTES ()), (self#getTotalMemoryBytesString ())));
        ignore (!hashMap#put ((JvmStatisticsData.get_tOTAL_MEMORY_KILOBYTES ()), (self#getTotalMemoryKilobytesString ())));
        ignore (!hashMap#put ((JvmStatisticsData.get_tOTAL_MEMORY_MEGABYTES ()), (self#getTotalMemoryMegabytesString ())));
        (!hashMap :> java_hash_map)
        end [@@warning "-7"]
    

    method getKey () : Obj.t =
        begin
        (Obj.repr ((JvmStatisticsData.get_nAME ())))
        end [@@warning "-7"]
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!vector#add ((self#getFreeMemoryBytesString ())));
        ignore (!vector#add ((self#getFreeMemoryKilobytesString ())));
        ignore (!vector#add ((self#getFreeMemoryMegabytesString ())));
        ignore (!vector#add ((self#getMaxMemoryBytesString ())));
        ignore (!vector#add ((self#getMaxMemoryKilobytesString ())));
        ignore (!vector#add ((self#getMaxMemoryMegabytesString ())));
        ignore (!vector#add ((self#getNumberOfThreadsString ())));
        ignore (!vector#add ((self#getTotalMemoryBytesString ())));
        ignore (!vector#add ((self#getTotalMemoryKilobytesString ())));
        ignore (!vector#add ((self#getTotalMemoryMegabytesString ())));
        (!vector :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "JvmStatisticsMapping" (fun arguments -> Obj.repr (new jvmStatisticsMapping (Obj.obj arguments)))


