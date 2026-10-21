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
(* package org.allbinary.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.thread.ARunnable *)
(* import org.allbinary.image.gui.ImageToolJFrame *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)


let main ((_args : string array)) : unit =
        begin
        ignore ((java.get_awt ())#eventQueue#invokeLater ((object (self)
            inherit ARunnable.aRunnable () as super
            

            method run () : unit =
                begin
                let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                (try
                    ignore ((Obj.magic !logUtil_arg)#putF (!commonStrings#sTART, self, !commonStrings#rUN));
                    ignore ((new ImageToolJFrame.imageToolJFrame ())#setVisible (true))
                with e -> begin
                    ignore ((Obj.magic !logUtil_arg)#put (!commonStrings#eXCEPTION, self, !commonStrings#rUN, e))
                end)
                end
        end)))
        end

let () = java_register_static "ImageTool.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))
class imageTool () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageTool" (fun arguments -> Obj.repr (new imageTool (Obj.obj arguments)))


