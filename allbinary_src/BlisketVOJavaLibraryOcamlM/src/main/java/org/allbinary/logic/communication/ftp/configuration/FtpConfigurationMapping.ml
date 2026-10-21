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
(* package org.allbinary.logic.communication.ftp.configuration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tables.TableMappingInterface *)
(* import org.allbinary.logic.StdUtil *)

class ftpConfigurationMapping ((ftpConfigurationInterface_arg : FtpConfigurationInterface.ftpConfigurationInterface)) =
  object
    val mutable ftpConfigurationInterface : FtpConfigurationInterface.ftpConfigurationInterface = (Obj.magic 0)
    method ftpConfigurationInterface = ftpConfigurationInterface
    method set_ftpConfigurationInterface value' = ftpConfigurationInterface <- value'
    
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((FtpConfigurationData.get_sERVER ()), (ftpConfigurationInterface#getServer ())));
        ignore (!hashMap#put ((FtpConfigurationData.get_uSERNAME ()), (ftpConfigurationInterface#getUserName ())));
        ignore (!hashMap#put ((FtpConfigurationData.get_pASSWORD ()), (ftpConfigurationInterface#getPassword ())));
        ignore (!hashMap#put ((FtpConfigurationData.get_pATH ()), (ftpConfigurationInterface#getPath ())));
        (!hashMap :> java_hash_map)
        end
    

    method getKey () : Obj.t =
        begin
        (Obj.repr ((FtpConfigurationData.get_nAME ())))
        end
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!vector#add ((ftpConfigurationInterface#getServer ())));
        ignore (!vector#add ((ftpConfigurationInterface#getUserName ())));
        ignore (!vector#add ((ftpConfigurationInterface#getPassword ())));
        ignore (!vector#add ((ftpConfigurationInterface#getPath ())));
        (!vector :> BasicArrayList.basicArrayList)
        end

    initializer
      begin
        ();
        ();
        ftpConfigurationInterface <- ftpConfigurationInterface_arg
      end
  end
let () = java_register_constructor "FtpConfigurationMapping" (fun arguments -> Obj.repr (new ftpConfigurationMapping (Obj.obj arguments)))


