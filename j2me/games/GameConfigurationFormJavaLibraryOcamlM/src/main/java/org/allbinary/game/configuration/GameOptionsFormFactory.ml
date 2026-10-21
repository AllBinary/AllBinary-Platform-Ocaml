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
(* package org.allbinary.game.configuration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.CommandListener *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.displayable.screen.CommandForm *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class gameOptionsFormFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method init : 'any1 'any3 'any4 'return. 'any1 * string * 'any3 * 'any4 -> 'return = fun (commandListener, (title : string), backgrounBasicColor, foregroundBasicColor) ->
        let commandListener = Obj.repr commandListener in
        let backgrounBasicColor = Obj.repr backgrounBasicColor in
        let foregroundBasicColor = Obj.repr foregroundBasicColor in
        begin
        (try
            (Obj.magic ((new GameOptionsForm.gameOptionsForm ((Obj.magic commandListener), title, (Obj.magic backgrounBasicColor), (Obj.magic foregroundBasicColor)))))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#iNIT, e));
            (Obj.magic ((Obj.magic (java_call_static "CommandForm.getNullCommandForm" (Obj.repr ())))))
        end)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameOptionsFormFactory" (fun arguments -> Obj.repr (new gameOptionsFormFactory (Obj.obj arguments)))

let instance = (new gameOptionsFormFactory ())
let get_instance () = instance
let () = java_register_static "GameOptionsFormFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GameOptionsFormFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


