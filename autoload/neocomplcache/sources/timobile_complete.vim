function! neocomplcache#sources#timobile_complete#define()"{{{
        return s:source
endfunction"}}}

let s:source = {
  \ 'name' : 'timobile_complete',
  \ 'kind' : 'ftplugin',
  \ 'filetypes' : { 'test': 1, 'coffee': 1  }
  \ } "DON'T FOLDING! it will occure an error.

function! s:source.initialize()"{{{
  let s:keywords = []
  let s:objects = {
 \  'Window': { 
 \    'member': { 'open' : 'f', 
 \                'add' : 'f' , 
 \                'addEventListener' : 'f' , 
 \                'fireEvent' : 'f' , 
 \                'removeEventListener' : 'f' , 
 \                'title' : 'v' , 
 \                'height' : 'v' , 
 \                'width' : 'v',
 \                'fullscreen' : 'v' , 
 \                'orientationModes' : 'v' , 
 \                'tabBarHidden' : 'v'
 \    },
 \    'create': 'createWindow',
 \  },
 \  'tabGroup': {
 \    'member': { 'addTab' : 'f', 
 \                'open' : 'f' , 
 \                'removeTab' : 'f' , 
 \                'addEventListener' : 'f' , 
 \                'fireEvent' : 'f' , 
 \                'removeEventListener' : 'f' , 
 \                'activeTab' : 'v' ,
 \                'tabs' : 'v'
 \    },
 \    'create': 'createTabGroup',
 \  },
 \  'View': {
 \    'member': { 'add' : 'f', 
 \                'addEventListener' : 'f' , 
 \                'fireEvent' : 'f' , 
 \                'removeEventListener' : 'f' , 
 \                'remove' : 'f' , 
 \                'hide' : 'f' , 
 \                'show' : 'f' , 
 \                'title' : 'v' ,
 \                'backgroundColor' : 'v' , 
 \                'borderColor' : 'v' , 
 \                'borderWidth' : 'v' , 
 \                'borderRadius' : 'v' , 
 \                'top' : 'v' , 
 \                'bottom' : 'v' , 
 \                'left' : 'v' , 
 \                'right' : 'v' , 
 \                'zIndex' : 'v' , 
 \                'opacity' : 'v' , 
 \                'transform' : 'v' , 
 \                'height' : 'v' , 
 \                'width' : 'v'
 \    },
 \    'create': 'createView',
 \  },
 \  'TableView': {
 \    'member': { 'add' : 'f', 
 \                'addEventListener' : 'f' , 
 \                'fireEvent' : 'f' , 
 \                'removeEventListener' : 'f' , 
 \                'remove' : 'f' , 
 \                'hide' : 'f' , 
 \                'show' : 'f' , 
 \                'title' : 'v' ,
 \                'backgroundColor' : 'v' , 
 \                'borderColor' : 'v' , 
 \                'borderWidth' : 'v' , 
 \                'borderRadius' : 'v' , 
 \                'top' : 'v' , 
 \                'bottom' : 'v' , 
 \                'left' : 'v' , 
 \                'right' : 'v' , 
 \                'zIndex' : 'v' , 
 \                'opacity' : 'v' , 
 \                'transform' : 'v' , 
 \                'height' : 'v' , 
 \                'width' : 'v',
 \                'appendRow' : 'f',
 \                'deleteRow' : 'f',
 \                'selectRow' : 'f',
 \                'updateRow' : 'f',
 \                'setData' : 'f',
 \                'data' : 'v',
 \                'headerTitle' : 'v',
 \                'footerTitle' : 'v',
 \                'rowHeight' : 'v',
 \                'separatorColor' : 'v'
 \    },
 \    'create': 'createTableView',
 \  },
 \  'WebView': {
 \    'member': { 'add' : 'f',
 \                'addEventListener' : 'f' , 
 \                'fireEvent' : 'f' , 
 \                'removeEventListener' : 'f' , 
 \                'remove' : 'f' ,
 \                'hide' : 'f' ,
 \                'show' : 'f' , 
 \                'title' : 'v' ,
 \                'backgroundColor' : 'v' , 
 \                'borderColor' : 'v' , 
 \                'borderWidth' : 'v' , 
 \                'borderRadius' : 'v' , 
 \                'top' : 'v' , 
 \                'bottom' : 'v' , 
 \                'left' : 'v' , 
 \                'right' : 'v' , 
 \                'zIndex' : 'v' , 
 \                'opacity' : 'v' , 
 \                'transform' : 'v' , 
 \                'height' : 'v' , 
 \                'width' : 'v',
 \                'canGoBack' : 'f',
 \                'canGoForward' : 'f',
 \                'evalJS' : 'f',
 \                'goBack' : 'f',
 \                'goForward' : 'f',
 \                'reload' : 'f',
 \                'data' : 'v',
 \                'html' : 'v',
 \                'url' : 'v'
 \    },
 \    'create': 'createWebView',
 \  },
 \  'Button': {
 \    'create': 'createButton',
 \    'member': { 'add' : 'f',
 \                'addEventListener' : 'f' , 
 \                'fireEvent' : 'f' , 
 \                'removeEventListener' : 'f' , 
 \                'remove' : 'f' ,
 \                'hide' : 'f' ,
 \                'show' : 'f' , 
 \                'title' : 'v' ,
 \                'backgroundColor' : 'v' , 
 \                'borderColor' : 'v' , 
 \                'borderWidth' : 'v' , 
 \                'borderRadius' : 'v' , 
 \                'top' : 'v' , 
 \                'bottom' : 'v' , 
 \                'left' : 'v' , 
 \                'right' : 'v' , 
 \                'zIndex' : 'v' , 
 \                'opacity' : 'v' , 
 \                'transform' : 'v' , 
 \                'height' : 'v' , 
 \                'width' : 'v',
 \                'color' : 'v',
 \                'selectedColor' : 'v'
 \    },
 \  },
 \  'Label': {
 \    'create': 'createLabel',
 \    'member': { 'add' : 'f',
 \                'addEventListener' : 'f' , 
 \                'fireEvent' : 'f' , 
 \                'removeEventListener' : 'f' , 
 \                'remove' : 'f' ,
 \                'hide' : 'f' ,
 \                'show' : 'f' , 
 \                'title' : 'v' ,
 \                'backgroundColor' : 'v' , 
 \                'borderColor' : 'v' , 
 \                'borderWidth' : 'v' , 
 \                'borderRadius' : 'v' , 
 \                'top' : 'v' , 
 \                'bottom' : 'v' , 
 \                'left' : 'v' , 
 \                'right' : 'v' , 
 \                'zIndex' : 'v' , 
 \                'opacity' : 'v' , 
 \                'transform' : 'v' , 
 \                'height' : 'v' , 
 \                'width' : 'v',
 \                'text' : 'v',
 \                'textAlign' : 'v'
 \    },
 \  },
 \  'TextField': {
 \    'create': 'createTextField',
 \    'member': { 'add' : 'f',
 \                'addEventListener' : 'f' , 
 \                'fireEvent' : 'f' , 
 \                'removeEventListener' : 'f' , 
 \                'remove' : 'f' ,
 \                'hide' : 'f' ,
 \                'show' : 'f' , 
 \                'title' : 'v' ,
 \                'backgroundColor' : 'v' , 
 \                'borderColor' : 'v' , 
 \                'borderWidth' : 'v' , 
 \                'borderRadius' : 'v' , 
 \                'top' : 'v' , 
 \                'bottom' : 'v' , 
 \                'left' : 'v' , 
 \                'right' : 'v' , 
 \                'zIndex' : 'v' , 
 \                'opacity' : 'v' , 
 \                'transform' : 'v' , 
 \                'height' : 'v' , 
 \                'width' : 'v',
 \                'blur' : 'f',
 \                'focus' : 'f',
 \                'autocorrect' : 'v',
 \                'autocapitalization' : 'v',
 \                'borderStyle' : 'v',
 \                'editable' : 'v',
 \                'hintText' : 'v',
 \                'keybordType' : 'v',
 \                'passwordMask' : 'v',
 \                'value' : 'v'
 \    },
 \  },
 \}
