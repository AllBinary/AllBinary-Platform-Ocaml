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
(* package org.allbinary.globals *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)


let getInstance () : DomNodeInterface.domNodeInterface =
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        (try
            ((Obj.magic (new UrlGlobalsView.urlGlobalsView ())) :> DomNodeInterface.domNodeInterface)
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#fACTORYERROR)) then begin
                ignore ((Obj.magic !logUtil)#put (!commonStrings#eXCEPTION, "GlobalsViewFactory", !commonStrings#gET_INSTANCE, e))
            end;
            ((Obj.magic 0) :> DomNodeInterface.domNodeInterface)
        end)
        end

let () = java_register_static "UrlGlobalsViewFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class urlGlobalsViewFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "UrlGlobalsViewFactory" (fun arguments -> Obj.repr (new urlGlobalsViewFactory (Obj.obj arguments)))


