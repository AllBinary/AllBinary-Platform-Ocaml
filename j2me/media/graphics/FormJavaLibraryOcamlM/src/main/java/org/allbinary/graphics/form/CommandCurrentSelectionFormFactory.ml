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
(* package org.allbinary.graphics.form *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.TouchFeatureFactory *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.form.item.ABCustomItem *)


let getInstance : 'any3 'any4 'any7 'any8. string * _ * 'any3 * 'any4 * int * bool * 'any7 * 'any8 -> ScrollSelectionForm.scrollSelectionForm = fun ((title : string), items, rectangle, formType, (border : int), (moveForSmallScreen : bool), backgroundBasicColor, foregroundBasicColor) ->
        let rectangle = Obj.repr rectangle in
        let formType = Obj.repr formType in
        let backgroundBasicColor = Obj.repr backgroundBasicColor in
        let foregroundBasicColor = Obj.repr foregroundBasicColor in
        try
        begin
        if ((Features.getInstance ())#isFeature ((TouchFeatureFactory.getInstance ())#tOUCH_ENABLED)) then begin
            let scrollSelectionForm : ScrollSelectionForm.scrollSelectionForm ref = ref (((new CommandCurrentSelectionForm.commandCurrentSelectionForm (title, items, border, moveForSmallScreen, (Obj.magic backgroundBasicColor), (Obj.magic foregroundBasicColor))) :> ScrollSelectionForm.scrollSelectionForm)) in ();
            ignore (!scrollSelectionForm#init ((Obj.magic rectangle), (Obj.magic formType)));
            raise (Java_return (Obj.repr (!scrollSelectionForm)))
        end else begin
            raise (Java_return (Obj.repr ((ScrollSelectionFormNoneFactory.getInstance ()))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

let () = java_register_static "CommandCurrentSelectionFormFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class commandCurrentSelectionFormFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "CommandCurrentSelectionFormFactory" (fun arguments -> Obj.repr (new commandCurrentSelectionFormFactory (Obj.obj arguments)))


