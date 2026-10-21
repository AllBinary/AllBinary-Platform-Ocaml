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
(* package tags.generic *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.InputOutputTypeData *)
(* import tags.TransformTag *)

class genericViewTag () =
  object (self)
    inherit TransformTag.transformTag ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable output : string = ""
    method output = output
    method set_output value' = output <- value'
    val mutable file : string = ""
    method file = file
    method set_file value' = file <- value'
    
    

    method setOutput ((value : string)) : unit =
        begin
        output <- value;
        ignore ((self#getPropertiesHashMap ())#put ((InputOutputTypeData.getInstance ())#nAME, output))
        end [@@warning "-7"]
    

    method setFile ((value : string)) : unit =
        begin
        file <- value;
        ignore ((self#getPropertiesHashMap ())#put ((InputOutputTypeData.getInstance ())#fILE, file))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        output <- "";
        file <- "";
        ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "GenericViewTag" (fun arguments -> Obj.repr (new genericViewTag (Obj.obj arguments)))


