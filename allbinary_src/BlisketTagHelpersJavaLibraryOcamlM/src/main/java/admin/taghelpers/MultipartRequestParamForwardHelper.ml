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
(* package admin.taghelpers *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.globals.GLOBALS2 *)
(* import org.allbinary.logic.communication.http.request.RequestMapInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import tags.HelperTag *)

class multipartRequestParamForwardHelper (parentHelperTag, (page_arg : string), (command_arg : string), (paramVector_arg : BasicArrayList.basicArrayList), pageContext_arg) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable pageContext : Obj.t = Obj.repr 0
    method pageContext : 'r. 'r = Obj.magic pageContext
    method set_pageContext : 'v. 'v -> unit = fun value' -> pageContext <- Obj.repr value'
    val mutable requestMapInterface : RequestMapInterface.requestMapInterface = (Obj.magic 0)
    method requestMapInterface = requestMapInterface
    method set_requestMapInterface value' = requestMapInterface <- value'
    val mutable page : string = ""
    method page = page
    method set_page value' = page <- value'
    val mutable command : string = ""
    method command = command
    method set_command value' = command <- value'
    val mutable paramVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method paramVector = paramVector
    method set_paramVector value' = paramVector <- value'
    
    

    method forward () : unit =
        begin
        (try
            if (self#shouldForward ()) then begin
                let params : string ref = ref ((self#getParams ())) in ();
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append (page));
                ignore (!stringBuffer#append (!params));
                ignore ((Obj.magic pageContext)#forward ((java_string_of (Obj.repr !stringBuffer))))
            end
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, "forward()", e))
            end
        end)
        end
    

    method getParams () : string =
        begin
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        let aMP : string ref = ref (!commonSeps#aMPERSAND) in ();
        let qUESTION : string ref = ref (!commonSeps#qUESTION) in ();
        let eQUALS : string ref = ref (!commonSeps#eQUALS) in ();
        let hashMap : java_hash_map ref = ref (((requestMapInterface#getRequestHashMap ()) :> java_hash_map)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let size : int ref = ref ((paramVector#size ())) in ();
        for index = 0 to !size - 1 do
            let key : string ref = ref ((Obj.magic (paramVector#get (index)))) in ();
            let value : string ref = ref ((Obj.magic (!hashMap#get (!key)))) in ();
            if (index <> 0) then begin
                ignore (!stringBuffer#append (!aMP))
            end else begin
                ignore (!stringBuffer#append (!qUESTION))
            end;
            ignore (!stringBuffer#append (!key));
            ignore (!stringBuffer#append (!eQUALS));
            ignore (!stringBuffer#append (!value))
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method shouldForward () : bool =
        try
        begin
        let hashMap : java_hash_map ref = ref (((requestMapInterface#getRequestHashMap ()) :> java_hash_map)) in ();
        let requestCommand : string ref = ref ((Obj.magic (!hashMap#get ((GLOBALS2.get_aDMINCOMMAND ()))))) in ();
        if (((StringValidationUtil.getInstance ())#isEmpty (command)) || (((not ((StringValidationUtil.getInstance ())#isEmpty (!requestCommand))) && ((String.compare command (!requestCommand)) == 0)))) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        ();
        ();
        ();
        pageContext <- Obj.repr (pageContext_arg);
        page <- page_arg;
        command <- command_arg;
        paramVector <- paramVector_arg;
        requestMapInterface <- ((InventoryItemViewParentTagHelper.getInstance ())#getRequestMapInterface (parentHelperTag))
      end
  end [@@warning "-20"]
let () = java_register_constructor "MultipartRequestParamForwardHelper" (fun arguments -> Obj.repr (new multipartRequestParamForwardHelper (Obj.obj arguments)))


