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
(* package org.allbinary.logic.system.os *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.java.character.CharacterSet *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.string.CommonSeps *)

class genericOperatingSystem () =
  object (self)
    val mutable osName : string = ""
    method osName = osName
    method set_osName value' = osName <- value'
    val mutable osArch : string = ""
    method osArch = osArch
    method set_osArch value' = osArch <- value'
    val mutable osVersion : string = ""
    method osVersion = osVersion
    method set_osVersion value' = osVersion <- value'
    val mutable characterSet : CharacterSet.characterSet = (Obj.magic 0)
    method characterSet = characterSet
    method set_characterSet value' = characterSet <- value'
    val mutable scalable : bool = false
    method scalable = scalable
    method set_scalable value' = scalable <- value'
    
    

    method getName () : string =
        begin
        osName
        end
    

    method getVersion () : string =
        begin
        osVersion
        end
    

    method getArch () : string =
        begin
        osArch
        end
    

    method getCharacterSet () : CharacterSet.characterSet =
        begin
        (characterSet :> CharacterSet.characterSet)
        end
    

    method isOverScan () : bool =
        begin
        false
        end
    

    method getOverScanXPercent () : int =
        begin
        100
        end
    

    method getOverScanYPercent () : int =
        begin
        100
        end
    

    method isScalable () : bool =
        begin
        scalable
        end
    

    method isAutoHide () : bool =
        begin
        false
        end
    

    method toString () : string =
        begin
        let nEW_LINE : string ref = ref ((CommonSeps.getInstance ())#nEW_LINE) in ();
        let osBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!osBuffer#append ("Operating System Info: \n"));
        ignore (!osBuffer#append ((self#getName ())));
        ignore (!osBuffer#append (!nEW_LINE));
        ignore (!osBuffer#append ((self#getArch ())));
        ignore (!osBuffer#append (!nEW_LINE));
        ignore (!osBuffer#append ((self#getVersion ())));
        ignore (!osBuffer#append (!nEW_LINE));
        ignore (!osBuffer#append (((StringUtil.getInstance ())#toString ((self#getCharacterSet ())))));
        ignore (!osBuffer#append (!nEW_LINE));
        (java_string_of (Obj.repr !osBuffer))
        end

    initializer
      begin
        osName <- "";
        osArch <- "";
        osVersion <- "";
        characterSet <- ((new CharacterSet.characterSet ()) :> CharacterSet.characterSet);
        scalable <- false;
        ();
        let systemProperties : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "SystemProperties.getInstance" (Obj.repr ()))))) in ();
        let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
        let eMPTY_STRING : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
        if (!stringValidationUtil#isEmpty (((Obj.magic !systemProperties)#getName ()))) then begin
            osName <- !eMPTY_STRING
        end else begin
            osName <- ((Obj.magic !systemProperties)#getName ())
        end;
        if (!stringValidationUtil#isEmpty (((Obj.magic !systemProperties)#getArch ()))) then begin
            osArch <- !eMPTY_STRING
        end else begin
            osArch <- ((Obj.magic !systemProperties)#getArch ())
        end;
        if (!stringValidationUtil#isEmpty (((Obj.magic !systemProperties)#getVersion ()))) then begin
            osVersion <- !eMPTY_STRING
        end else begin
            osVersion <- ((Obj.magic !systemProperties)#getVersion ())
        end
      end
  end
let () = java_register_constructor "GenericOperatingSystem" (fun arguments -> Obj.repr (new genericOperatingSystem (Obj.obj arguments)))


