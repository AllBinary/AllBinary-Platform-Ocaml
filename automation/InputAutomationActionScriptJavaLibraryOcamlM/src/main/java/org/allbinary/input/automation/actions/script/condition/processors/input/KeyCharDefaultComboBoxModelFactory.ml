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
(* package org.allbinary.input.automation.actions.script.condition.processors.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.swing *)
(* import abbot.tester.KeyStrokeMap *)
(* import org.allbinary.input.KeySingletonFactory *)


let getInstance : 'return. unit -> 'return = fun () ->
        begin
        let defaultComboBoxModel : Obj.t ref = ref ((Obj.repr (new DefaultComboBoxModel.defaultComboBoxModel ()))) in ();
        let keyArray : int array ref = ref ((KeySingletonFactory.getArray ())) in ();
        for index = 0 to (Array.length !keyArray) - 1 do
            let nextKey : int ref = ref (!keyArray.(index)) in ();
            let keyStroke : Obj.t ref = ref ((Obj.repr (KeyStroke.getKeyStroke (!nextKey, 0)))) in ();
            let keyChar : char ref = ref ((KeyStrokeMap.getChar ((Obj.magic !keyStroke)))) in ();
            ignore ((Obj.magic !defaultComboBoxModel)#addElement ((java_string_of (Obj.repr (!keyChar)))))
        done;
        (Obj.magic ((Obj.magic !defaultComboBoxModel)))
        end

let () = java_register_static "KeyCharDefaultComboBoxModelFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class keyCharDefaultComboBoxModelFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "KeyCharDefaultComboBoxModelFactory" (fun arguments -> Obj.repr (new keyCharDefaultComboBoxModelFactory (Obj.obj arguments)))


