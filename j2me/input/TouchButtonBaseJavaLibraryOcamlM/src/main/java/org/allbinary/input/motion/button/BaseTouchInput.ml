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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListUtil *)

class baseTouchInput () =
  object (self)
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable basicArrayListUtil : BasicArrayListUtil.basicArrayListUtil = (Obj.magic 0)
    method basicArrayListUtil = basicArrayListUtil
    method set_basicArrayListUtil value' = basicArrayListUtil <- value'
    
    

    method getList () : BasicArrayList.basicArrayList =
        begin
        ((basicArrayListUtil#getImmutableInstance ()) :> BasicArrayList.basicArrayList)
        end
    

    method toString () : string =
        begin
        (java_get_class (Obj.repr self))
        end

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        basicArrayListUtil <- ((BasicArrayListUtil.getInstance ()) :> BasicArrayListUtil.basicArrayListUtil);
        ();
        ()
      end
  end
let () = java_register_constructor "BaseTouchInput" (fun arguments -> Obj.repr (new baseTouchInput (Obj.obj arguments)))


