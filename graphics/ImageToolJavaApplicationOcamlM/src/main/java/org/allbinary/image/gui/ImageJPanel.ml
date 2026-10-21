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
(* package org.allbinary.image.gui *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.graphics.displayable.CanvasStrings *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class imageJPanel (bufferedImage_arg) =
  object (self)
    inherit JPanel.jPanel ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable canvasStrings : CanvasStrings.canvasStrings = (Obj.magic 0)
    method canvasStrings = canvasStrings
    method set_canvasStrings value' = canvasStrings <- value'
    val mutable isDrawn : bool = false
    method isDrawn = isDrawn
    method set_isDrawn value' = isDrawn <- value'
    val mutable bufferedImage : Obj.t = Obj.repr 0
    method bufferedImage : 'r. 'r = Obj.magic bufferedImage
    method set_bufferedImage : 'v. 'v -> unit = fun value' -> bufferedImage <- Obj.repr value'
    
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        if (not isDrawn) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, canvasStrings#pAINT));
            ignore ((Obj.magic graphics)#drawImage ((Obj.magic bufferedImage), 0, 0, ((Obj.magic bufferedImage)#getWidth ((Obj.magic 0))), ((Obj.magic bufferedImage)#getHeight ((Obj.magic 0))), (Obj.magic 0)));
            isDrawn <- true
        end
        end [@@warning "-7-20"]
    

    method initComponents () : unit =
        begin
        let layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (self)))) in ();
        ignore (self#setLayout ((Obj.magic !layout)));
        ignore ((Obj.magic !layout)#setHorizontalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGap (0, 400, 32767))));
        ignore ((Obj.magic !layout)#setVerticalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGap (0, 300, 32767))))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        canvasStrings <- ((CanvasStrings.getInstance ()) :> CanvasStrings.canvasStrings);
        isDrawn <- false;
        ();
        ();
        (self#initComponents ());
        bufferedImage <- Obj.repr (bufferedImage_arg);
        ignore (self#setSize (((Obj.magic bufferedImage)#getWidth ((Obj.magic 0))), ((Obj.magic bufferedImage)#getHeight ((Obj.magic 0)))))
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageJPanel" (fun arguments -> Obj.repr (new imageJPanel (Obj.obj arguments)))


