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
(* import org.allbinary.game.configuration.persistance.GamePersistanceStrings *)
(* import org.allbinary.game.input.mapping.PersistentInputMapping *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)

class j2MEGameInputMapping () =
  object (self)
    inherit PersistentInputMapping.persistentInputMapping ((GamePersistanceStrings.getInstance ())#sAVED_INPUT_CONFIGURATION_RECORD_ID) as super
    
    

    method init : 'any1. 'any1 -> unit = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        ignore (logUtil#putF (commonStrings#sTART, self, commonStrings#iNIT));
        ignore ((J2MEKeyFactory.getInstance ())#init ());
        ignore (super#init ((Obj.magic abeClientInformation)));
        if (((self#getTotalMapped ()) == 0) || (self#isDefaultNew ())) then begin
            ignore ((self#getInputMapping ())#addMapping ((self#getDefault ())));
            ignore (self#save ((Obj.magic abeClientInformation)))
        end
        end [@@warning "-7-20"]
    

    method isDelete : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if ((Obj.repr (Obj.magic input)) == (Obj.repr (GameKeyFactory.getInstance ())#gAME_D)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method isSystemInput : 'any1. 'any1 -> bool = fun (_input) ->
        begin
        false
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "J2MEGameInputMapping" (fun arguments -> Obj.repr (new j2MEGameInputMapping (Obj.obj arguments)))


