import 'styles/admin'

import '../js/base'
import 'admin-lte'
import '../js/admin/sidebar'
import Clipboard from 'clipboard'

import Editor from 'tui-editor/dist/tui-editor-Editor-all';
import "tui-editor/dist/tui-editor-extUML.js";
import 'codemirror/lib/codemirror.css';
import 'tui-editor/dist/tui-editor.css';
import 'tui-editor/dist/tui-editor-contents.css';
import 'highlight.js/styles/github.css';

window.Editor = Editor;

const listenCopyLink = function() {
   new Clipboard('.btn-copy-link').on('success', () => {
      alert('复制成功');
   });
   new Clipboard('.image-item').on('success', () => {
      alert('复制成功');
   });
}

window.admin = {
   publish_down: function(id) {

   },
   publish_up: function(id) {

   },
   listenCopyLink: listenCopyLink,
};