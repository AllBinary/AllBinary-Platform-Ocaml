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
(* package org.allbinary.logic.communication.http *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class acceptableResponseGenerator () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method get : 'any1. 'any1 -> string = fun (httpServletRequest) ->
        let httpServletRequest = Obj.repr httpServletRequest in
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        (try
            let acceptableResponseUtil : AcceptableResponseUtil.acceptableResponseUtil ref = ref (((AcceptableResponseUtil.getInstance ()) :> AcceptableResponseUtil.acceptableResponseUtil)) in ();
            let acceptable : string ref = ref (((Obj.magic httpServletRequest)#getHeader ("accept"))) in ();
            let result : string ref = ref ((!acceptableResponseUtil#getTagName (0))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTP)) then begin
                ignore ((Obj.magic logUtil)#putF (("Request Type: " ^ !acceptable), self, !commonStrings#gET))
            end;
            if (!acceptable <> (Obj.magic 0)) then begin
                let size : int ref = ref ((!acceptableResponseUtil#size ())) in ();
                for index = 0 to !size - 1 do
                    if ((String.compare !acceptable ((!acceptableResponseUtil#get (index)))) == 0) then begin
                        result := (!acceptableResponseUtil#getTagName (index))
                    end
                done
            end;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTP)) then begin
                ignore ((Obj.magic logUtil)#putF (("Response Type: " ^ !result), self, !commonStrings#gET))
            end;
            !result
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPERROR)) then begin
                ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#gET, e))
            end;
            raise e
        end)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AcceptableResponseGenerator" (fun arguments -> Obj.repr (new acceptableResponseGenerator (Obj.obj arguments)))

let instance = (new acceptableResponseGenerator ())
let get_instance () = instance
let () = java_register_static "AcceptableResponseGenerator.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AcceptableResponseGenerator.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


