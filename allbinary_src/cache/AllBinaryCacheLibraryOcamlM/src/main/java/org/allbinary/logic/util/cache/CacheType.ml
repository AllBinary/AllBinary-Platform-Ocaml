(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2007 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.util.cache *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringMaker *)

class cacheType ((vendor_arg : string), (type__arg : string)) =
  object (self)
    val mutable vendor : string = ""
    method vendor = vendor
    method set_vendor value' = vendor <- value'
    val mutable type_ : string = ""
    method type_ = type_
    method set_type_ value' = type_ <- value'
    
    

    method getVendor () : string =
        begin
        vendor
        end
    

    method getType () : string =
        begin
        type_
        end
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("CacheType: Vendor: "));
        ignore (!stringBuffer#append ((self#getVendor ())));
        ignore (!stringBuffer#append (" Type: "));
        ignore (!stringBuffer#append ((self#getType ())));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        ();
        ();
        ();
        vendor <- vendor_arg;
        type_ <- type__arg
      end
  end
let () = java_register_constructor "CacheType" (fun arguments -> Obj.repr (new cacheType (Obj.obj arguments)))


