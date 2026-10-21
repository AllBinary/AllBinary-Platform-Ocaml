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
(* package org.allbinary.game.score *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class highScores ((name_arg : string), (heading_arg : string), (columnTwoHeading_arg : string)) =
  object (self)
    val mutable orderedHighScoresList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method orderedHighScoresList = orderedHighScoresList
    method set_orderedHighScoresList value' = orderedHighScoresList <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable heading : string = ""
    method heading = heading
    method set_heading value' = heading <- value'
    val mutable columnOneHeading : string = ""
    method columnOneHeading = columnOneHeading
    method set_columnOneHeading value' = columnOneHeading <- value'
    val mutable columnTwoHeading : string = ""
    method columnTwoHeading = columnTwoHeading
    method set_columnTwoHeading value' = columnTwoHeading <- value'
    
    

    method setList : 'any1. 'any1 -> unit = fun (orderedHighScoresList_arg) ->
        let orderedHighScoresList_arg = Obj.repr orderedHighScoresList_arg in
        begin
        orderedHighScoresList <- (Obj.magic orderedHighScoresList_arg)
        end [@@warning "-20"]
    

    method getList () : BasicArrayList.basicArrayList =
        begin
        (orderedHighScoresList :> BasicArrayList.basicArrayList)
        end
    

    method getName () : string =
        begin
        name
        end
    

    method getTotal () : int =
        begin
        ((self#getList ())#size ())
        end
    

    method addHighScore : 'any1. 'any1 -> unit = fun (newHighScore) ->
        let newHighScore = Obj.repr newHighScore in
        begin
        ignore (orderedHighScoresList#add ((Obj.magic newHighScore)))
        end [@@warning "-20"]
    

    method getHeading () : string =
        begin
        heading
        end
    

    method getColumnOneHeading () : string =
        begin
        columnOneHeading
        end
    

    method getColumnTwoHeading () : string =
        begin
        columnTwoHeading
        end
    

    method isBestScore : 'any1. 'any1 -> bool = fun (_newHighScore) ->
        begin
        false
        end [@@warning "-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("HighScores: "));
        ignore (!stringBuffer#append (heading));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
        ignore (!stringBuffer#append ((CommonLabels.getInstance ())#tOTAL_LABEL));
        ignore (!stringBuffer#appendint ((orderedHighScoresList#size ())));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        orderedHighScoresList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ();
        columnOneHeading <- "Name";
        ();
        ();
        name <- name_arg;
        heading <- heading_arg;
        columnTwoHeading <- columnTwoHeading_arg
      end
  end
let () = java_register_constructor "HighScores" (fun arguments -> Obj.repr (new highScores (Obj.obj arguments)))


