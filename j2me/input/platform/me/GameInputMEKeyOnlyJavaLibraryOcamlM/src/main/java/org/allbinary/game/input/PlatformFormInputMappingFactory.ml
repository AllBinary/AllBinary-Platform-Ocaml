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
(* import org.allbinary.game.input.mapping.InputToGameKeyMapping *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "PlatformFormInputMappingFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
class platformFormInputMappingFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable inputToGameKeyMapping : InputToGameKeyMapping.inputToGameKeyMapping = (Obj.magic 0)
    method inputToGameKeyMapping = inputToGameKeyMapping
    method set_inputToGameKeyMapping value' = inputToGameKeyMapping <- value'
    

    method getOrCreate () : InputToGameKeyMapping.inputToGameKeyMapping =
        begin
        (try
            if ((Obj.repr inputToGameKeyMapping) == (Obj.repr (InputToGameKeyMapping.getNullInstance ()))) then begin
                let inputToGameKeyMapping_arg : InputToGameKeyMapping.inputToGameKeyMapping ref = ref (((new InputToGameKeyMapping.inputToGameKeyMapping ()) :> InputToGameKeyMapping.inputToGameKeyMapping)) in ();
                let gameKeyFactory : GameKeyFactory.gameKeyFactory ref = ref (((GameKeyFactory.getInstance ()) :> GameKeyFactory.gameKeyFactory)) in ();
                ignore (!inputToGameKeyMapping_arg#add (!gameKeyFactory#uP, !gameKeyFactory#uP));
                ignore (!inputToGameKeyMapping_arg#add (!gameKeyFactory#dOWN, !gameKeyFactory#dOWN));
                ignore (!inputToGameKeyMapping_arg#add (!gameKeyFactory#lEFT, !gameKeyFactory#lEFT));
                ignore (!inputToGameKeyMapping_arg#add (!gameKeyFactory#rIGHT, !gameKeyFactory#rIGHT));
                ignore (!inputToGameKeyMapping_arg#add (!gameKeyFactory#kEY_NUM1, !gameKeyFactory#gAME_A));
                inputToGameKeyMapping <- !inputToGameKeyMapping_arg
            end
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#gET_INSTANCE, e))
        end);
        (inputToGameKeyMapping :> InputToGameKeyMapping.inputToGameKeyMapping)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        inputToGameKeyMapping <- ((InputToGameKeyMapping.getNullInstance ()) :> InputToGameKeyMapping.inputToGameKeyMapping);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "PlatformFormInputMappingFactory" (fun arguments -> Obj.repr (new platformFormInputMappingFactory (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new platformFormInputMappingFactory ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "PlatformFormInputMappingFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


