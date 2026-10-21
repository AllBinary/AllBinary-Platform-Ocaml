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
(* package org.allbinary.graphics.j2me.workarea *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.dom.DomHelper *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

let wORKAREA : string = "workArea"
let get_wORKAREA () = wORKAREA
let () = java_register_static "WorkAreaDom.get_wORKAREA" (fun _ -> Obj.repr (get_wORKAREA ()))
let nAME : string = "name"
let get_nAME () = nAME
let () = java_register_static "WorkAreaDom.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let fRAMES : string = "frames"
let get_fRAMES () = fRAMES
let () = java_register_static "WorkAreaDom.get_fRAMES" (fun _ -> Obj.repr (get_fRAMES ()))
class workAreaDom (document) =
  object
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable canvasNodeList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method canvasNodeList = canvasNodeList
    method set_canvasNodeList value' = canvasNodeList <- value'
    
    

    method getName () : string =
        begin
        name
        end
    

    method getCanvasNodes () : BasicArrayList.basicArrayList =
        begin
        (canvasNodeList :> BasicArrayList.basicArrayList)
        end

    initializer
      begin
        name <- "";
        canvasNodeList <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        ();
        let workAreaNodeList : Obj.t ref = ref ((Obj.repr (document#getElementsByTagName (wORKAREA)))) in ();
        if ((Obj.magic !workAreaNodeList) != (Obj.magic 0)) then begin
            let numberOfworkAreas : int ref = ref (((Obj.magic !workAreaNodeList)#getLength ())) in ();
            if (!numberOfworkAreas = 1) then begin
                let numberOfNodes : int ref = ref (((Obj.magic !workAreaNodeList)#getLength ())) in ();
                let nameNode : Obj.t ref = ref ((Obj.repr ((DomHelper.getInstance ())#searchNodeList (nAME, (((Obj.magic !workAreaNodeList)#item (0))#getChildNodes ()))))) in ();
                let nameTextNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !nameNode)#getFirstChild ()))) in ();
                name <- ((Obj.magic !nameTextNode)#getNodeValue ())
            end else begin
                raise (Failure (("Wrong Number of WorkAreas: " ^ java_string_of (Obj.repr (!numberOfworkAreas)))))
            end;
            canvasNodeList <- ((DomHelper.getInstance ())#getChildrenWithoutTextNodes (fRAMES, (((Obj.magic !workAreaNodeList)#item (0))#getChildNodes ())))
        end else begin
            raise (Failure ("workArea Node Not Found"))
        end
      end
  end
let () = java_register_constructor "WorkAreaDom" (fun arguments -> Obj.repr (new workAreaDom (Obj.obj arguments)))


