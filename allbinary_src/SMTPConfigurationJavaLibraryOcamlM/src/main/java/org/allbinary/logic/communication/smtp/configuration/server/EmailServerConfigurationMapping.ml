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
(* package org.allbinary.logic.communication.smtp.configuration.server *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tables.TableMappingInterface *)
(* import org.allbinary.logic.StdUtil *)

class emailServerConfigurationMapping ((emailServerConfigurationInterface_arg : EmailServerConfigurationInterface.emailServerConfigurationInterface)) =
  object
    val mutable emailServerConfigurationInterface : EmailServerConfigurationInterface.emailServerConfigurationInterface = (Obj.magic 0)
    method emailServerConfigurationInterface = emailServerConfigurationInterface
    method set_emailServerConfigurationInterface value' = emailServerConfigurationInterface <- value'
    
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((EmailServerConfigurationData.get_sERVER ()), (emailServerConfigurationInterface#getSmtpServer ())));
        ignore (!hashMap#put ((EmailServerConfigurationData.get_aCCOUNT ()), (emailServerConfigurationInterface#getAccountName ())));
        ignore (!hashMap#put ((EmailServerConfigurationData.get_pASSWORD ()), (emailServerConfigurationInterface#getPassword ())));
        (!hashMap :> java_hash_map)
        end
    

    method getKey () : Obj.t =
        begin
        (Obj.repr ((EmailServerConfigurationData.get_nAME ())))
        end
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!vector#add ((emailServerConfigurationInterface#getSmtpServer ())));
        (!vector :> BasicArrayList.basicArrayList)
        end

    initializer
      begin
        ();
        ();
        emailServerConfigurationInterface <- emailServerConfigurationInterface_arg
      end
  end
let () = java_register_constructor "EmailServerConfigurationMapping" (fun arguments -> Obj.repr (new emailServerConfigurationMapping (Obj.obj arguments)))


