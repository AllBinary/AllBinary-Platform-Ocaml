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
(* import java.awt *)
(* import java.awt.geom.AffineTransform *)
(* import java.awt.image.AffineTransformOp *)
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class mirrorImageUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable imageUtil : Obj.t = Obj.repr 0
    method imageUtil : 'r. 'r = Obj.magic imageUtil
    method set_imageUtil : 'v. 'v -> unit = fun value' -> imageUtil <- Obj.repr value'
    
    

    method getImage : 'any1 'return. 'any1 * bool * bool -> 'return = fun (bufferedImage, (verticle : bool), (horizontal : bool)) ->
        let bufferedImage = Obj.repr bufferedImage in
        let bufferedImage = ref bufferedImage in
        begin
        ignore ((Obj.magic logUtil)#putF ("Starting", self, "getImage"));
        let newBufferedImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageUtil)#create (((Obj.magic !bufferedImage)#getWidth ((Obj.magic 0))), ((Obj.magic !bufferedImage)#getHeight ((Obj.magic 0))))))) in ();
        let g : Obj.t ref = ref ((Obj.repr ((Obj.magic !newBufferedImage)#createGraphics ()))) in ();
        if verticle then begin
            let tx : Obj.t ref = ref ((Obj.repr (AffineTransform.getScaleInstance (1, (-1))))) in ();
            ignore ((Obj.magic !tx)#translate (0, (-((Obj.magic !bufferedImage)#getHeight ((Obj.magic 0))))));
            let op : Obj.t ref = ref ((Obj.repr (new AffineTransformOp.affineTransformOp ((Obj.magic !tx), (AffineTransformOp.get_tYPE_NEAREST_NEIGHBOR ()))))) in ();
            bufferedImage := Obj.repr (((Obj.magic !op)#filter ((Obj.magic !bufferedImage), (Obj.magic 0))))
        end;
        if horizontal then begin
            let tx : Obj.t ref = ref ((Obj.repr (AffineTransform.getScaleInstance ((-1), 1)))) in ();
            ignore ((Obj.magic !tx)#translate ((-((Obj.magic !bufferedImage)#getWidth ((Obj.magic 0)))), 0));
            let op : Obj.t ref = ref ((Obj.repr (new AffineTransformOp.affineTransformOp ((Obj.magic !tx), (AffineTransformOp.get_tYPE_NEAREST_NEIGHBOR ()))))) in ();
            bufferedImage := Obj.repr (((Obj.magic !op)#filter ((Obj.magic !bufferedImage), (Obj.magic 0))))
        end;
        ignore ((Obj.magic !g)#drawImage ((Obj.magic !bufferedImage), 0, 0, ((Obj.magic !bufferedImage)#getWidth ((Obj.magic 0))), ((Obj.magic !bufferedImage)#getHeight ((Obj.magic 0))), (Obj.magic 0)));
        ignore ((Obj.magic !g)#dispose ());
        (Obj.magic ((Obj.magic !newBufferedImage)))
        end [@@warning "-20"]
    

    method getImages : 'any1 'return. 'any1 * bool * bool -> 'return = fun (bufferedImage, (verticle : bool), (horizontal : bool)) ->
        let bufferedImage = Obj.repr bufferedImage in
        begin
        let width : int ref = ref (((Obj.magic bufferedImage)#getWidth ())) in ();
        let height : int ref = ref (((Obj.magic bufferedImage)#getHeight ())) in ();
        let cellHeight : int ref = ref (!height) in ();
        let cellWidth : int ref = ref (!height) in ();
        let numberOfFramesPerOrientation : int ref = ref ((!width / !cellWidth)) in ();
        let numberOfFrames : int ref = ref (!numberOfFramesPerOrientation) in ();
        if verticle then begin
            numberOfFrames := (!numberOfFrames * 2)
        end;
        if horizontal then begin
            numberOfFrames := (!numberOfFrames * 2)
        end;
        ignore ((Obj.magic logUtil)#putF (((("numberOfFramesPerOrientation: " ^ java_string_of (Obj.repr (!numberOfFramesPerOrientation))) ^ " numberOfFrames: ") ^ java_string_of (Obj.repr (!numberOfFrames))), self, "getImages"));
        let bufferedImageArray : Obj.t ref = ref ((Obj.repr (Array.make (!numberOfFrames) (Obj.magic 0)))) in ();
        let y : int ref = ref (0) in ();
        for index = 0 to !numberOfFramesPerOrientation - 1 do
            let x : int ref = ref ((index * !cellWidth)) in ();
            (Obj.magic !bufferedImageArray).(index) <- ((Obj.magic bufferedImage)#getSubimage (!x, !y, !cellWidth, !cellHeight))
        done;
        for index = 0 to !numberOfFramesPerOrientation - 1 do
            (Obj.magic !bufferedImageArray).((index + !numberOfFramesPerOrientation)) <- (self#getImage ((Obj.magic !bufferedImageArray).(index), verticle, horizontal))
        done;
        (Obj.magic ((Obj.magic !bufferedImageArray)))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        imageUtil <- (Obj.repr (Obj.magic (java_call_static "ImageUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "MirrorImageUtil" (fun arguments -> Obj.repr (new mirrorImageUtil (Obj.obj arguments)))

let instance = (new mirrorImageUtil ())
let get_instance () = instance
let () = java_register_static "MirrorImageUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "MirrorImageUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


