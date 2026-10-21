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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.mapping.PersistentInputMapping *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class platformInputMappingFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable inputToGameKeyMapping : PersistentInputMapping.persistentInputMapping = (Obj.magic 0)
    method inputToGameKeyMapping = inputToGameKeyMapping
    method set_inputToGameKeyMapping value' = inputToGameKeyMapping <- value'
    

    method getPersistentInputMappingInstance () : PersistentInputMapping.persistentInputMapping =
        begin
        (try
            if ((Obj.repr inputToGameKeyMapping) == (Obj.repr (PersistentInputMapping.getNullInstance ()))) then begin
                inputToGameKeyMapping <- (new NormalJ2MEGameInputMapping.normalJ2MEGameInputMapping ())
            end
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#gET_INSTANCE, e))
        end);
        (inputToGameKeyMapping :> PersistentInputMapping.persistentInputMapping)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        inputToGameKeyMapping <- ((PersistentInputMapping.getNullInstance ()) :> PersistentInputMapping.persistentInputMapping);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "PlatformInputMappingFactory" (fun arguments -> Obj.repr (new platformInputMappingFactory (Obj.obj arguments)))

let instance = (new platformInputMappingFactory ())
let get_instance () = instance
let () = java_register_static "PlatformInputMappingFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PlatformInputMappingFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


