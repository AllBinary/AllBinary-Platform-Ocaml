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
(* package org.allbinary.logic.communication.log.config.type *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.communication.log.config.LoggingInitInfo *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.w3c.dom.Node *)

let jSP_ERROR_NO_FUNCTION : string = "in JSP Not In Function"
let get_jSP_ERROR_NO_FUNCTION () = jSP_ERROR_NO_FUNCTION
let () = java_register_static "LogConfigTypes.get_jSP_ERROR_NO_FUNCTION" (fun _ -> Obj.repr (get_jSP_ERROR_NO_FUNCTION ()))
let lOGGING : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList))
let get_lOGGING () = !lOGGING
let set_lOGGING value' = lOGGING := value'
let () = java_register_static "LogConfigTypes.get_lOGGING" (fun _ -> Obj.repr (get_lOGGING ()))

let getInstance : 'any1 'return. 'any1 -> 'return = fun (node) ->
        let node = Obj.repr node in
        try
        begin
        let nameValueNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode ((LogConfigTypeData.getInstance ())#nAME, ((Obj.magic node)#getChildNodes ()))))) in ();
        let name : string ref = ref ((DomNodeHelper.getTextNodeValue ((Obj.magic !nameValueNode)))) in ();
        let descriptionValueNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNodeNoThrow ((LogConfigTypeData.getInstance ())#dESCRIPTION, ((Obj.magic node)#getChildNodes ()))))) in ();
        if ((Obj.magic !descriptionValueNode) != (Obj.magic 0)) then begin
            let description : string ref = ref ((DomNodeHelper.getTextNodeValue ((Obj.magic !descriptionValueNode)))) in ()
        end;
        let availableLogConfigTypes : BasicArrayList.basicArrayList ref = ref (((Obj.magic (java_call_static "LogConfigType.get_availableLogConfigTypes" (Obj.repr ()))) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!availableLogConfigTypes#size ())) in ();
        let logConfigType : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = 0 to !size - 1 do
            logConfigType := Obj.repr ((Obj.magic (!availableLogConfigTypes#get (index))));
            if ((((Obj.magic !logConfigType)#getName ())#compareTo (!name)) == 0) then begin
                raise (Java_return (Obj.repr ((Obj.magic !logConfigType))))
            end
        done;
        raise (Failure (("No Such LogConfigType: " ^ !name)))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

let () = java_register_static "LogConfigTypes.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class logConfigTypes () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "LogConfigTypes" (fun arguments -> Obj.repr (new logConfigTypes (Obj.obj arguments)))

let init () : unit =
        begin
        (try
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ("Initialize LogconfigTypes", "LogConfigTypes", "init()"))));
            ignore (Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())));
            let loggingInitInfo : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "LoggingInitInfo" (Obj.repr ()))))) in ();
            let logConfigTypeVector : BasicArrayList.basicArrayList ref = ref ((((Obj.magic !loggingInitInfo)#getTypeList ()) :> BasicArrayList.basicArrayList)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (("Number Of Log Configs: " ^ java_string_of (Obj.repr (((Obj.magic !loggingInitInfo)#getNumberOfLogConfigs ())))), "LogConfigTypes", "init()"))));
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (("Number Of Log Config Type Names: " ^ java_string_of (Obj.repr ((!logConfigTypeVector#size ())))), "LogConfigTypes", "init()"))));
            ignore (!lOGGING#addAllList (!logConfigTypeVector));
            ignore (!lOGGING#add ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#nETBEANS_MODULE))
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putSE" (Obj.repr ("Unable to initialize LogConfigTypes", "LogConfigTypes", "init()", e))))
        end)
        end
let () = java_register_static "LogConfigTypes.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))

let () =
        begin
        ignore (Obj.magic (java_call_static "LogConfigTypes.init" (Obj.repr ())))
        end


