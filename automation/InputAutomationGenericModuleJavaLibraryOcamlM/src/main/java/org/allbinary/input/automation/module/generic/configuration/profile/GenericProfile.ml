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
(* package org.allbinary.input.automation.module.generic.configuration.profile *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileActions *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class genericProfile (node) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable vector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method vector = vector
    method set_vector value' = vector <- value'
    val mutable genericProfileActions : Obj.t = Obj.repr 0
    method genericProfileActions : 'r. 'r = Obj.magic genericProfileActions
    method set_genericProfileActions : 'v. 'v -> unit = fun value' -> genericProfileActions <- Obj.repr value'
    
    
    

    method getGenericProfileDataWorkerTypeVector () : BasicArrayList.basicArrayList =
        begin
        (vector :> BasicArrayList.basicArrayList)
        end
    

    method add : 'any1. 'any1 -> unit = fun (genericProfileDataWorkerType) ->
        let genericProfileDataWorkerType = Obj.repr genericProfileDataWorkerType in
        begin
        if (not (vector#contains ((Obj.magic genericProfileDataWorkerType)))) then begin
            ignore (vector#add ((Obj.magic genericProfileDataWorkerType)))
        end
        end [@@warning "-20"]
    

    method remove : 'any1. 'any1 -> unit = fun (genericProfileDataWorkerType) ->
        let genericProfileDataWorkerType = Obj.repr genericProfileDataWorkerType in
        begin
        ignore (vector#remove ((Obj.magic genericProfileDataWorkerType)))
        end [@@warning "-20"]
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr (ModDomHelper.createTextNode ((Obj.magic document), (GenericProfileData.get_nAME ()), name)))) in ();
        let size : int ref = ref ((vector#size ())) in ();
        for index = 0 to !size - 1 do
            let genericProfileDataWorkerType : GenericProfileDataWorkerType.genericProfileDataWorkerType ref = ref (((Obj.magic (vector#get (index))) :> GenericProfileDataWorkerType.genericProfileDataWorkerType)) in ();
            ignore ((Obj.magic !node)#appendChild ((!genericProfileDataWorkerType#toXmlNode ((Obj.magic document)))))
        done;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]
    

    method getName () : string =
        begin
        name
        end
    

    method setName ((name_arg : string)) : unit =
        begin
        name <- name_arg
        end
    

    method getGenericProfileActions : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic genericProfileActions)))
        end
    

    method setGenericProfileActions : 'any1. 'any1 -> unit = fun (genericProfileActions_arg) ->
        let genericProfileActions_arg = Obj.repr genericProfileActions_arg in
        begin
        genericProfileActions <- Obj.repr ((Obj.magic genericProfileActions_arg))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        name <- "";
        ();
        genericProfileActions <- (Obj.repr (Obj.magic 0));
        ();
        (self#setName ((DomNodeHelper.getTextNodeValue (node))));
        vector <- (new BasicArrayListD.basicArrayListD ());
        let nodeList : Obj.t ref = ref ((Obj.repr (node#getChildNodes ()))) in ();
        ignore ((Obj.magic logUtil)#putF (((("Name: " ^ (self#getName ())) ^ " Child Nodes: ") ^ java_string_of (Obj.repr (((Obj.magic !nodeList)#getLength ())))), self, "Contructor"));
        for index = 0 to ((Obj.magic !nodeList)#getLength ()) - 1 do
            let profileNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !nodeList)#item (index)))) in ();
            if ((((Obj.magic !profileNode)#getNodeName ())#compareTo ((GenericProfileDataWorkerData.get_nAME ()))) == 0) then begin
                let genericProfileDataWorkerType : GenericProfileDataWorkerType.genericProfileDataWorkerType ref = ref (((GenericProfileDataWorkerType.getInstance ((Obj.magic !profileNode))) :> GenericProfileDataWorkerType.genericProfileDataWorkerType)) in ();
                ignore ((Obj.magic logUtil)#putF (("Adding GenericProfileDataWorkerType: " ^ (java_string_of (Obj.repr !genericProfileDataWorkerType))), self, "Contructor"));
                ignore (vector#add (!genericProfileDataWorkerType))
            end
        done
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "GenericProfile" (fun arguments -> Obj.repr (new genericProfile (Obj.obj arguments)))


