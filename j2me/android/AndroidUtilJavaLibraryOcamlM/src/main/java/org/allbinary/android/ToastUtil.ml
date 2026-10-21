(* Generated Code Do Not Modify *)
(* package org.allbinary.android *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import android.content.Context *)
(* import android.view.View *)
(* import android.widget.Toast *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class toastUtil () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    method makeToast : 'any1 'any2. 'any1 * 'any2 * string * int -> unit = fun (view, context, (message : string), (time : int)) ->
        let view = Obj.repr view in
        let context = Obj.repr context in
        begin
        (* Java nested class MakeToast: move it to its own module *) ();
        ignore ((Obj.magic view)#post ((new MakeToast.makeToast (message))))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ToastUtil" (fun arguments -> Obj.repr (new toastUtil (Obj.obj arguments)))

let instance = (new toastUtil ())
let get_instance () = instance
let () = java_register_static "ToastUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ToastUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


