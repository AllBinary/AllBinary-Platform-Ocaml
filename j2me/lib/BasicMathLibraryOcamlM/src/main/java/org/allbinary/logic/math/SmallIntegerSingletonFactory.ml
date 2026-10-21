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
(* import org.allbinary.AndroidUtil *)
(* import org.allbinary.J2MEUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)

class smallIntegerSingletonFactory () =
  object (self)
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
    

    method getMin () : int =
        begin
        let minAllowed : int ref = ref ((self#getMinAllowed ())) in ();
        if (mIN <= !minAllowed) then begin
            if (J2MEUtil.isJ2ME ()) then begin
                ()
            end else if (Obj.magic (java_call_static "AndroidUtil.isAndroid" (Obj.repr ()))) then begin
                let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
                ignore ((Obj.magic !logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Android InputFactory was initialized before GameMidlet: "))#appendint (mIN)))), self, "getMin"));
                (self#initWithRange (0x291, 6))
            end else begin
                let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
                ignore ((Obj.magic !logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("InputFactory was initialized before GameMidlet or KeyFactoryInitializer - Currently this is occurs on JS build by TouchMotionGestureFactory constructor: "))#appendint (mIN)))), self, "getMin"));
                (self#initWithRange (0x2D0, 6))
            end
        end;
        if (mIN <= !minAllowed) then begin
            let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
            ignore ((Obj.magic !logUtil)#put ("This means you loaded the InputFactory before determining the platform input size requirements.", self, "getMin", (Failure ("Exception"))))
        end;
        mIN
        end
    

    method getMinAllowed () : int =
        try
        begin
        if (J2MEUtil.isJ2ME ()) then begin
            raise (Java_return (Obj.repr (0)))
        end else begin
            if (Obj.magic (java_call_static "AndroidUtil.isAndroid" (Obj.repr ()))) then begin
                raise (Java_return (Obj.repr (0x101)))
            end else begin
                raise (Java_return (Obj.repr (23)))
            end
        end
        end
        with Java_return value -> Obj.obj value
    

    method initWithRange ((value : int), (negativeValue : int)) : unit =
        begin
        for index = (value - 1) downto lastMin do
            iNTEGER_ARRAY.((index + nEGATIVE_MAX)) <- (Obj.obj (java_new "Integer" (Obj.repr (index))))
        done;
        for index = (negativeValue - 1) downto lastNegativeMin do
            iNTEGER_ARRAY.(index) <- (Obj.obj (java_new "Integer" (Obj.repr ((-index)))))
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
        if ((lastMin < pOSITIVE_MAX) || (lastNegativeMin < nEGATIVE_MAX)) then begin
            for index = (pOSITIVE_MAX - 1) downto lastMin do
                iNTEGER_ARRAY.((index + nEGATIVE_MAX)) <- (Obj.obj (java_new "Integer" (Obj.repr (index))))
            done;
            for index = (nEGATIVE_MAX - 1) downto lastNegativeMin do
                iNTEGER_ARRAY.(index) <- (Obj.obj (java_new "Integer" (Obj.repr ((-index)))))
            done;
            lastMin <- pOSITIVE_MAX;
            mIN <- lastMin;
            lastNegativeMin <- nEGATIVE_MAX
        end
        end
    
    

    method getAt ((index : int)) : int =
        begin
        iNTEGER_ARRAY.((index + nEGATIVE_MAX))
        end
    

    method getAtNoThrow ((index : int)) : int =
        try
        begin
        if ((index + nEGATIVE_MAX) > ((Array.length iNTEGER_ARRAY) - 1)) then begin
            raise (Java_return (Obj.repr (iNTEGER_ARRAY.(((-1) + nEGATIVE_MAX)))))
        end;
        iNTEGER_ARRAY.((index + nEGATIVE_MAX))
        end
        with Java_return value -> Obj.obj value
    

    method createInstance ((index : int)) : int =
        begin
        let integer : int ref = ref ((self#getAt (index))) in ();
        if (!integer == (Obj.magic 0)) then begin
            integer := (Obj.obj (java_new "Integer" (Obj.repr (index))))
        end;
        !integer
        end
    

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
        (self#initWithRange (23, 0))
      end
  end
let () = java_register_constructor "SmallIntegerSingletonFactory" (fun arguments -> Obj.repr (new smallIntegerSingletonFactory (Obj.obj arguments)))

let instance = (new smallIntegerSingletonFactory ())
let get_instance () = instance
let () = java_register_static "SmallIntegerSingletonFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "SmallIntegerSingletonFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


