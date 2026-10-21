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
(* package org.allbinary.logic.util.cache *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListUtil *)

class keylessBasicArrayListCache () =
  object (self)
    inherit IndexedBasicArrayListCache.indexedBasicArrayListCache () as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable basicArrayListUtil : BasicArrayListUtil.basicArrayListUtil = (Obj.magic 0)
    method basicArrayListUtil = basicArrayListUtil
    method set_basicArrayListUtil value' = basicArrayListUtil <- value'
    
    

    method get () : BasicArrayList.basicArrayList =
        begin
        (try
            if (index >= (list#size ())) then begin
                ignore (self#addDefault ())
            end;
            let list : BasicArrayList.basicArrayList ref = ref (((Obj.magic (self#getAt ((let value = index in index <- index + 1; value)))) :> BasicArrayList.basicArrayList)) in ();
            (!list :> BasicArrayList.basicArrayList)
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#gET, e));
            ((basicArrayListUtil#getImmutableInstance ()) :> BasicArrayList.basicArrayList)
        end)
        end [@@warning "-7"]
    

    method clear () : unit =
        begin
        ignore (super#clear ());
        let basicArrayList : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
        for index = ((list#size ()) - 1) downto 0 do
            basicArrayList := ((Obj.magic list#objectArray.(index)));
            ignore (!basicArrayList#clear ())
        done
        end [@@warning "-7"]
    

    method log () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("S: "));
        ignore (!stringBuffer#appendint ((list#size ())));
        let s_LABEL : string ref = ref (" s: ") in ();
        let basicArrayList : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
        for index = ((list#size ()) - 1) downto 0 do
            ignore (!stringBuffer#append (!s_LABEL));
            basicArrayList := ((Obj.magic list#objectArray.(index)));
            ignore (!stringBuffer#appendint ((!basicArrayList#size ())))
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        basicArrayListUtil <- ((BasicArrayListUtil.getInstance ()) :> BasicArrayListUtil.basicArrayListUtil);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "KeylessBasicArrayListCache" (fun arguments -> Obj.repr (new keylessBasicArrayListCache (Obj.obj arguments)))


