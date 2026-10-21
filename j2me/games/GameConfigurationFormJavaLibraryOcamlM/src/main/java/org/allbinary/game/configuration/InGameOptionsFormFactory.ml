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
(* import org.allbinary.init.Init *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "InGameOptionsFormFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
class inGameOptionsFormFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable sINGLETON : Obj.t = Obj.repr 0
    method sINGLETON : 'r. 'r = Obj.magic sINGLETON
    method set_sINGLETON : 'v. 'v -> unit = fun value' -> sINGLETON <- Obj.repr value'
    

    method init : 'any1 'any2 'any4 'any5. 'any1 * 'any2 * string * 'any4 * 'any5 -> unit = fun (commandListener, initInterface, (title : string), backgrounBasicColor, foregroundBasicColor) ->
        let commandListener = Obj.repr commandListener in
        let initInterface = Obj.repr initInterface in
        let backgrounBasicColor = Obj.repr backgrounBasicColor in
        let foregroundBasicColor = Obj.repr foregroundBasicColor in
        begin
        (try
            if ((Obj.repr (Obj.magic sINGLETON)) == (Obj.repr (Obj.magic (java_call_static "CommandForm.getNullCommandForm" (Obj.repr ()))))) then begin
                ignore ((Obj.magic initInterface)#init ());
                sINGLETON <- Obj.repr ((new InGameOptionsForm.inGameOptionsForm ((Obj.magic commandListener), title, (Obj.magic backgrounBasicColor), (Obj.magic foregroundBasicColor))))
            end
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#iNIT, e))
        end)
        end [@@warning "-20"]
    

    method get : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic sINGLETON)))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        sINGLETON <- (Obj.repr (Obj.magic (java_call_static "CommandForm.getNullCommandForm" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "InGameOptionsFormFactory" (fun arguments -> Obj.repr (new inGameOptionsFormFactory (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new inGameOptionsFormFactory ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "InGameOptionsFormFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


