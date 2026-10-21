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
(* package org.allbinary.media.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class imageUnifierProperties () =
  object (self)
    val mutable rows : int = (Obj.magic 0)
    method rows = rows
    method set_rows value' = rows <- value'
    val mutable columns : int = (Obj.magic 0)
    method columns = columns
    method set_columns value' = columns <- value'
    val mutable imageUnifierCell : ImageUnifierCell.imageUnifierCell = (Obj.magic 0)
    method imageUnifierCell = imageUnifierCell
    method set_imageUnifierCell value' = imageUnifierCell <- value'
    
    

    method getWidth () : int =
        begin
        (((self#getColumns ())#intValue ()) * (((self#getImageUnifierCell ())#getWidth ())#intValue ()))
        end
    

    method getHeight () : int =
        begin
        (((self#getRows ())#intValue ()) * (((self#getImageUnifierCell ())#getHeight ())#intValue ()))
        end
    

    method getRows () : int =
        begin
        rows
        end
    

    method setRows ((rows_arg : int)) : unit =
        begin
        rows <- rows_arg
        end
    

    method getColumns () : int =
        begin
        columns
        end
    

    method setColumns ((columns_arg : int)) : unit =
        begin
        columns <- columns_arg
        end
    

    method getImageUnifierCell () : ImageUnifierCell.imageUnifierCell =
        begin
        (imageUnifierCell :> ImageUnifierCell.imageUnifierCell)
        end
    

    method setImageUnifierCell : 'any1. 'any1 -> unit = fun (imageUnifierCell_arg) ->
        let imageUnifierCell_arg = Obj.repr imageUnifierCell_arg in
        begin
        imageUnifierCell <- (Obj.magic imageUnifierCell_arg)
        end [@@warning "-20"]

    initializer
      begin
        rows <- (Obj.magic 0);
        columns <- (Obj.magic 0);
        imageUnifierCell <- ((Obj.magic 0) :> ImageUnifierCell.imageUnifierCell);
        ();
        ()
      end
  end
let () = java_register_constructor "ImageUnifierProperties" (fun arguments -> Obj.repr (new imageUnifierProperties (Obj.obj arguments)))


