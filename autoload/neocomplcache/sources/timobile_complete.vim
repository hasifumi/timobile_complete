function! neocomplcache#sources#timobile_complete#define()
        return s:source
endfunction

let s:source = {
  \ 'name' : 'timobile_complete',
  \ 'kind' : 'ftplugin',
  \ 'filetypes' : { 'test': 1, 'coffee': 1  }
  \ }

function! s:source.initialize()
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
endfunction

function! s:source.finalize()
endfunction

function! s:source.get_keyword_pos(cur_text)
  if neocomplcache#within_comment()
    return -1
  endif
  if line(".") != s:line
    let s:line = line(".")
    call timobile_complete#get_all_variables()
  endif
  for word1 in keys(s:variables)
    if a:cur_text =~ word1
      for word in keys(s:objects[s:variables[word1]['type']]['member'])
        call add(s:keywords, { 'word' : word1.".".word, 'menu': '[timobile]', 
         \ 'kind' : s:objects[s:variables[word1]['type']]['member'][word]})
      endfor
      "echo 'word1. :' . word1."."
      return match(a:cur_text, word1.".")
      break
    endif
  endfor
endfunction

function! s:source.get_complete_words(cur_keyword_pos, cur_keyword_str)
  return neocomplcache#keyword_filter(copy(s:keywords), a:cur_keyword_str)
endfunction

function! timobile_complete#get_variables(line)
  let temp_line = substitute(a:line, '\s', '', 'g')
  "echo temp_line
  if temp_line =~ "=" && temp_line =~ "\\."
  "if match(temp_line, "\w*=\w*\\.\w*")
    "let list = matchlist(temp_litemp_linene, '\(\w*\)\(=\)\(\w*\)')
    "let list = matchlist(temp_line, '\(\w*\)\(=\)\(\w*\)\(\.\)\(\w*\)')
    let list = matchlist(temp_line, '\(\w*\)\(=\)\(\w*\)\(\.\)\(\w*\)\(\.\)\(\w*\)')
    "echo 'list[5]:' . list[5] . ', list[4]:' . list[4] . ', list[3]:' . list[3]
    "echo 'list[7]:' . list[7] . ', list[6]:' . list[6] . ', list[5]:' . list[5]. ', list[4]:' . list[4] . ', list[3]:' . list[3]
    for k in keys(s:objects)
      "if (len(list) > 0 ) && (list[3] =~ s:objects[k]['create'])
      "if (len(list) > 0 ) && (list[5] =~ s:objects[k]['create'])
      if (len(list) > 0 ) && (list[7] =~ s:objects[k]['create'])
        if !has_key(s:variables, list[1])
          let s:variables[list[1]] = { 'type': k }
        endif
      endif
    endfor
  endif
endfunction

function! timobile_complete#get_all_variables()
  let s:variables = {}
  let lines = getline(0, line("$"))
  for line in lines
    call timobile_complete#get_variables(line)
  endfor
endfunction

function! timobile_complete#show_all_variables()
  for i in keys(s:variables)
    echo ' key: ' . i . ', type: ' . s:variables[i]['type']
  endfor
endfunction

function! timobile_complete#show_all_objects()
  for i in keys(s:objects)
    echo ' key: ' . i 
  endfor
endfunction

function! timobile_complete#test()
  let str = 'cc=gaicre'
  if str =~ "\."
    echo 'OK'
  else
    echo 'NG'
  endif
endfunction

"function! timobile_complete#get_space_col(str)
"  let s_pos = len(a:str) - 1
"  while s_pos >= 0
"    if strpart(a:str, s_pos, 1) =~ ' '
"      break
"    endif
"    let s_pos -= 1
"  endwhile
"  return s_pos
"endfunction
