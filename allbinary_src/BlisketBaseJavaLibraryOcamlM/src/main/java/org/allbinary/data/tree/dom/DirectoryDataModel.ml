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
(* package org.allbinary.data.tree.dom *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.directory.Directory *)
(* import org.allbinary.logic.visual.transform.TransformInterface *)
(* import org.allbinary.logic.visual.transform.data.TransformDocumentFactory *)
(* import org.allbinary.logic.visual.transform.data.TransformDocumentInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class directoryDataModel (file) =
  object (self)
    val mutable fileBasicArrayList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method fileBasicArrayList = fileBasicArrayList
    method set_fileBasicArrayList value' = fileBasicArrayList <- value'
    val mutable transformDocumentInterface : TransformDocumentInterface.transformDocumentInterface = (Obj.magic 0)
    method transformDocumentInterface = transformDocumentInterface
    method set_transformDocumentInterface value' = transformDocumentInterface <- value'
    val mutable nO_TYPE : int = 0
    method nO_TYPE = nO_TYPE
    method set_nO_TYPE value' = nO_TYPE <- value'
    
    

    method getTypeId () : int =
        begin
        nO_TYPE
        end
    

    method getTransformInfoInterface () : TransformInfoInterface.transformInfoInterface =
        begin
        ((Obj.magic 0) :> TransformInfoInterface.transformInfoInterface)
        end
    

    method setTransformDocumentInterface : 'any1. 'any1 -> unit = fun (transformDocumentInterface_arg) ->
        let transformDocumentInterface_arg = Obj.repr transformDocumentInterface_arg in
        begin
        transformDocumentInterface <- (Obj.magic transformDocumentInterface_arg)
        end [@@warning "-20"]
    

    method getTransformDocumentInterface () : TransformDocumentInterface.transformDocumentInterface =
        begin
        (transformDocumentInterface :> TransformDocumentInterface.transformDocumentInterface)
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let dirNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ("dir")))) in ();
        let size : int ref = ref ((fileBasicArrayList#size ())) in ();
        let nextFile : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let fileNode : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = 0 to !size - 1 do
            nextFile := Obj.repr ((Obj.magic (fileBasicArrayList#get (index))));
            fileNode := Obj.repr (((new FileDomDataModel.fileDomDataModel ((Obj.magic !nextFile)))#toXmlNode ((Obj.magic document))));
            ignore ((Obj.magic !dirNode)#appendChild ((Obj.magic !fileNode)))
        done;
        (Obj.magic ((Obj.magic !dirNode)))
        end [@@warning "-20"]
    

    method toXmlDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (((self#getTransformDocumentInterface ())#getDoc ())))
        end
    

    method view () : string =
        begin
        let node : Obj.t ref = ref ((Obj.repr (self#toXmlNode (((self#getTransformDocumentInterface ())#getDoc ()))))) in ();
        ignore (((self#getTransformDocumentInterface ())#getBaseNode ())#appendChild ((Obj.magic !node)));
        (XmlDocumentHelper.toString (((self#getTransformDocumentInterface ())#getDoc ())))
        end

    initializer
      begin
        ();
        ();
        nO_TYPE <- 0;
        ();
        fileBasicArrayList <- ((Directory.getInstance ())#search (file));
        transformDocumentInterface <- (Obj.magic (TransformDocumentFactory.getInstance ()))
      end
  end
let () = java_register_constructor "DirectoryDataModel" (fun arguments -> Obj.repr (new directoryDataModel (Obj.obj arguments)))


