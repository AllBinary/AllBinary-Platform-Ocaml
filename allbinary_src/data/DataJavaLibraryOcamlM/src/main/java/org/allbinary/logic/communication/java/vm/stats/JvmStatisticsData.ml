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

let jVM_STATISTICS : string = "JVM_STATISTICS_"
let get_jVM_STATISTICS () = jVM_STATISTICS
let () = java_register_static "JvmStatisticsData.get_jVM_STATISTICS" (fun _ -> Obj.repr (get_jVM_STATISTICS ()))
let nAME : string = (java_string_of (Obj.repr (jVM_STATISTICS)) ^ "NAME")
let get_nAME () = nAME
let () = java_register_static "JvmStatisticsData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let tOTAL_MEMORY_BYTES : string = (java_string_of (Obj.repr (jVM_STATISTICS)) ^ "TOTAL_MEMORY_BYTES")
let get_tOTAL_MEMORY_BYTES () = tOTAL_MEMORY_BYTES
let () = java_register_static "JvmStatisticsData.get_tOTAL_MEMORY_BYTES" (fun _ -> Obj.repr (get_tOTAL_MEMORY_BYTES ()))
let tOTAL_MEMORY_KILOBYTES : string = (java_string_of (Obj.repr (jVM_STATISTICS)) ^ "TOTAL_MEMORY_KILOBYTES")
let get_tOTAL_MEMORY_KILOBYTES () = tOTAL_MEMORY_KILOBYTES
let () = java_register_static "JvmStatisticsData.get_tOTAL_MEMORY_KILOBYTES" (fun _ -> Obj.repr (get_tOTAL_MEMORY_KILOBYTES ()))
let tOTAL_MEMORY_MEGABYTES : string = (java_string_of (Obj.repr (jVM_STATISTICS)) ^ "TOTAL_MEMORY_MEGABYTES")
let get_tOTAL_MEMORY_MEGABYTES () = tOTAL_MEMORY_MEGABYTES
let () = java_register_static "JvmStatisticsData.get_tOTAL_MEMORY_MEGABYTES" (fun _ -> Obj.repr (get_tOTAL_MEMORY_MEGABYTES ()))
let fREE_MEMORY_BYTES : string = (java_string_of (Obj.repr (jVM_STATISTICS)) ^ "FREE_MEMORY_BYTES")
let get_fREE_MEMORY_BYTES () = fREE_MEMORY_BYTES
let () = java_register_static "JvmStatisticsData.get_fREE_MEMORY_BYTES" (fun _ -> Obj.repr (get_fREE_MEMORY_BYTES ()))
let fREE_MEMORY_KILOBYTES : string = (java_string_of (Obj.repr (jVM_STATISTICS)) ^ "FREE_MEMORY_KILOBYTES")
let get_fREE_MEMORY_KILOBYTES () = fREE_MEMORY_KILOBYTES
let () = java_register_static "JvmStatisticsData.get_fREE_MEMORY_KILOBYTES" (fun _ -> Obj.repr (get_fREE_MEMORY_KILOBYTES ()))
let fREE_MEMORY_MEGABYTES : string = (java_string_of (Obj.repr (jVM_STATISTICS)) ^ "FREE_MEMORY_MEGABYTES")
let get_fREE_MEMORY_MEGABYTES () = fREE_MEMORY_MEGABYTES
let () = java_register_static "JvmStatisticsData.get_fREE_MEMORY_MEGABYTES" (fun _ -> Obj.repr (get_fREE_MEMORY_MEGABYTES ()))
let mAX_MEMORY_BYTES : string = (java_string_of (Obj.repr (jVM_STATISTICS)) ^ "MAX_MEMORY_BYTES")
let get_mAX_MEMORY_BYTES () = mAX_MEMORY_BYTES
let () = java_register_static "JvmStatisticsData.get_mAX_MEMORY_BYTES" (fun _ -> Obj.repr (get_mAX_MEMORY_BYTES ()))
let mAX_MEMORY_KILOBYTES : string = (java_string_of (Obj.repr (jVM_STATISTICS)) ^ "MAX_MEMORY_KILOBYTES")
let get_mAX_MEMORY_KILOBYTES () = mAX_MEMORY_KILOBYTES
let () = java_register_static "JvmStatisticsData.get_mAX_MEMORY_KILOBYTES" (fun _ -> Obj.repr (get_mAX_MEMORY_KILOBYTES ()))
let mAX_MEMORY_MEGABYTES : string = (java_string_of (Obj.repr (jVM_STATISTICS)) ^ "MAX_MEMORY_MEGABYTES")
let get_mAX_MEMORY_MEGABYTES () = mAX_MEMORY_MEGABYTES
let () = java_register_static "JvmStatisticsData.get_mAX_MEMORY_MEGABYTES" (fun _ -> Obj.repr (get_mAX_MEMORY_MEGABYTES ()))
let nUMBER_OF_THREADS : string = (java_string_of (Obj.repr (jVM_STATISTICS)) ^ "NUMBER_OF_THREADS")
let get_nUMBER_OF_THREADS () = nUMBER_OF_THREADS
let () = java_register_static "JvmStatisticsData.get_nUMBER_OF_THREADS" (fun _ -> Obj.repr (get_nUMBER_OF_THREADS ()))
class jvmStatisticsData () =
  object
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "JvmStatisticsData" (fun arguments -> Obj.repr (new jvmStatisticsData (Obj.obj arguments)))


