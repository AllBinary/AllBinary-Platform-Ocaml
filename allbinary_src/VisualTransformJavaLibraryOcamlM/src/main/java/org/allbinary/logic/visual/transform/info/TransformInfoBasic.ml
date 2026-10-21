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
(* package org.allbinary.logic.visual.transform.info *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.context.AbContext *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface *)
(* import org.w3c.dom.Document *)

class transformInfoBasic ((storeFrontInterface_arg : StoreFrontInterface.storeFrontInterface), (propertiesHashMap : java_hash_map), pageContext) =
  object
    inherit AbContext.abContext (propertiesHashMap, pageContext)
    val mutable storeFrontInterface : StoreFrontInterface.storeFrontInterface = (Obj.magic 0)
    method storeFrontInterface = storeFrontInterface
    method set_storeFrontInterface value' = storeFrontInterface <- value'
    
    

    method getStoreName () : string =
        begin
        (storeFrontInterface#getName ())
        end [@@warning "-7"]
    

    method log () : string =
        begin
        commonStrings#nOT_IMPLEMENTED
        end [@@warning "-7"]
    

    method override ((_hashMap : java_hash_map)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getName () : string =
        begin
        (Obj.magic 0)
        end [@@warning "-7"]
    

    method getObjectFile () : string =
        begin
        (Obj.magic 0)
        end [@@warning "-7"]
    

    method getObject () : Obj.t =
        begin
        (Obj.repr ((Obj.magic 0)))
        end [@@warning "-7"]
    

    method getObjectConfigInterface () : TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface =
        begin
        ((Obj.magic 0) :> TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface)
        end [@@warning "-7"]
    

    method setObjectConfigInterface : 'any1. 'any1 -> unit = fun (_transformInfoObjectConfigInterface) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method getTemplateFilePath () : AbPath.abPath =
        begin
        ((Obj.magic 0) :> AbPath.abPath)
        end [@@warning "-7"]
    

    method getTemplateFile () : string =
        begin
        (Obj.magic 0)
        end [@@warning "-7"]
    

    method getTemplate () : string =
        begin
        (Obj.magic 0)
        end [@@warning "-7"]
    

    method getDataFilePath () : AbPath.abPath =
        begin
        ((Obj.magic 0) :> AbPath.abPath)
        end [@@warning "-7"]
    

    method getDataFile () : string =
        begin
        (Obj.magic 0)
        end [@@warning "-7"]
    

    method getDataDocument : 'return. unit -> 'return = fun () ->
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end [@@warning "-7"]
    

    method setName ((_value : string)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setStoreName ((_value : string)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setObjectFile ((_value : string)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setObject : 'any1. 'any1 -> unit = fun (_anyType) ->
        begin
        ()
        end [@@warning "-7"]
    

    method setObjectConfigFile ((_value : string)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setTemplateFile ((_value : string)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setTemplate ((_value : string)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setDataFile ((_value : string)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setData ((_value : string)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setChild () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method isChild () : bool =
        begin
        true
        end [@@warning "-7"]
    

    method getImportUriPath () : string =
        begin
        (Obj.magic 0)
        end [@@warning "-7"]
    

    method setImportUriPath ((_importUriPath : string)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getKey () : Obj.t =
        begin
        (Obj.repr ((Obj.magic 0)))
        end [@@warning "-7"]
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        ((Obj.magic 0) :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method toHashMap () : java_hash_map =
        begin
        ((Obj.magic 0) :> java_hash_map)
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        storeFrontInterface <- storeFrontInterface_arg
      end
  end
let () = java_register_constructor "TransformInfoBasic" (fun arguments -> Obj.repr (new transformInfoBasic (Obj.obj arguments)))


