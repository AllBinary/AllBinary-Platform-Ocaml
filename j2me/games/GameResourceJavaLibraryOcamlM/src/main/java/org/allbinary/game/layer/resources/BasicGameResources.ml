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
(* package org.allbinary.game.layer.resources *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.configuration.GameConfigurationCentral *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)

let stringBuffer : StringMaker.stringMaker = ((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)
let get_stringBuffer () = stringBuffer
let () = java_register_static "BasicGameResources.get_stringBuffer" (fun _ -> Obj.repr (get_stringBuffer ()))
class basicGameResources () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable rESOURCE : string = ""
    method rESOURCE = rESOURCE
    method set_rESOURCE value' = rESOURCE <- value'
    val mutable rESOURCE_DESTROY : string = ""
    method rESOURCE_DESTROY = rESOURCE_DESTROY
    method set_rESOURCE_DESTROY value' = rESOURCE_DESTROY <- value'
    
    

    method init ((rOOT : string), (sIZE : string array)) : unit =
        begin
        (try
            let scale : int ref = ref ((((GameConfigurationCentral.getInstance ())#sCALE#getValue ())#intValue ())) in ();
            if ((!scale > 1) && ((!scale - 1) < (Array.length sIZE))) then begin
                (self#append (rOOT, sIZE.((!scale - 1))))
            end else begin
                raise (Failure ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Invalid Value: "))#appendint (!scale))))))
            end
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#iNIT, e))
        end)
        end
    

    method append ((rOOT : string), (sizeString : string)) : unit =
        begin
        let dESTROY : string ref = ref ("_destroy") in ();
        let string : string ref = ref ((self#getString ())) in ();
        ignore (stringBuffer#delete (0, (stringBuffer#length ())));
        ignore (stringBuffer#append (rOOT));
        ignore (stringBuffer#append (!string));
        ignore (stringBuffer#append (sizeString));
        rESOURCE <- (java_string_of (Obj.repr stringBuffer));
        ignore (stringBuffer#delete (0, (stringBuffer#length ())));
        ignore (stringBuffer#append (rOOT));
        ignore (stringBuffer#append (!dESTROY));
        ignore (stringBuffer#append (!string));
        ignore (stringBuffer#append (sizeString));
        rESOURCE_DESTROY <- (java_string_of (Obj.repr stringBuffer))
        end
    

    method getString () : string =
        begin
        ((GameGraphicsResourceUtil.getInstance ())#getName ())
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        rESOURCE <- (StringUtil.getInstance ())#eMPTY_STRING;
        rESOURCE_DESTROY <- (StringUtil.getInstance ())#eMPTY_STRING;
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicGameResources" (fun arguments -> Obj.repr (new basicGameResources (Obj.obj arguments)))


