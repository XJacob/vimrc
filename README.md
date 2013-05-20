Install
=====
1. git clone https://github.com:XJacob/vimrc.git ~/.vim/
2. ln -s ~/.vim/.vimrc ~/.vimrc
3. git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
4. vim
5. In Vim, run :BundleInstall


Plug
=====
1. Bundle 'Lokaltog/vim-easymotion'
	EasyMotion
   ```
   shortkey: ,,w
   ```
3. Bundle 'scrooloose/nerdtree'

   ```
   shortkey: <F4>
   update tree:  In the tree list, press 'r'
   ```

3. Bundle 'vim-scripts/MultipleSearch'

   Keep highlight the previous searching result
   ```
   shortkey: MultiSearch ,ss
             Clear Search result  ,sc
   ```

4. Bundle 'vim-scripts/genutils'

5. Bundle 'Soares/butane.vim'

   Manger the opened buffer
   ```
   shortkey: Close currently buffer  ,bd  
             Close buffer and discard changes  :Bclose!

6. Bundle 'scrooloose/nerdcommenter'

   Comment a region quickly
   ```
   shortkey: select the region and type ,cs 
             undo the comment           ,cu

7. Bundle 'msanders/snipmate.vim'

8. Bundle 'Shougo/neocomplcache'

9. Bundle 'motemen/git-vim'

10. Bundle 'naseer/logcat'

11. Bundle 'L9'

12. Bundle 'FuzzyFinder'
    ```
	shortkey: ,ff
	         update cache: FufRenewCache
    ```

13. Bundle 'bufexplorer.zip'

14. Bundle 'minibufexpl.vim'

    list the opened buffer in the right side

15. Bundle 'mru.vim'
    ```
	shortkey:   :MRU
    ```

16. Bundle 'taglist.vim'

    ```
	shortkey: <F9>
    ```

17. Bundle 'lookupfile'

18. Bundle 'vimwiki'

19. Bundle 'autoload_cscope.vim'

20. Bundle 'tomasr/molokai'

    The theme and font

21. Bundle 'maxbrunsfeld/vim-yankstack'

	Ringing select the buffer to paste
    ```
	shortkey: ,p
    ```

22. Bundle 'Mark'

    Highlight the word under cursor
    ```
	shortkey: Moving the cursor to the target and press ,m
	          If the targer is already highlighted, then cancel it
    ```



