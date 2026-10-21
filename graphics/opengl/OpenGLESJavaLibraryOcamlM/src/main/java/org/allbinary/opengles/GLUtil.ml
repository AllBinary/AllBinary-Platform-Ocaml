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
(* package org.allbinary.opengles *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.nio.Buffer *)
(* import java.nio.ByteBuffer *)
(* import java.nio.ByteOrder *)
(* import java.nio.FloatBuffer *)

class gLUtil () =
  object (self)
    val mutable bYTES_PER_FLOAT : int = 0
    method bYTES_PER_FLOAT = bYTES_PER_FLOAT
    method set_bYTES_PER_FLOAT value' = bYTES_PER_FLOAT <- value'
    val mutable nULL_FLOAT_BUFFER : Obj.t = Obj.repr 0
    method nULL_FLOAT_BUFFER : 'r. 'r = Obj.magic nULL_FLOAT_BUFFER
    method set_nULL_FLOAT_BUFFER : 'v. 'v -> unit = fun value' -> nULL_FLOAT_BUFFER <- Obj.repr value'
    

    method makeFloatBuffer3 : 'return. float * float * float -> 'return = fun ((p_a : float), (p_b : float), (p_c : float)) ->
        begin
        let b : Obj.t ref = ref ((Obj.repr (ByteBuffer.allocateDirect ((3 * bYTES_PER_FLOAT))))) in ();
        ignore ((Obj.magic !b)#order ((ByteOrder.nativeOrder ())));
        let buffer : Obj.t ref = ref ((Obj.repr ((Obj.magic !b)#asFloatBuffer ()))) in ();
        ignore ((Obj.magic !buffer)#put (p_a));
        ignore ((Obj.magic !buffer)#put (p_b));
        ignore ((Obj.magic !buffer)#put (p_c));
        ignore (self#position ((Obj.magic !buffer), 0));
        (Obj.magic ((Obj.magic !buffer)))
        end
    

    method makeFloatBuffer4 : 'return. float * float * float * float -> 'return = fun ((p_a : float), (p_b : float), (p_c : float), (p_d : float)) ->
        begin
        let b : Obj.t ref = ref ((Obj.repr (ByteBuffer.allocateDirect ((4 * bYTES_PER_FLOAT))))) in ();
        ignore ((Obj.magic !b)#order ((ByteOrder.nativeOrder ())));
        let buffer : Obj.t ref = ref ((Obj.repr ((Obj.magic !b)#asFloatBuffer ()))) in ();
        ignore ((Obj.magic !buffer)#put (p_a));
        ignore ((Obj.magic !buffer)#put (p_b));
        ignore ((Obj.magic !buffer)#put (p_c));
        ignore ((Obj.magic !buffer)#put (p_d));
        ignore (self#position ((Obj.magic !buffer), 0));
        (Obj.magic ((Obj.magic !buffer)))
        end
    

    method makeFloatBuffer : 'any1 'return. 'any1 -> 'return = fun (byteBuffer) ->
        let byteBuffer = Obj.repr byteBuffer in
        begin
        let b : Obj.t ref = ref ((Obj.repr (ByteBuffer.allocateDirect ((((Obj.magic byteBuffer)#limit ()) * bYTES_PER_FLOAT))))) in ();
        ignore ((Obj.magic !b)#order ((ByteOrder.nativeOrder ())));
        let buffer : Obj.t ref = ref ((Obj.repr ((Obj.magic !b)#asFloatBuffer ()))) in ();
        let unsigned : int ref = ref (0) in ();
        let v : float ref = ref (0.0) in ();
        while ((Obj.magic byteBuffer)#hasRemaining ()) do
            unsigned := (((java_to_int (Obj.repr (((Obj.magic byteBuffer)#get ()))))) land 0xFF);
            v := (((float_of_int (!unsigned))) /. 255.);
            ignore ((Obj.magic !buffer)#put (!v))
        done;
        ignore (self#position ((Obj.magic !buffer), 0));
        (Obj.magic ((Obj.magic !buffer)))
        end [@@warning "-20"]
    

    method position : 'any1 'return. 'any1 * int -> 'return = fun (buffer, (newPosition : int)) ->
        let buffer = Obj.repr buffer in
        begin
        (Obj.magic (((Obj.magic buffer)#position (newPosition))))
        end [@@warning "-20"]
    

    method rotateUVs ((uvs : float array), (angleDegrees : float), (pivotU : float), (pivotV : float)) : unit =
        begin
        let angleRad : float ref = ref (((angleDegrees) *. Float.pi /. 180.0)) in ();
        let cosA : float ref = ref ((Float.cos (!angleRad))) in ();
        let sinA : float ref = ref ((Float.sin (!angleRad))) in ();
        let i : int ref = ref (0) in ();
        while (i < (Array.length uvs)) do
            let u : float ref = ref (uvs.(i)) in ();
            let v : float ref = ref (uvs.((i + 1))) in ();
            let du : float ref = ref ((!u -. pivotU)) in ();
            let dv : float ref = ref ((!v -. pivotV)) in ();
            let ru : float ref = ref (((((!du *. !cosA) -. (!dv *. !sinA))) +. pivotU)) in ();
            let rv : float ref = ref (((((!du *. !sinA) +. (!dv *. !cosA))) +. pivotV)) in ();
            uvs.(i) <- !ru;
            uvs.((i + 1)) <- !rv;
            i <- (i + 2)
        done
        end

    initializer
      begin
        bYTES_PER_FLOAT <- 4;
        nULL_FLOAT_BUFFER <- (Obj.repr ((ByteBuffer.allocateDirect (0))#asFloatBuffer ()));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "GLUtil" (fun arguments -> Obj.repr (new gLUtil (Obj.obj arguments)))

let instance = (new gLUtil ())
let get_instance () = instance
let () = java_register_static "GLUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GLUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


