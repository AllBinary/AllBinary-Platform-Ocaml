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
(* package org.allbinary.game.input.mapping *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.Input *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.util.ABHashtable *)

class inputMapping () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable hashtable : Obj.t = Obj.repr 0
    method hashtable : 'r. 'r = Obj.magic hashtable
    method set_hashtable : 'v. 'v -> unit = fun value' -> hashtable <- Obj.repr value'
    val mutable mappedList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method mappedList = mappedList
    method set_mappedList value' = mappedList <- value'
    
    

    method getTotalMapped () : int =
        begin
        ((Obj.magic hashtable)#size ())
        end
    

    method isDefaultNew () : bool =
        begin
        false
        end
    

    method getDefault : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "InputToGameKeyMapping.getNullInstance" (Obj.repr ())))))
        end
    

    method removeAll () : unit =
        begin
        ignore ((Obj.magic hashtable)#clear ());
        ignore (mappedList#clear ())
        end
    

    method remove : 'any1 'any2. 'any1 * 'any2 -> unit = fun (input, mappedToInput) ->
        let input = Obj.repr input in
        let mappedToInput = Obj.repr mappedToInput in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        ignore (!stringBuffer#append ((CommonLabels.getInstance ())#sTART_LABEL));
        ignore (!stringBuffer#append ((!stringUtil#toString ((Obj.magic input)))));
        ignore (!stringBuffer#append (" == "));
        ignore (!stringBuffer#append ((!stringUtil#toString ((Obj.magic mappedToInput)))));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "InputMapping::remove"));
        let list : BasicArrayList.basicArrayList ref = ref (((self#getMappedInput ((Obj.magic input))) :> BasicArrayList.basicArrayList)) in ();
        if (!list#contains ((Obj.magic mappedToInput))) then begin
            ignore (!list#remove ((Obj.magic mappedToInput)));
            ignore (mappedList#remove ((Obj.magic mappedToInput)));
            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
            ignore (!stringBuffer#append ("Removed: "));
            ignore (!stringBuffer#append ((!stringUtil#toString ((Obj.magic input)))));
            ignore (!stringBuffer#append (" == "));
            ignore (!stringBuffer#append ((!stringUtil#toString ((Obj.magic mappedToInput)))));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "InputMapping::remove"))
        end else begin
            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
            ignore (!stringBuffer#append ("Not Deleted: "));
            ignore (!stringBuffer#append ((!stringUtil#toString ((Obj.magic input)))));
            ignore (!stringBuffer#append (" == "));
            ignore (!stringBuffer#append ((!stringUtil#toString ((Obj.magic mappedToInput)))));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "InputMapping::remove"))
        end
        end [@@warning "-20"]
    

    method addMapping : 'any1. 'any1 -> unit = fun (_inputToGameKeyMapping) ->
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end [@@warning "-20"]
    

    method add : 'any1 'any2. 'any1 * 'any2 -> unit = fun (input, mappedToInput) ->
        let input = Obj.repr input in
        let mappedToInput = Obj.repr mappedToInput in
        begin
        let list : BasicArrayList.basicArrayList ref = ref (((self#getMappedInput ((Obj.magic input))) :> BasicArrayList.basicArrayList)) in ();
        if (not (!list#contains ((Obj.magic mappedToInput)))) then begin
            ignore (!list#add ((Obj.magic mappedToInput)));
            ignore (mappedList#add ((Obj.magic mappedToInput)))
        end
        end [@@warning "-20"]
    

    method isMapped : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        begin
        (mappedList#contains ((Obj.magic input)))
        end [@@warning "-20"]
    

    method getMappedInput : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (id) ->
        let id = Obj.repr id in
        try
        begin
        let mappingInputCanBeNullList : Obj.t ref = ref ((Obj.repr ((Obj.magic hashtable)#get ((Obj.magic id))))) in ();
        if (!mappingInputCanBeNullList == (Obj.magic 0)) then begin
            let list : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            ignore ((Obj.magic hashtable)#put ((Obj.magic id), !list));
            raise (Java_return (Obj.repr (!list)))
        end;
        ((Obj.magic !mappingInputCanBeNullList) :> BasicArrayList.basicArrayList)
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method getHashtable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic hashtable)))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        hashtable <- (Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()));
        mappedList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "InputMapping" (fun arguments -> Obj.repr (new inputMapping (Obj.obj arguments)))


