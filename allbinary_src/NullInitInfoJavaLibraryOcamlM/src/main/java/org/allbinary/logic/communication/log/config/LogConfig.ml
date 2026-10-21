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
(* package org.allbinary.logic.communication.log.config *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.logic.java.bool.BooleanUtil *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.w3c.dom.Node *)

class logConfig (node) =
  object
    val mutable isEnabled : bool = false
    method isEnabled = isEnabled
    method set_isEnabled value' = isEnabled <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable description : string = ""
    method description = description
    method set_description value' = description <- value'
    val mutable path : string = ""
    method path = path
    method set_path value' = path <- value'
    val mutable fileName : string = ""
    method fileName = fileName
    method set_fileName value' = fileName <- value'
    
    
    

    method getName () : string =
        begin
        name
        end
    

    method isEnabled () : bool =
        begin
        isEnabled
        end
    

    method enable () : unit =
        begin
        isEnabled <- true
        end
    

    method disable () : unit =
        begin
        isEnabled <- false
        end
    

    method getDescription () : string =
        begin
        description
        end
    

    method getFileName () : string =
        begin
        fileName
        end
    

    method setName ((value : string)) : unit =
        begin
        name <- value
        end
    

    method setDescription ((value : string)) : unit =
        begin
        description <- value
        end
    

    method setPath ((value : string)) : unit =
        begin
        path <- value
        end
    

    method setFileName ((value : string)) : unit =
        begin
        fileName <- value
        end
    

    method getTypeVector () : BasicArrayList.basicArrayList =
        begin
        let logKeyVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        (!logKeyVector :> BasicArrayList.basicArrayList)
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        let enabledValueNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode ((EntryData.getInstance ())#eNABLE, (node#getChildNodes ()))))) in ();
        let isEnabledString : string ref = ref ((DomNodeHelper.getTextNodeValue ((Obj.magic !enabledValueNode)))) in ();
        isEnabled <- ((BooleanUtil.getInstance ())#getFromString (!isEnabledString));
        let logConfigData : LogConfigData.logConfigData ref = ref (((LogConfigData.getInstance ()) :> LogConfigData.logConfigData)) in ();
        let nameValueNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode (!logConfigData#nAME, (node#getChildNodes ()))))) in ();
        name <- (DomNodeHelper.getTextNodeValue ((Obj.magic !nameValueNode)));
        let descriptionValueNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode (!logConfigData#dESCRIPTION, (node#getChildNodes ()))))) in ();
        description <- (DomNodeHelper.getTextNodeValue ((Obj.magic !descriptionValueNode)));
        let fileValueNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode (!logConfigData#fILE, (node#getChildNodes ()))))) in ();
        fileName <- (DomNodeHelper.getTextNodeValue ((Obj.magic !fileValueNode)))
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "LogConfig" (fun arguments -> Obj.repr (new logConfig (Obj.obj arguments)))


