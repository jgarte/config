;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-
(defmacro append-to-list (to lst)
  `(setq ,to (append ,lst ,to)))

(defmacro lazyload (func lib &rest body)
  `(when (locate-library ,lib)
     ,@(mapcar (lambda (f) `(autoload ',f ,lib nil t)) func)
     (eval-after-load ,lib
       '(progn
          ,@body))))

;; load-path
(defun add-to-load-path (&rest paths)
  (mapc '(lambda (path)
           (add-to-list 'load-path path))
        (mapcar 'expand-file-name paths)))

(add-to-load-path "~/.emacs.d/elisp"
                  "~/.emacs.d/conf")
;; scratch
;; ref: http://d.hatena.ne.jp/se-kichi/20100715/1279215193
(setq initial-scratch-message
";;                      ＿＿＿  まぁ確かに・・・
;;                    ／⌒  '' ⌒＼
;;                  ／（ ● ) (● )＼             Emacsを立ち上げたのはお前
;;                ／::⌒  ,    ゝ⌒::＼    (⌒)
;;                |       `ｰ=-'     |    ﾉ~.ﾚ-r┐､
;;                ＼               ／   ノ  |.| |
;;.         ,  ⌒ ´  ＼     ￣   ´ !〈￣｀- Lλ_ﾚﾚ
;;        /    __       ヽ        |  ￣｀ー‐-‐‐´
;;.      〃 ,. --ミ        ヽ     i   |/ハ ／
;;      ji／    ￣｀          ヽ  |
;;                      ＿＿＿
;;                    ／ノ '' ⌒＼
;;                  ／（ ● ) (● )＼でも、この画面まで来れたのは俺のおかげ
;;                ／::⌒   ,   ゝ⌒::＼
;;                |       ﾄ==ｨ'     |
;;    _,rｰく´＼  ＼,--､    `ー'    ／
;;. ,-く ヽ.＼ ヽ Y´  ／   ー    ´ !｀ｰ-､
;;  {  -!  l _｣_ﾉ‐′/ ヽ            |    ∧
;;. ヽ  ﾞｰ'´ ヽ    /     ヽ        i  |/ハ
;;  ｀ゝ、    ﾉ  ノ         ヽ     |
;;                      ＿＿＿
;;                    ／ヽ ''ノ＼
;;                  ／（ ● ) (● )＼
;;                ／::⌒    ､＿ゝ⌒::＼   (⌒)          だろっ？
;;                |         -       |   ﾉ ~.ﾚ-r┐､
;;                ＼               ／  ノ_  |.| |
;;.         ,  ⌒ ´  ＼     ￣   ´ !〈￣  ｀-Lλ_ﾚﾚ
;;        /    __       ヽ        |  ￣｀ー‐-‐‐´
;;.      〃 ,. --ミ        ヽ     i    |/ハ  ／
;;      ji／    ￣｀          ヽ  |
")

;; load
(load "init-general")
;(load "init-xemacs")
(load "init-color")
;(load "init-ess") ; eamcs speaks statistics
;(load "init-skk")
(load "init-sdic")
(load "init-gitit") ; (markdown, git)
(load "init-yatex")
(load "init-template")

;; programming
(load "init-haskell")
(load "init-python")
(load "init-ruby")
(load "init-c++")
(load "init-cs")
(load "init-prolog")
(load "init-golang")

;(load "init-w3m")
(load "init-switch")
;(load "poj-mode")
;(setq poj-usrid "smly")
