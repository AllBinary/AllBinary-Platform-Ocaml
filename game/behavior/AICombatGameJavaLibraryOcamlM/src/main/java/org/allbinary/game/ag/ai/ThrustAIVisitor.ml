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
(* package org.allbinary.game.ag.ai *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import org.allbinary.game.ai.BasicAI *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.logic.util.visitor.Visitor *)
(* import org.allbinary.string.CommonStrings *)

class thrustAIVisitor () =
  object (self)
    inherit Visitor.visitor ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tRUE : bool = (Obj.magic 0)
    method tRUE = tRUE
    method set_tRUE value' = tRUE <- value'
    
    

    method visit : 'any1. 'any1 -> Obj.t = fun (anyType) ->
        let anyType = Obj.repr anyType in
        begin
        (try
            let basicAI : BasicAI.basicAI ref = ref (((Obj.magic anyType) :> BasicAI.basicAI)) in ();
            ignore (!basicAI#processKeyAI ((Obj.magic (java_call_static "Canvas.get_uP" (Obj.repr ())))))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#vISIT, e))
        end);
        (Obj.repr (tRUE))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        tRUE <- (BooleanFactory.getInstance ())#tRUE;
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ThrustAIVisitor" (fun arguments -> Obj.repr (new thrustAIVisitor (Obj.obj arguments)))


