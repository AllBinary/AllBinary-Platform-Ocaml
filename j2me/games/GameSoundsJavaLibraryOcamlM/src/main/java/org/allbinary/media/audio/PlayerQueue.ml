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
(* package org.allbinary.media.audio *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

let tOTAL : string = "Sounds In Queue: "
let get_tOTAL () = tOTAL
let () = java_register_static "PlayerQueue.get_tOTAL" (fun _ -> Obj.repr (get_tOTAL ()))
class playerQueue ((max_arg : int)) =
  object (self)
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable max : int = 0
    method max = max
    method set_max value' = max <- value'
    
    

    method add : 'any1. 'any1 -> unit = fun (sound) ->
        let sound = Obj.repr sound in
        begin
        (try
            if (not (list#contains ((Obj.magic sound)))) then begin
                ignore (list#add ((Obj.magic sound)))
            end
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (commonStrings#eXCEPTION, self, commonStrings#aDD))))
        end)
        end [@@warning "-20"]
    

    method process () : bool =
        begin
        let sound : Obj.t ref = ref ((Obj.repr (NoSound.getInstance ()))) in ();
        (try
            let played : bool ref = ref (false) in ();
            if ((list#size ()) > 0) then begin
                sound := Obj.repr ((Obj.magic (list#removeAt (0))));
                if ((Obj.magic !sound) != (Obj.magic 0)) then begin
                    ignore (((Obj.magic !sound)#getPlayerP ())#start ())
                end;
                while ((list#size ()) > max) do
                    ignore (list#removeAt (0))
                done;
                played := true
            end;
            !played
        with e -> begin
            let resource : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
            if ((Obj.magic !sound) != (Obj.magic 0)) then begin
                resource := ((Obj.magic !sound)#getResource ())
            end;
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (commonStrings#eXCEPTION_LABEL))#append (!resource)))), self, commonStrings#pROCESS))));
            false
        end)
        end
    

    method clear () : unit =
        begin
        ignore (list#clear ())
        end
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (tOTAL))#appendint ((list#size ())))))
        end

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ();
        max <- max_arg
      end
  end
let () = java_register_constructor "PlayerQueue" (fun arguments -> Obj.repr (new playerQueue (Obj.obj arguments)))


