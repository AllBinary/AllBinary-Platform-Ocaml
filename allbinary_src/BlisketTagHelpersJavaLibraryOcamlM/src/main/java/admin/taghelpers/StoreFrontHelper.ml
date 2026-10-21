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
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.context.modules.storefront.StoreFront *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.regex.replace.Replace *)
(* import org.allbinary.string.CommonSeps *)

class storeFrontHelper ((hashMap : java_hash_map), _pageContext) =
  object
    inherit TagHelper.tagHelper ()
    val mutable storeFrontInterface : StoreFrontInterface.storeFrontInterface = (Obj.magic 0)
    method storeFrontInterface = storeFrontInterface
    method set_storeFrontInterface value' = storeFrontInterface <- value'
    val mutable currentLocation : string = ""
    method currentLocation = currentLocation
    method set_currentLocation value' = currentLocation <- value'
    val mutable currentHomeLocation : string = ""
    method currentHomeLocation = currentHomeLocation
    method set_currentHomeLocation value' = currentHomeLocation <- value'
    
    

    method getCurrentLocation () : string =
        begin
        currentLocation
        end [@@warning "-7"]
    

    method getCurrentHomeLocation () : string =
        begin
        currentHomeLocation
        end [@@warning "-7"]

    initializer
      begin
        storeFrontInterface <- ((Obj.magic 0) :> StoreFrontInterface.storeFrontInterface);
        currentLocation <- "";
        currentHomeLocation <- "";
        ();
        let storeName : string ref = ref ((Obj.magic (hashMap#get ((StoreFrontData.getInstance ())#nAME)))) in ();
        if (!storeName <> (Obj.magic 0)) then begin
            storeFrontInterface <- (StoreFrontFactory.getInstance (!storeName));
            currentLocation <- ((new Replace.replace ((CommonSeps.getInstance ())#sPACE, "%20"))#all (((storeFrontInterface#getCurrentHostName ()) + (storeFrontInterface#getCurrentHostNamePath ()))));
            currentHomeLocation <- ((new Replace.replace ((CommonSeps.getInstance ())#sPACE, "%20"))#all (((storeFrontInterface#getCurrentHomeHostName ()) + (storeFrontInterface#getCurrentHomeHostNamePath ()))))
        end else begin
            let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
            storeFrontInterface <- (new StoreFront.storeFront ());
            currentLocation <- !stringUtil#eMPTY_STRING;
            currentHomeLocation <- !stringUtil#eMPTY_STRING
        end
      end
  end
let () = java_register_constructor "StoreFrontHelper" (fun arguments -> Obj.repr (new storeFrontHelper (Obj.obj arguments)))


