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
(* package org.allbinary.logic.system *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.KotlinUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)

class softwareInformation ((name_arg : string), (version_arg : string), (shortName_arg : string)) =
  object (self)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable shortName : string = ""
    method shortName = shortName
    method set_shortName value' = shortName <- value'
    val mutable version : string = ""
    method version = version
    method set_version value' = version <- value'
    
    

    method getName () : string =
        begin
        name
        end
    

    method getVersion () : string =
        begin
        version
        end
    

    method toShortString () : string =
        begin
        shortName
        end
    

    method toString () : string =
        begin
        let nAME : string ref = ref ("Name: ") in ();
        let vERSION : string ref = ref ("Version: ") in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (!nAME));
        ignore (!stringBuffer#append ((self#getName ())));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
        ignore (!stringBuffer#append (!vERSION));
        ignore (!stringBuffer#append ((self#getVersion ())));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        name <- name_arg;
        version <- version_arg;
        shortName <- (java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (shortName_arg))#append ((KotlinUtil.getShortName ())))))
      end
  end
let () = java_register_constructor "SoftwareInformation" (fun arguments -> Obj.repr (new softwareInformation (Obj.obj arguments)))


