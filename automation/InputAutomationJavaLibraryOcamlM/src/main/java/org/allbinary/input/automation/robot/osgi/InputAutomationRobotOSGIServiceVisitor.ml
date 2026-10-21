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
(* package org.allbinary.input.automation.robot.osgi *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import bundle.input.automation.robot.InputAutomationRobotServiceInterface *)
(* import org.allbinary.input.automation.robot.InputRobotFactory *)
(* import org.allbinary.input.automation.robot.InputRobotInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.osgi.OSGIServiceInterface *)
(* import org.allbinary.osgi.OSGIServiceVisitorInterface *)
(* import org.allbinary.string.CommonStrings *)

class inputAutomationRobotOSGIServiceVisitor () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    
    

    method visit : 'any1. 'any1 -> Obj.t = fun (anyType) ->
        let anyType = Obj.repr anyType in
        begin
        (Obj.repr ((self#visit ((Obj.magic anyType)))))
        end
    

    (* Java overload visit(OSGIServiceInterface) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "InputAutomationRobotOSGIServiceVisitor" (fun arguments -> Obj.repr (new inputAutomationRobotOSGIServiceVisitor (Obj.obj arguments)))


