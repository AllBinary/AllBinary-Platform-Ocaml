(* Generated Code Do Not Modify *)
(* package org.allbinary.android *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import android.app.Activity *)
(* import android.view.View *)
(* import android.view.ViewGroup *)

let nULL_VIEW_ARRAY : Obj.t = (Obj.repr (Array.make (0) (Obj.magic 0)))
let get_nULL_VIEW_ARRAY () = Obj.magic nULL_VIEW_ARRAY
let () = java_register_static "ViewSwapper.get_nULL_VIEW_ARRAY" (fun _ -> Obj.repr (get_nULL_VIEW_ARRAY ()))
class viewSwapper (activity_arg, (rootViewId_arg : int)) =
  object
    val mutable rootViewId : int = 0
    method rootViewId = rootViewId
    method set_rootViewId value' = rootViewId <- value'
    val mutable activity : Obj.t = Obj.repr 0
    method activity : 'r. 'r = Obj.magic activity
    method set_activity : 'v. 'v -> unit = fun value' -> activity <- Obj.repr value'
    val mutable currentMainViewId : int = 0
    method currentMainViewId = currentMainViewId
    method set_currentMainViewId value' = currentMainViewId <- value'
    val mutable mainViewArray : Obj.t = Obj.repr 0
    method mainViewArray : 'r. 'r = Obj.magic mainViewArray
    method set_mainViewArray : 'v. 'v -> unit = fun value' -> mainViewArray <- Obj.repr value'
    val mutable topViewArray : Obj.t = Obj.repr 0
    method topViewArray : 'r. 'r = Obj.magic topViewArray
    method set_topViewArray : 'v. 'v -> unit = fun value' -> topViewArray <- Obj.repr value'
    
    

    method setMainViews (viewArray) : unit =
        begin
        mainViewArray <- Obj.repr (viewArray)
        end
    

    method setTopViewArray (topViewArray_arg) : unit =
        begin
        topViewArray <- Obj.repr (topViewArray_arg)
        end
    

    method setMainView ((id : int)) : unit =
        begin
        let viewGroup : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic activity)#findViewById (rootViewId))))) in ();
        if (id <> currentMainViewId) then begin
            for index = 0 to (Array.length (Obj.magic topViewArray)) - 1 do
                ignore ((Obj.magic !viewGroup)#removeView ((Obj.magic topViewArray).(index)))
            done;
            for index = 0 to (Array.length (Obj.magic mainViewArray)) - 1 do
                if (id <> ((Obj.magic mainViewArray).(index)#getId ())) then begin
                    ignore ((Obj.magic !viewGroup)#removeView ((Obj.magic mainViewArray).(index)))
                end
            done;
            for index = 0 to (Array.length (Obj.magic mainViewArray)) - 1 do
                if (id = ((Obj.magic mainViewArray).(index)#getId ())) then begin
                    ignore ((Obj.magic !viewGroup)#addView ((Obj.magic mainViewArray).(index)));
                    currentMainViewId <- id
                end
            done;
            for index = 0 to (Array.length (Obj.magic topViewArray)) - 1 do
                ignore ((Obj.magic !viewGroup)#addView ((Obj.magic topViewArray).(index)))
            done
        end
        end

    initializer
      begin
        ();
        ();
        currentMainViewId <- (-1);
        mainViewArray <- (Obj.repr (Obj.magic nULL_VIEW_ARRAY));
        topViewArray <- (Obj.repr (Obj.magic nULL_VIEW_ARRAY));
        ();
        activity <- Obj.repr (activity_arg);
        rootViewId <- rootViewId_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "ViewSwapper" (fun arguments -> Obj.repr (new viewSwapper (Obj.obj arguments)))