" \  'Tab': {
" \    'member': { 'badge' : 'v', 
" \                'addEventListener' : 'f' , 
" \                'fireEvent' : 'f' , 
" \                'removeEventListener' : 'f' , 
" \                'icon' : 'v' ,
" \                'title' : 'v' ,
" \                'window' : 'v'
" \    },
" \    'create': 'createTab',
" \  },
" \  'TableViewRow': {
" \    'create': 'createTableViewRow',
" \    'member': { 'title' : 'v', 
" \                'Color' : 'v',
" \                'selectedColor' : 'v',
" \                'hasChild' : 'v',
" \                'hasDetail' : 'v',
" \                'hasCheck' : 'v'
" \                'addEventListener' : 'f' , 
" \                'fireEvent' : 'f' , 
" \                'removeEventListener' : 'f' , 
" \    },
" \  },
  let s:variables = {}
  let s:line = 0
  let s:temp_objects = {}
endfunction"}}}

function! s:source.finalize()"{{{
  unlet s:objects
  unlet s:temp_objects
  unlet s:keywords
  unlet s:line
  unlet s:variables
endfunction"}}}

function! timobile_complete#initialize()"{{{
  call s:source.finalize()
  call s:source.initialize()
endfunction"}}}

function! s:source.get_keyword_pos(cur_text)"{{{
  if neocomplcache#within_comment()
    return -1
  endif
  if line(".") != s:line
    let s:line = line(".")
    "call timobile_complete#get_all_variables()
    call timobile_complete#find_require_line(s:line)
    call timobile_complete#get_variables(s:line)
  endif
  for word1 in keys(s:variables)
    if a:cur_text =~ word1
      for word in keys(s:objects[s:variables[word1]['type']]['member'])
        call add(s:keywords, { 'word' : word1.".".word, 'menu': '[timobile]', 
         \ 'kind' : s:objects[s:variables[word1]['type']]['member'][word]})
      endfor
      return match(a:cur_text, word1.".")
      break
    endif
  endfor
