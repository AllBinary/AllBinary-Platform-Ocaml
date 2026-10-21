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
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.globals.PATH_GLOBALS *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.io.AbFileLocalInputStream *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

let iNITFILENAME : string = "logConfig.xml"
let get_iNITFILENAME () = iNITFILENAME
let () = java_register_static "LoggingInitInfo.get_iNITFILENAME" (fun _ -> Obj.repr (get_iNITFILENAME ()))
let pACKAGE : string = (PATH_GLOBALS.getInstance ())#iNIT_PATH
let get_pACKAGE () = pACKAGE
let () = java_register_static "LoggingInitInfo.get_pACKAGE" (fun _ -> Obj.repr (get_pACKAGE ()))
let logConfigInfoList : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList))
let get_logConfigInfoList () = !logConfigInfoList
let set_logConfigInfoList value' = logConfigInfoList := value'
let () = java_register_static "LoggingInitInfo.get_logConfigInfoList" (fun _ -> Obj.repr (get_logConfigInfoList ()))
let hasRead : bool ref = ref (false)
let get_hasRead () = !hasRead
let set_hasRead value' = hasRead := value'
let () = java_register_static "LoggingInitInfo.get_hasRead" (fun _ -> Obj.repr (get_hasRead ()))

let getDoc : 'return. unit -> 'return = fun () ->
        begin
        let path : string ref = ref (((URLGLOBALS.getWebappPath ()) + pACKAGE)) in ();
        let fILEABPATH : AbPath.abPath ref = ref (((new AbPath.abPath (!path, iNITFILENAME)) :> AbPath.abPath)) in ();
        let file : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr (!fILEABPATH)))))) in ();
        let document : Obj.t ref = ref ((Obj.repr (DomDocumentHelper.create ((new AbFileLocalInputStream.abFileLocalInputStream ((Obj.magic !file))))))) in ();
        (Obj.magic ((Obj.magic !document)))
        end

and write () : unit =
        begin
        (try
            hasRead := false
        with e -> begin
            raise e
        end)
        end

and setHasRead ((value : bool)) : unit =
        begin
        hasRead := value
        end

and set : 'any1. 'any1 -> unit = fun (logConfigInfoVector) ->
        let logConfigInfoVector = Obj.repr logConfigInfoVector in
        begin
        logConfigInfoList := (Obj.magic logConfigInfoVector)
        end [@@warning "-20"]

let () = java_register_static "LoggingInitInfo.getDoc" (fun arguments -> Obj.repr (getDoc (Obj.obj arguments)))
let () = java_register_static "LoggingInitInfo.write" (fun arguments -> Obj.repr (write (Obj.obj arguments)))
let () = java_register_static "LoggingInitInfo.setHasRead" (fun arguments -> Obj.repr (setHasRead (Obj.obj arguments)))
let () = java_register_static "LoggingInitInfo.set" (fun arguments -> Obj.repr (set (Obj.obj arguments)))
class loggingInitInfo () =
  object
    
    

    method isValid () : bool =
        begin
        (try
            true
        with e -> begin
            false
        end)
        end
    

    method getNumberOfLogConfigs () : int =
        begin
        (!logConfigInfoList#size ())
        end
    

    method toString () : string =
        begin
        (try
            let document : Obj.t ref = ref ((Obj.repr (getDoc ()))) in ();
            (XmlDocumentHelper.toString ((Obj.magic !document)))
        with e -> begin
            "Error"
        end)
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "LoggingInitInfo" (fun arguments -> Obj.repr (new loggingInitInfo (Obj.obj arguments)))

let rec read () : unit =
        begin
        (try
            let document : Obj.t ref = ref ((Obj.repr (getDoc ()))) in ();
            let logConfigsNodeList : Obj.t ref = ref ((Obj.repr ((Obj.magic !document)#getElementsByTagName ((LogConfigsData.getInstance ())#nAME)))) in ();
            let logConfigsNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !logConfigsNodeList)#item (0)))) in ();
            let logConfigNodeVector : BasicArrayList.basicArrayList ref = ref (((DomSearchHelper.getAllNodes ((LogConfigData.getInstance ())#nAME, ((Obj.magic !logConfigsNode)#getChildNodes ()))) :> BasicArrayList.basicArrayList)) in ();
            logConfigInfoList := (new BasicArrayListD.basicArrayListD ());
            let size : int ref = ref ((!logConfigNodeVector#size ())) in ();
            for i = 0 to !size - 1 do
                let node : Obj.t ref = ref ((Obj.repr (Obj.magic (!logConfigNodeVector#get (i))))) in ();
                let logConfigInfo : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "LogConfig" (Obj.repr ((Obj.magic !node))))))) in ();
                ignore (!logConfigInfoList#add ((Obj.magic !logConfigInfo)))
            done
        with e -> begin
            raise e
        end)
        end

and updateIfNeeded () : unit =
        begin
        if (not !hasRead) then begin
            ignore (read ());
            hasRead := true;
            if (!logConfigInfoList == (Obj.magic 0)) then begin
                raise (Failure ("Read Failed"))
            end
        end
        end

and get () : BasicArrayList.basicArrayList =
        begin
        ignore (updateIfNeeded ());
        (!logConfigInfoList :> BasicArrayList.basicArrayList)
        end

and getTypeNameList () : BasicArrayList.basicArrayList =
        begin
        ignore (updateIfNeeded ());
        let allLogTypeVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!logConfigInfoList#size ())) in ();
        for index = 0 to !size - 1 do
            let logConfigInfo : Obj.t ref = ref ((Obj.repr (Obj.magic !logConfigInfoList#objectArray.(index)))) in ();
            let logTypeVector : BasicArrayList.basicArrayList ref = ref ((((Obj.magic !logConfigInfo)#getTypeVector ()) :> BasicArrayList.basicArrayList)) in ();
            if ((Obj.magic !logConfigInfo)#isEnabled ()) then begin
                ignore (!allLogTypeVector#addAllList (!logTypeVector))
            end
        done;
        (!allLogTypeVector :> BasicArrayList.basicArrayList)
        end

and getTypeList () : BasicArrayList.basicArrayList =
        begin
        ignore (updateIfNeeded ());
        let allLogTypeVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!logConfigInfoList#size ())) in ();
        for index = 0 to !size - 1 do
            let logConfigInfo : Obj.t ref = ref ((Obj.repr (Obj.magic !logConfigInfoList#objectArray.(index)))) in ();
            let logTypeVector : BasicArrayList.basicArrayList ref = ref ((((Obj.magic !logConfigInfo)#getTypeVector ()) :> BasicArrayList.basicArrayList)) in ();
            if ((Obj.magic !logConfigInfo)#isEnabled ()) then begin
                ignore (!allLogTypeVector#addAllList (!logTypeVector))
            end
        done;
        (!allLogTypeVector :> BasicArrayList.basicArrayList)
        end
let () = java_register_static "LoggingInitInfo.read" (fun arguments -> Obj.repr (read (Obj.obj arguments)))
let () = java_register_static "LoggingInitInfo.updateIfNeeded" (fun arguments -> Obj.repr (updateIfNeeded (Obj.obj arguments)))
let () = java_register_static "LoggingInitInfo.get" (fun arguments -> Obj.repr (get (Obj.obj arguments)))
let () = java_register_static "LoggingInitInfo.getTypeNameList" (fun arguments -> Obj.repr (getTypeNameList (Obj.obj arguments)))
let () = java_register_static "LoggingInitInfo.getTypeList" (fun arguments -> Obj.repr (getTypeList (Obj.obj arguments)))


