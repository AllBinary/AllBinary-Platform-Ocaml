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
(* package org.allbinary.business.context.configuration *)

open Allbinary_java [@@warning "-33"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tables.TableMappingInterface *)
(* import org.allbinary.logic.StdUtil *)

class contextConfigurationTableMapping ((contextConfigurationInterface_arg : ContextConfigurationInterface.contextConfigurationInterface)) =
  object
    val mutable contextConfigurationInterface : ContextConfigurationInterface.contextConfigurationInterface = (Obj.magic 0)
    method contextConfigurationInterface = contextConfigurationInterface
    method set_contextConfigurationInterface value = contextConfigurationInterface <- value
    
    

    method toHashMap () =
        begin
        let hashMap : java_hash_map ref = ref ((((StdUtil.getInstance ())#createHashMap ()) :> java_hash_map)) in ();
        !hashMap
        end
    

    method getKey () : Obj.t =
        begin
        (ContextConfigurationData.getInstance ())#nAME
        end
    

    method toVector () =
        begin
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        !vector
        end

    initializer
      begin
        ();
        ();
        contextConfigurationInterface <- contextConfigurationInterface_arg
      end
  end


