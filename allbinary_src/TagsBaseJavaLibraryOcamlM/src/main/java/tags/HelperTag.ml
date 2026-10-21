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
(* package tags *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import admin.taghelpers.TagHelperFactoryInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class helperTag (tagHelperFactoryInterface_arg) =
  object (self)
    inherit PropertiesTag.propertiesTag () as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tagHelperFactoryInterface : Obj.t = Obj.repr 0
    method tagHelperFactoryInterface : 'r. 'r = Obj.magic tagHelperFactoryInterface
    method set_tagHelperFactoryInterface : 'v. 'v -> unit = fun value' -> tagHelperFactoryInterface <- Obj.repr value'
    val mutable anyType : Obj.t = (Obj.magic 0)
    method anyType = anyType
    method set_anyType value' = anyType <- value'
    
    

    method setHelper () : unit =
        begin
        if (anyType == (Obj.magic 0)) then begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                ignore ((Obj.magic logUtil)#putF (("Creating TagHelper with: \n" ^ (java_string_of (Obj.repr (self#getPropertiesHashMap ())))), self, "doStartTag"))
            end;
            anyType <- ((Obj.magic tagHelperFactoryInterface)#getInstance ((self#getPropertiesHashMap ()), pageContext))
        end
        end [@@warning "-7"]
    

    method getHelper () : Obj.t =
        begin
        (Obj.repr (anyType))
        end [@@warning "-7"]
    

    method doEndTag () : int =
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
            ignore ((Obj.magic logUtil)#putF ("Tag Ended", self, "doEndTag"))
        end;
        anyType <- (Obj.magic 0);
        (super#doEndTag ())
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        anyType <- (Obj.repr (Obj.magic 0));
        ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR))
        end;
        tagHelperFactoryInterface <- Obj.repr (tagHelperFactoryInterface_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "HelperTag" (fun arguments -> Obj.repr (new helperTag (Obj.obj arguments)))


