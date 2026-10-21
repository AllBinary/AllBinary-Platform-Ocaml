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
(* package org.allbinary.logic.math *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class smallLongFactory () =
  object
    val mutable nEGATIVE_MAX : int = 0
    method nEGATIVE_MAX = nEGATIVE_MAX
    method set_nEGATIVE_MAX value' = nEGATIVE_MAX <- value'
    val mutable pOSITIVE_MAX : int = 0
    method pOSITIVE_MAX = pOSITIVE_MAX
    method set_pOSITIVE_MAX value' = pOSITIVE_MAX <- value'
    val mutable iNTEGER_ARRAY : int array = (Obj.magic 0)
    method iNTEGER_ARRAY = iNTEGER_ARRAY
    method set_iNTEGER_ARRAY value' = iNTEGER_ARRAY <- value'
    val mutable sTRING_ARRAY : string array = (Obj.magic 0)
    method sTRING_ARRAY = sTRING_ARRAY
    method set_sTRING_ARRAY value' = sTRING_ARRAY <- value'
    val mutable mIN : int = 0
    method mIN = mIN
    method set_mIN value' = mIN <- value'
    val mutable lastMin : int = 0
    method lastMin = lastMin
    method set_lastMin value' = lastMin <- value'
    val mutable lastNegativeMin : int = 0
    method lastNegativeMin = lastNegativeMin
    method set_lastNegativeMin value' = lastNegativeMin <- value'
    

    method initWithRange ((value : int), (negativeValue : int)) : unit =
        begin
        for index = (value - 1) downto lastMin do
            iNTEGER_ARRAY.((index + nEGATIVE_MAX)) <- (Obj.obj (java_new "Long" (Obj.repr (index))))
        done;
        for index = (negativeValue - 1) downto lastNegativeMin do
            iNTEGER_ARRAY.(index) <- (Obj.obj (java_new "Long" (Obj.repr ((-index)))))
        done;
        if (lastMin < value) then begin
            lastMin <- value;
            mIN <- value
        end;
        if (lastNegativeMin < negativeValue) then begin
            lastNegativeMin <- negativeValue
        end
        end
    

    method init () : unit =
        begin
        if (iNTEGER_ARRAY.(0) == (Obj.magic 0)) then begin
            if ((lastMin < pOSITIVE_MAX) || (lastNegativeMin < nEGATIVE_MAX)) then begin
                for index = (pOSITIVE_MAX - 1) downto lastMin do
                    iNTEGER_ARRAY.((index + nEGATIVE_MAX)) <- (Obj.obj (java_new "Long" (Obj.repr (index))))
                done;
                for index = (nEGATIVE_MAX - 1) downto lastNegativeMin do
                    iNTEGER_ARRAY.(index) <- (Obj.obj (java_new "Long" (Obj.repr ((-index)))))
                done;
                lastMin <- pOSITIVE_MAX;
                lastNegativeMin <- nEGATIVE_MAX
            end
        end
        end
    
    

    method getInstanceNoThrow ((index : int)) : int =
        try
        begin
        if ((index + nEGATIVE_MAX) > ((Array.length iNTEGER_ARRAY) - 1)) then begin
            raise (Java_return (Obj.repr (iNTEGER_ARRAY.(((-1) + nEGATIVE_MAX)))))
        end;
        iNTEGER_ARRAY.(((index) + nEGATIVE_MAX))
        end
        with Java_return value -> Obj.obj value
    

    method getString ((index : int)) : string =
        begin
        let i : int ref = ref ((index + nEGATIVE_MAX)) in ();
        if (sTRING_ARRAY.(!i) == (Obj.magic 0)) then begin
            sTRING_ARRAY.(!i) <- (java_string_of (Obj.repr iNTEGER_ARRAY.(!i)))
        end;
        sTRING_ARRAY.(!i)
        end

    initializer
      begin
        nEGATIVE_MAX <- 500;
        pOSITIVE_MAX <- 0x2D1;
        iNTEGER_ARRAY <- (Array.make ((nEGATIVE_MAX + pOSITIVE_MAX)) (Obj.magic 0));
        sTRING_ARRAY <- (Array.make ((nEGATIVE_MAX + pOSITIVE_MAX)) (Obj.magic 0));
        mIN <- 0;
        lastMin <- 0;
        lastNegativeMin <- 0;
        ();
        ()
      end
  end
let () = java_register_constructor "SmallLongFactory" (fun arguments -> Obj.repr (new smallLongFactory (Obj.obj arguments)))

let instance = (new smallLongFactory ())
let get_instance () = instance
let () = java_register_static "SmallLongFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "SmallLongFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


