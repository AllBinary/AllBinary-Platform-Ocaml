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
(* package org.allbinary.graphics.form.item *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Command *)
(* import org.allbinary.game.commands.GameCommandsFactory *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.form.ScreenInfo *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.logic.util.visitor.Visitor *)

class limitCommandsVisitor () =
  object
    inherit Visitor.visitor ()
    val mutable isNotSmallDisplay : bool = false
    method isNotSmallDisplay = isNotSmallDisplay
    method set_isNotSmallDisplay value' = isNotSmallDisplay <- value'
    
    

    method visit : 'any1. 'any1 -> Obj.t = fun (anyType) ->
        let anyType = Obj.repr anyType in
        try
        begin
        let command : Obj.t ref = ref ((Obj.repr (Obj.magic anyType))) in ();
        let booleanFactory : BooleanFactory.booleanFactory ref = ref (((BooleanFactory.getInstance ()) :> BooleanFactory.booleanFactory)) in ();
        if (((isNotSmallDisplay || (((Obj.magic !command)#getPriority ()) == 1)) || ((Obj.repr (Obj.magic !command)) == (Obj.repr (GameCommandsFactory.getInstance ())#eXIT_COMMAND))) || ((Obj.repr (Obj.magic !command)) == (Obj.repr (GameCommandsFactory.getInstance ())#eXIT_WITHOUT_PROGRESS_COMMAND))) then begin
            raise (Java_return (Obj.repr (!booleanFactory#tRUE)))
        end else begin
            raise (Java_return (Obj.repr (!booleanFactory#fALSE)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        ();
        ();
        let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        isNotSmallDisplay <- ((((!displayInfo#isPortrait ()) && ((!displayInfo#getLastHeight ()) > (ScreenInfo.getInstance ())#sMALL_WIDTH))) || (((not (!displayInfo#isPortrait ())) && ((!displayInfo#getLastHeight ()) > (ScreenInfo.getInstance ())#sMALL_HEIGHT))))
      end
  end
let () = java_register_constructor "LimitCommandsVisitor" (fun arguments -> Obj.repr (new limitCommandsVisitor (Obj.obj arguments)))


