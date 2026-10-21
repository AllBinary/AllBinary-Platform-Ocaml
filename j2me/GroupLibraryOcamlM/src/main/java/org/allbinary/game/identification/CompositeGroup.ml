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
(* package org.allbinary.game.identification *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class compositeGroup (groupInterface_arg) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable groupInterface : Obj.t = Obj.repr 0
    method groupInterface : 'r. 'r = Obj.magic groupInterface
    method set_groupInterface : 'v. 'v -> unit = fun value' -> groupInterface <- Obj.repr value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    
    

    method clear () : unit =
        begin
        ignore (list#clear ())
        end
    

    method add : 'any1. 'any1 -> unit = fun (groupInterface_arg) ->
        let groupInterface_arg = Obj.repr groupInterface_arg in
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        let groupCommonFactory : GroupCommonFactory.groupCommonFactory ref = ref (((GroupCommonFactory.getInstance ()) :> GroupCommonFactory.groupCommonFactory)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (!groupCommonFactory#aDDING_LABEL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (Obj.magic groupInterface_arg)))));
        ignore (!stringBuffer#append (!groupCommonFactory#tO_LABEL));
        ignore (!stringBuffer#append (((StringUtil.getInstance ())#toString ((Obj.magic groupInterface)))));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, !commonStrings#aDD));
        ignore (list#add ((Obj.magic groupInterface_arg)))
        end [@@warning "-20"]
    

    method isInGroup : 'any1. 'any1 -> bool = fun (groupInterface_arg) ->
        let groupInterface_arg = Obj.repr groupInterface_arg in
        try
        begin
        if (list#contains ((Obj.magic groupInterface_arg))) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method getGroup : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic groupInterface)))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        groupInterface <- Obj.repr (groupInterface_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "CompositeGroup" (fun arguments -> Obj.repr (new compositeGroup (Obj.obj arguments)))


