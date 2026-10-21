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
(* package org.allbinary.logic.visual.transform.data *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class transformDocument () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable baseNode : Obj.t = Obj.repr 0
    method baseNode : 'r. 'r = Obj.magic baseNode
    method set_baseNode : 'v. 'v -> unit = fun value' -> baseNode <- Obj.repr value'
    val mutable document : Obj.t = Obj.repr 0
    method document : 'r. 'r = Obj.magic document
    method set_document : 'v. 'v -> unit = fun value' -> document <- Obj.repr value'
    
    

    method getBaseNode : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic baseNode)))
        end
    

    method getDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic document)))
        end
    

    method log () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        if ((Obj.magic baseNode) != (Obj.magic 0)) then begin
            ignore (!stringBuffer#append ("BaseNode: "));
            ignore (!stringBuffer#append (((Obj.magic baseNode)#getNodeName ())))
        end else begin
            ignore (!stringBuffer#append ("Log-Error: BaseNode is Null"))
        end;
        ignore (!stringBuffer#append ("\nDocument: "));
        ignore (!stringBuffer#append ((XmlDocumentHelper.toString ((Obj.magic document)))));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        baseNode <- (Obj.repr (Obj.magic 0));
        document <- (Obj.repr (Obj.magic 0));
        ();
        (try
            document <- Obj.repr ((DomDocumentHelper.create ()));
            let allbinaryNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ("allbinary")))) in ();
            baseNode <- Obj.repr ((Obj.magic !allbinaryNode));
            ignore ((Obj.magic document)#appendChild ((Obj.magic baseNode)));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#putF ((self#log ()), self, commonStrings#cONSTRUCTOR))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#cONSTRUCTOR, e))
            end;
            raise e
        end)
      end
  end [@@warning "-20"]
let () = java_register_constructor "TransformDocument" (fun arguments -> Obj.repr (new transformDocument (Obj.obj arguments)))


