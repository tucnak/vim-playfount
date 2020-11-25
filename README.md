vim-playfount - a vim plugin for Playfount dialect of Fountain language
============================================================

Based on a bundlified version of Carson Fire's [*vim-fountain*](http://www.vim.org/scripts/script.php?script_id=3880) script.

Unfortunately, the original script was horribly inefficient and for Playfount we had to redefine quite a bit of stuff, as well as add support for Russian, German (WIP) and French (WIP) scripts. Vim is notoriously obnoxious when it comes to cyrillics and I'm stilling getting the hang of it, I'm sure the current implementation of this plugin can be further improved.

Playfount is in most ways similar to Fountain but a bit different.

1. Parentheticals in dialogue must stay on the same line as character name.
2. Shorthand markdown is used, `*bold*` and `_italic_`, there is no underline.
3. Lines starting with `%` and `%%` indicate title and properties.

Example
--------------------

This is how you write Playfount fountain:

```fountain
% A NIGHT OF OWL

%%	Written by: John E. Owlman
%% 	Draft date: 21 Nov 2020
%%	Contact:	john@owlman.co

	EDWARD (whispering)
Turn off your flashlights! She'll see 'em.

MOVING UP behind the kids, we find ourselves at the gates of...

EXT. A CREEPY OLD HOUSE - EVENING

	ADULT EDWARD (V.O.)
Now, it's common knowledge that most towns of a certain size have a witch, if only to eat misbehaving children and the occasional puppy who wanders into her yard. Witches use those bones to cast spells and curses that make the land infertile.

[[Then goes the transition...]]

CUT TO:
INT. CAFE 99 – NIGHT

Suddently, a bomb goes off. BOOM, like that.

	PEOPLE (be like)
Screaming!

Anyway.
```

Happy screenwriting!

Installation
--------------------

If you're using vim-plug, add

```
Plug 'tucnak/vim-playfount'
```

to your `.vimrc` file.

Original description
--------------------

Fountain is a plain text markup language for screenwriting.

Previously SPMD (screenplay markdown), Fountain is very official, now, and getting to be something of a Big Deal, as it merges two similar screenwriting projects into one. The format can be converted into Final Draft files (FDX) and HTML, and can be imported by Final Draft and Movie Magic. Scrippets (less powerful conversion) is available for WordPress, BBEdit, and other web standards.

http://fountain.io/

Fountain is much like SPMD, with some important changes. Atx headers are now supported in order to create sections, and this makes Fountain compatible with the Voom outliner (vimscript #2657) in Markdown mode.

Commenting has been changed; and an important feature called Boneyard is introduced, allowing for flexible striking of deleted material.

Known issues in the current version: text emphasis only renders in 'normal' text (action, not dialogue), and adding eol double-spaces does not have the intended corrective effect (this should be fixed in an update).

The official Fountain site contains a great deal of helpful material, including sample scripts and apps. In brief, Fountain allows you to type a screenplay in plain text. Here is an excerpt from Big Fish by John August, one of the screenwriters behind Fountain, and note that the text can be flush or tabbed as desired.

License
--------------------

MIT

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
