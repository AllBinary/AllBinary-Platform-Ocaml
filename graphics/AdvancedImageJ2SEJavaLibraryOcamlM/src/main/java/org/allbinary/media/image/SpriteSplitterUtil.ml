(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
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
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)

class spriteSplitterUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable aNIMATIONS_LABELS : string array = (Obj.magic 0)
    method aNIMATIONS_LABELS = aNIMATIONS_LABELS
    method set_aNIMATIONS_LABELS value' = aNIMATIONS_LABELS <- value'
    val mutable dIRECTIONAL_ANIMATIONS : string = ""
    method dIRECTIONAL_ANIMATIONS = dIRECTIONAL_ANIMATIONS
    method set_dIRECTIONAL_ANIMATIONS value' = dIRECTIONAL_ANIMATIONS <- value'
    val mutable hORIZONTAL_ANIMATIONS : string = ""
    method hORIZONTAL_ANIMATIONS = hORIZONTAL_ANIMATIONS
    method set_hORIZONTAL_ANIMATIONS value' = hORIZONTAL_ANIMATIONS <- value'
    val mutable hORIZONTAL_SPRITE : string = ""
    method hORIZONTAL_SPRITE = hORIZONTAL_SPRITE
    method set_hORIZONTAL_SPRITE value' = hORIZONTAL_SPRITE <- value'
    val mutable rOW_NAME : string array = (Obj.magic 0)
    method rOW_NAME = rOW_NAME
    method set_rOW_NAME value' = rOW_NAME <- value'
    val mutable _ROW : string = ""
    method _ROW = _ROW
    method set__ROW value' = _ROW <- value'
    

    method process : 'any1 'any9. 'any1 * int * int * int * int * int * int * string * 'any9 -> unit = fun (imageProcessorInput, (totalFrames : int), (totalAnimations : int), (widthReduction : int), (heightReduction : int), (increaseWidth : int), (increaseHeight : int), (spriteType : string), visitor) ->
        let imageProcessorInput = Obj.repr imageProcessorInput in
        let visitor = Obj.repr visitor in
        begin
        let bufferedImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let generatedBufferedImageArray : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let bufferedImageArray : Obj.t ref = ref ((Obj.repr ((Obj.magic imageProcessorInput)#getBufferedImageArray ()))) in ();
        for index = 0 to (Array.length (Obj.magic !bufferedImageArray)) - 1 do
            bufferedImage := Obj.repr ((Obj.magic !bufferedImageArray).(index));
            ignore ((Obj.magic logUtil)#putF (spriteType, self, commonStrings#rUN));
            if (spriteType = hORIZONTAL_SPRITE) then begin
                let cellHeight : int ref = ref ((((Obj.magic !bufferedImage)#getHeight ()) / totalAnimations)) in ();
                let cellWidth : int ref = ref ((((Obj.magic !bufferedImage)#getWidth ()) / totalFrames)) in ();
                let columns : int ref = ref (totalFrames) in ();
                let rows : int ref = ref (totalAnimations) in ();
                generatedBufferedImageArray := Obj.repr ((Array.make_matrix (!rows) (!columns) (Obj.magic 0)));
                ignore ((Obj.magic logUtil)#putF (((("Processing Individual Cells columns: " ^ java_string_of (Obj.repr (!columns))) ^ " rows: ") ^ java_string_of (Obj.repr (!rows))), self, commonStrings#rUN));
                ignore ((Obj.magic logUtil)#putF (((("Processing Individual Cells cellHeight: " ^ java_string_of (Obj.repr (!cellHeight))) ^ " cellWidth: ") ^ java_string_of (Obj.repr (!cellWidth))), self, commonStrings#rUN));
                let imageUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "ImageUtil.getInstance" (Obj.repr ()))))) in ();
                let nameEnding : string ref = ref ((Obj.magic 0)) in ();
                let x : int ref = ref (0) in ();
                let y : int ref = ref (0) in ();
                for index2 = 0 to !rows - 1 do
                    y := (!cellHeight * index2);
                    for index3 = 0 to !columns - 1 do
                        x := (!cellWidth * index3);
                        (Obj.magic !generatedBufferedImageArray).(index2).(index3) <- ((Obj.magic !bufferedImage)#getSubimage ((!x + widthReduction), (!y + heightReduction), (!cellWidth - ((widthReduction * 2))), (!cellHeight - ((heightReduction * 2)))));
                        if ((increaseWidth <> 0) || (increaseHeight <> 0)) then begin
                            (Obj.magic !generatedBufferedImageArray).(index2).(index3) <- ((Obj.magic !imageUtil)#createBufferedImageAllowTranslate ((Obj.magic !generatedBufferedImageArray).(index2).(index3), (!cellWidth + increaseWidth), (!cellHeight + increaseHeight), false, true))
                        end;
                        nameEnding := (java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#appendint (index2))#append (commonSeps#uNDERSCORE))#appendint (index3))));
                        ignore ((Obj.magic visitor)#visit ((Obj.magic !generatedBufferedImageArray).(index2).(index3), !nameEnding, index))
                    done
                done;
                ignore ((Obj.magic logUtil)#putF ("Processing Rows from Cells", self, commonStrings#rUN));
                let imageUnifierProperties : ImageUnifierProperties.imageUnifierProperties ref = ref (((new ImageUnifierProperties.imageUnifierProperties ()) :> ImageUnifierProperties.imageUnifierProperties)) in ();
                ignore (!imageUnifierProperties#setRows ((string_of_int (1))));
                ignore (!imageUnifierProperties#setColumns ((string_of_int (!columns))));
                let imageUnifierCell : ImageUnifierCell.imageUnifierCell ref = ref (((new ImageUnifierCell.imageUnifierCell ((string_of_int ((!cellWidth - ((2 * widthReduction))))), (string_of_int ((!cellHeight - ((2 * heightReduction))))))) :> ImageUnifierCell.imageUnifierCell)) in ();
                ignore (!imageUnifierProperties#setImageUnifierCell (!imageUnifierCell));
                for index2 = 0 to !rows - 1 do
                    y := (!cellHeight * index2);
                    let tempBufferedImageArray : Obj.t ref = ref ((Obj.repr (Array.make (!columns) (Obj.magic 0)))) in ();
                    for index3 = 0 to !columns - 1 do
                        (Obj.magic !tempBufferedImageArray).(index3) <- (Obj.magic !generatedBufferedImageArray).(index2).(index3);
                        nameEnding := (java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#appendint (index2))#append (commonSeps#uNDERSCORE))#appendint (1))#append (_ROW))))
                    done;
                    let generatedBufferedImage : Obj.t ref = ref ((Obj.repr ((ImageUnifierUtil.getInstance ())#getImage ((Obj.magic !tempBufferedImageArray), !imageUnifierProperties)))) in ();
                    ignore ((Obj.magic visitor)#visit ((Obj.magic !generatedBufferedImage), !nameEnding, index))
                done
            end else if (spriteType = hORIZONTAL_ANIMATIONS) then begin
                ()
            end else if (spriteType = dIRECTIONAL_ANIMATIONS) then begin
                let totalFrames2 : int ref = ref (4) in ();
                let cellHeight : int ref = ref ((((Obj.magic !bufferedImage)#getHeight ()) / !totalFrames2)) in ();
                let cellWidth : int ref = ref ((((Obj.magic !bufferedImage)#getWidth ()) / totalAnimations)) in ();
                let columns : int ref = ref (totalAnimations) in ();
                let rows : int ref = ref (!totalFrames2) in ();
                generatedBufferedImageArray := Obj.repr ((Array.make_matrix (!rows) (!columns) (Obj.magic 0)));
                ignore ((Obj.magic logUtil)#putF ("Processing Individual Cells for each Direction", self, commonStrings#rUN));
                let nameEnding : string ref = ref ((Obj.magic 0)) in ();
                let x : int ref = ref (0) in ();
                let y : int ref = ref (0) in ();
                for index2 = 0 to !rows - 1 do
                    y := (!cellHeight * index2);
                    for index3 = 0 to !columns - 1 do
                        x := (!cellWidth * index3);
                        (Obj.magic !generatedBufferedImageArray).(index2).(index3) <- ((Obj.magic !bufferedImage)#getSubimage ((!x + widthReduction), (!y + heightReduction), (!cellWidth - ((widthReduction * 2))), (!cellHeight - ((heightReduction * 2)))));
                        if ((increaseWidth <> 0) || (increaseHeight <> 0)) then begin
                            (Obj.magic !generatedBufferedImageArray).(index2).(index3) <- ((Obj.magic (java_call_static "ImageUtil.getInstance" (Obj.repr ())))#createBufferedImageAllowTranslate ((Obj.magic !generatedBufferedImageArray).(index2).(index3), (!cellWidth + increaseWidth), (!cellHeight + increaseHeight), false, true))
                        end;
                        nameEnding := (java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (commonStrings#dIRECTION_NAME.(index2)))#append (commonSeps#uNDERSCORE))#appendint (index3))));
                        ignore ((Obj.magic visitor)#visit ((Obj.magic !generatedBufferedImageArray).(index2).(index3), !nameEnding, index))
                    done
                done;
                let imageUnifierProperties : ImageUnifierProperties.imageUnifierProperties ref = ref (((new ImageUnifierProperties.imageUnifierProperties ()) :> ImageUnifierProperties.imageUnifierProperties)) in ();
                ignore (!imageUnifierProperties#setRows ((string_of_int (1))));
                ignore (!imageUnifierProperties#setColumns ((string_of_int (!columns))));
                let imageUnifierCell : ImageUnifierCell.imageUnifierCell ref = ref (((new ImageUnifierCell.imageUnifierCell (((string_of_int ((!cellWidth - ((2 * widthReduction))))) + increaseWidth), (string_of_int (((!cellHeight - ((2 * heightReduction))) + increaseHeight))))) :> ImageUnifierCell.imageUnifierCell)) in ();
                ignore (!imageUnifierProperties#setImageUnifierCell (!imageUnifierCell));
                ignore ((Obj.magic logUtil)#putF ("Processing Rows from Cells for each Direction", self, commonStrings#rUN));
                for index2 = 0 to !rows - 1 do
                    y := (!cellHeight * index2);
                    let tempBufferedImageArray : Obj.t ref = ref ((Obj.repr (Array.make (!columns) (Obj.magic 0)))) in ();
                    for index3 = 0 to !columns - 1 do
                        (Obj.magic !tempBufferedImageArray).(index3) <- (Obj.magic !generatedBufferedImageArray).(index2).(index3);
                        nameEnding := (java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append (commonStrings#dIRECTION_NAME.(index2)))#append (commonSeps#uNDERSCORE))#appendint (1))#append (_ROW))))
                    done;
                    let generatedBufferedImage : Obj.t ref = ref ((Obj.repr ((ImageUnifierUtil.getInstance ())#getImage ((Obj.magic !tempBufferedImageArray), !imageUnifierProperties)))) in ();
                    ignore ((Obj.magic visitor)#visit ((Obj.magic !generatedBufferedImage), !nameEnding, index))
                done
            end
        done
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        aNIMATIONS_LABELS <- [| "Row Total:"; "Column Total:"; "Column Total:"; "Row Total:"; "Column Total:"; "Row Total:" |];
        dIRECTIONAL_ANIMATIONS <- "Directional DLRU";
        hORIZONTAL_ANIMATIONS <- "Horizontal Animations";
        hORIZONTAL_SPRITE <- "Horizontal A=R=Y F=C=X";
        rOW_NAME <- [| "idle"; "walk"; "attack"; "defeat" |];
        _ROW <- "_row";
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "SpriteSplitterUtil" (fun arguments -> Obj.repr (new spriteSplitterUtil (Obj.obj arguments)))

let instance = (new spriteSplitterUtil ())
let get_instance () = instance
let () = java_register_static "SpriteSplitterUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "SpriteSplitterUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


