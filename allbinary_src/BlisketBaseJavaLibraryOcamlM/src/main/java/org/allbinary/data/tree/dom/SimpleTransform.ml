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
(* import java.io.StringBufferInputStream *)
(* import javax.xml.transform.stream.StreamSource *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.logic.io.AbFileLocalInputStream *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.w3c.dom.Document *)

class simpleTransform ((xsltFilePath_arg : AbPath.abPath), (dataFilePath_arg : AbPath.abPath)) =
  object
    val mutable xsltFilePath : AbPath.abPath = (Obj.magic 0)
    method xsltFilePath = xsltFilePath
    method set_xsltFilePath value' = xsltFilePath <- value'
    val mutable dataFilePath : AbPath.abPath = (Obj.magic 0)
    method dataFilePath = dataFilePath
    method set_dataFilePath value' = dataFilePath <- value'
    
    

    method transform () : string =
        begin
        let inputStream : AbFileLocalInputStream.abFileLocalInputStream ref = ref (((new AbFileLocalInputStream.abFileLocalInputStream ((Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr (xsltFilePath)))))) :> AbFileLocalInputStream.abFileLocalInputStream)) in ();
        let document : Obj.t ref = ref ((Obj.repr (DomDocumentHelper.create ((new AbFileLocalInputStream.abFileLocalInputStream ((Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr (dataFilePath)))))))))) in ();
        let result : string ref = ref (((XslHelper.getInstance ())#translate ((new StreamSource.streamSource (!inputStream)), (new StreamSource.streamSource ((new StringBufferInputStream.stringBufferInputStream ((XmlDocumentHelper.toString ((Obj.magic !document)))))))))) in ();
        !result
        end

    initializer
      begin
        ();
        ();
        ();
        xsltFilePath <- xsltFilePath_arg;
        dataFilePath <- dataFilePath_arg
      end
  end
let () = java_register_constructor "SimpleTransform" (fun arguments -> Obj.repr (new simpleTransform (Obj.obj arguments)))


