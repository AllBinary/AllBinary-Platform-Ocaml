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
(* import javax.microedition.lcdui.ImageItem *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.form.ScreenInfo *)
(* import org.allbinary.logic.VectorUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.util.visitor.Visitor *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class commandTextItemArrayFactory ((visitorInterface_arg : Visitor.visitor)) =
  object
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable visitorInterface : Visitor.visitor = (Obj.magic 0)
    method visitorInterface = visitorInterface
    method set_visitorInterface value' = visitorInterface <- value'
    
    

    method getInstance : 'any1 'any2 'any3 'return. 'any1 * 'any2 * 'any3 -> 'return = fun (vector, backgroundBasicColor, foregroundBasicColor) ->
        let vector = Obj.repr vector in
        let backgroundBasicColor = Obj.repr backgroundBasicColor in
        let foregroundBasicColor = Obj.repr foregroundBasicColor in
        begin
        let vectorUtil : VectorUtil.vectorUtil ref = ref (((VectorUtil.getInstance ()) :> VectorUtil.vectorUtil)) in ();
        let size : int ref = ref ((!vectorUtil#getSize (vector))) in ();
        ignore (list#clear ());
        let textItem : CommandTextItem.commandTextItem ref = ref (((Obj.magic 0) :> CommandTextItem.commandTextItem)) in ();
        let priorityLimit : int ref = ref (7) in ();
        let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        let isLargeEnoughDisplayForBigMenu : bool ref = ref (((((!displayInfo#isPortrait ()) && ((!displayInfo#getLastHeight ()) >= (ScreenInfo.getInstance ())#mEDIUM_WIDTH))) || (((not (!displayInfo#isPortrait ())) && ((!displayInfo#getLastWidth ()) >= (ScreenInfo.getInstance ())#mEDIUM_WIDTH))))) in ();
        if ((not !isLargeEnoughDisplayForBigMenu) && (!size > 3)) then begin
            priorityLimit := 3
        end;
        let command : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = 0 to !size - 1 do
            command := Obj.repr ((Obj.magic (!vectorUtil#elementAt (vector, index))));
            if (((Obj.magic !command)#getPriority ()) < !priorityLimit) then begin
                let aBoolean : bool ref = ref ((Obj.magic (visitorInterface#visit ((Obj.magic !command))))) in ();
                if !aBoolean then begin
                    textItem := (new CommandTextItem.commandTextItem ((Obj.magic !command), (Obj.magic (java_call_static "ImageItem.get_lAYOUT_DEFAULT" (Obj.repr ()))), (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic backgroundBasicColor), (Obj.magic foregroundBasicColor)));
                    ignore (list#add (!textItem))
                end
            end
        done;
        let textItemArray : Obj.t ref = ref ((Obj.repr (Array.make ((list#size ())) (Obj.magic 0)))) in ();
        let size2 : int ref = ref ((Array.length (Obj.magic !textItemArray))) in ();
        for index = 0 to !size2 - 1 do
            (Obj.magic !textItemArray).(index) <- (Obj.magic list#objectArray.(index))
        done;
        (Obj.magic ((Obj.magic !textItemArray)))
        end [@@warning "-20"]

    initializer
      begin
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ();
        visitorInterface <- visitorInterface_arg
      end
  end
let () = java_register_constructor "CommandTextItemArrayFactory" (fun arguments -> Obj.repr (new commandTextItemArrayFactory (Obj.obj arguments)))