endfunction"}}}

function! s:source.get_complete_words(cur_keyword_pos, cur_keyword_str)"{{{
  return neocomplcache#keyword_filter(copy(s:keywords), a:cur_keyword_str)
endfunction"}}}

function! timobile_complete#get_variables(line)"{{{
  let temp_line = substitute(a:line, '\s', '', 'g')
  echo temp_line
  if temp_line =~ "=" && temp_line =~ "\\."
    let list = matchlist(temp_line, '\(\w*\)\(=\)\(\w*\)\(\.\)\(\w*\)\(\.\)\(\w*\)')
    for k in keys(s:objects)
      if (len(list) > 0 ) && (list[7] =~ s:objects[k]['create'])
        if !has_key(s:variables, list[1])
          let s:variables[list[1]] = { 'type': k }
        endif
      endif
    endfor
  endif
  if temp_line =~ '=' && temp_line=~ 'new'
    let list = matchlist(temp_line, '\(\w*\)\(=\)new\(\w*\)')
    echo list
    echo list[1]
    echo list[3]
    for k in keys(s:temp_objects)
      echo k
      if (len(list) > 0) && (k =~ list[3])
        if !has_key(s:variables, list[1])
          let s:variables[list[1]] = { 'type': k }
        endif  
      endif  
    endfor
  endif
endfunction"}}}

function! timobile_complete#get_all_variables()"{{{
  let s:variables = {}
  let lines = getline(0, line("$"))
  for line in lines
    call timobile_complete#get_variables(line)
    "call timobile_complete#find_require_line(line)
  endfor
endfunction"}}}

function! timobile_complete#show_all_variables()"{{{
  for i in keys(s:variables)
    echo ' key: ' . i . ', type: ' . s:variables[i]['type']
  endfor
endfunction"}}}

function! timobile_complete#show_all_objects()"{{{
  for i in keys(s:objects)
    echo ' key: ' . i 
  endfor
endfunction"}}}

function! timobile_complete#show_temp_objects()"{{{
  echo s:temp_objects
endfunction"}}}

function! timobile_complete#test()"{{{
  let line =  getline(".")
  echo line
  call timobile_complete#find_require_line(line)
endfunction"}}}

function! timobile_complete#add_temp_object(class, member, kind)"{{{
  "echo "class:" . a:class . ", member:" . a:member . ", kind:" . a:kind
  if has_key(s:temp_objects, a:class)
    "echo "has class"
    if has_key(s:temp_objects[a:class]["member"], a:member)
      "echo "has member"
    else
      let s:temp_objects[a:class]["member"][a:member] = a:kind
    endif
  else
    if empty(a:member) || empty(a:kind)
      let s:temp_objects[a:class] = {'member':{}, 'create':'new'}
    else
      let s:temp_objects[a:class] = {'member':{}, 'create':'new'}
      let s:temp_objects[a:class]["member"][a:member] = a:kind
    endif
  endif
endfunction"}}}

function! timobile_complete#show_all_temp_objects()"{{{
  for i in keys(s:temp_objects)
    echo 'key:' . i
  endfor
endfunction"}}}

function! timobile_complete#find_require_line(line)"{{{
  let aft0 = substitute(a:line, " ", "", "g")
  echo "aft0:" . aft0
  let aft1 = substitute(aft0, "'", "\"", "g")
  echo "aft1:" . aft1
  if aft1 =~ "require"
    echo "found require"
    let list = matchlist(aft1, '\(\w*\)=\w*("\(\w*\)"')
    echo list[2]
    call timobile_complete#glob_require_file(list[2])
  endif
endfunction"}}}

function! timobile_complete#glob_require_file(filename)"{{{
  let base = "./" . a:filename . ".coffee"
  echo base
  let filelist = glob(base)
  let splitted = split(filelist)
  for file in splitted
    echo file
    if filereadable(file)
      echo "readable!"
      for line in readfile(file)
        echo line
        let res = timobile_complete#find_member_line(line)
        echo res
        if !empty(res)
          echo 'res[0]:' . res[0] . ', res[1]:' . res[1]
          call timobile_complete#add_temp_object(a:filename, res[0], res[1])
        endif
      endfor
    endif
  endfor
endfunction"}}}

function! timobile_complete#find_member_line(line)"{{{
  let res = []
  let aft0 = substitute(a:line, " ", "", "g")
  "echo "aft0:" . aft0
  if aft0 =~ "->" || aft0 =~ "=>"
    let list = matchlist(aft0, '\w*\.\(\w*\)=\.*')
    "echo list[1]
    let res = [list[1],'f']
  elseif aft0 =~ "=" && aft0 =~ "self\."
    echo "found coffee property"
    let list = matchlist(aft0, '\w*\.\(\w*\)=\.*')
    echo list[1]
    let res = [list[1],'v']
  endif
  return res
endfunction"}}}
