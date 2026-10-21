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
(* package org.allbinary.util *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import jsinterop.annotations.JsType *)
(* import org.allbinary.game.rand.MyRandomFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonPhoneStrings *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsProperty *)

class basicArrayListUtil () =
  object (self)
    val mutable nULL_ARRAY_OF_ARRAY : BasicArrayList.basicArrayList array array = (Obj.magic 0)
    method nULL_ARRAY_OF_ARRAY = nULL_ARRAY_OF_ARRAY
    method set_nULL_ARRAY_OF_ARRAY value' = nULL_ARRAY_OF_ARRAY <- value'
    val mutable myRandomFactory : MyRandomFactory.myRandomFactory = (Obj.magic 0)
    method myRandomFactory = myRandomFactory
    method set_myRandomFactory value' = myRandomFactory <- value'
    val mutable immutableInstance : BasicArrayList.basicArrayList = (Obj.magic 0)
    method immutableInstance = immutableInstance
    method set_immutableInstance value' = immutableInstance <- value'
    

    method getRandom : 'any1. 'any1 -> Obj.t = fun (list) ->
        let list = Obj.repr list in
        begin
        let i_random : int ref = ref ((self#getRandomIndex ((Obj.magic list)))) in ();
        (Obj.repr ((Obj.magic list)#objectArray.(!i_random)))
        end [@@warning "-20"]
    

    method getRandomIndex : 'any1. 'any1 -> int = fun (list) ->
        let list = Obj.repr list in
        begin
        (myRandomFactory#getAbsoluteNextInt (((Obj.magic list)#size ())))
        end [@@warning "-20"]
    

    method reverse : 'any1. 'any1 -> unit = fun (list) ->
        let list = Obj.repr list in
        begin
        let lastMinusOneIndex : int ref = ref ((((Obj.magic list)#size ()) - 2)) in ();
        let temp : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let size : int ref = ref ((!lastMinusOneIndex / 2)) in ();
        let secondSwapIndex : int ref = ref (0) in ();
        for index = 0 to !size do
            secondSwapIndex := (!lastMinusOneIndex - index);
            temp := ((Obj.magic list)#removeAt (index));
            ignore ((Obj.magic list)#addAt (index, ((Obj.magic list)#removeAt (!secondSwapIndex))));
            ignore ((Obj.magic list)#addAt ((!secondSwapIndex + 1), !temp))
        done
        end [@@warning "-20"]
    

    method log : 'any1. 'any1 -> string = fun (list) ->
        let list = Obj.repr list in
        begin
        let s_LABEL : string ref = ref (" s: ") in ();
        let size : int ref = ref (((Obj.magic list)#size ())) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((CommonLabels.getInstance ())#tOTAL_LABEL));
        ignore (!stringBuffer#appendint (!size));
        for index = (!size - 1) downto 0 do
            let usedList : BasicArrayList.basicArrayList ref = ref (((Obj.magic (Obj.magic list)#objectArray.(index)) :> BasicArrayList.basicArrayList)) in ();
            ignore (!stringBuffer#append (!s_LABEL));
            ignore (!stringBuffer#appendint ((!usedList#size ())))
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-20"]
    

    method getImmutableInstance () : BasicArrayList.basicArrayList =
        begin
        (immutableInstance :> BasicArrayList.basicArrayList)
        end

    initializer
      begin
        nULL_ARRAY_OF_ARRAY <- (Array.make_matrix (0) (0) (Obj.magic 0));
        myRandomFactory <- ((MyRandomFactory.getInstance ()) :> MyRandomFactory.myRandomFactory);
        immutableInstance <- ((new ImmutableBasicArrayList.immutableBasicArrayList ("Immutable", 0)) :> BasicArrayList.basicArrayList);
        ()
      end
  end
let () = java_register_constructor "BasicArrayListUtil" (fun arguments -> Obj.repr (new basicArrayListUtil (Obj.obj arguments)))

let instance = (new basicArrayListUtil ())
let get_instance () = instance
let () = java_register_static "BasicArrayListUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let rec getInstance () =
        begin
        instance
        end

and main ((_args : string array)) : unit =
        begin
        let commonPhoneStrings : CommonPhoneStrings.commonPhoneStrings ref = ref (((CommonPhoneStrings.getInstance ()) :> CommonPhoneStrings.commonPhoneStrings)) in ();
        let list : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!list#add (!commonPhoneStrings#oNE));
        ignore (!list#add (!commonPhoneStrings#tWO));
        ignore (!list#add (!commonPhoneStrings#tHREE));
        ignore (!list#add (!commonPhoneStrings#fOUR));
        ignore (!list#add (!commonPhoneStrings#fIVE));
        ignore (!list#add (!commonPhoneStrings#sIX));
        ignore (!list#add (!commonPhoneStrings#sEVEN));
        ignore (!list#add (!commonPhoneStrings#eIGHT));
        ignore (!list#add (!commonPhoneStrings#nINE));
        ignore ((getInstance ())#reverse (!list));
        (print_endline (java_string_of (Obj.repr ((java_string_of (Obj.repr !list))))))
        end
let () = java_register_static "BasicArrayListUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "BasicArrayListUtil.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))


