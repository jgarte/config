;; C++ style
(add-hook 'c++-mode-hook
          '(lambda()
             (c-set-style "stroustrup")
             (setq indent-tabs-mode nil)     ; ����ǥ�Ȥ϶���ʸ���ǹԤ���TAB�����ɤ������Ѵ���
             (c-set-offset 'innamespace 0)   ; namespace {}����ϥ���ǥ�Ȥ��ʤ�
             (c-set-offset 'arglist-close 0) ; ����������Ĥ���̤ϥ���ǥ�Ȥ��ʤ�
             (c-set-offset 'arglist-close 0) ; �ؿ��ΰ����ꥹ�Ȥ��Ĥ���̤ϥ���ǥ�Ȥ��ʤ�
             ))

; flymake
(defun flymake-cc-init ()
  (let* ((temp-file   (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
         (local-file  (file-relative-name
                       temp-file
                       (file-name-directory buffer-file-name))))
    (list "g++" (list "-Wall" "-Wextra" "-fsyntax-only" local-file))))

(push '("\\.cpp$" flymake-cc-init) flymake-allowed-file-name-masks)

(add-hook 'c++-mode-hook
  '(lambda ()
      (flymake-mode t)))
