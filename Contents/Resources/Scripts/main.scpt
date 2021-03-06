FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �� Copyright (C) 2007-2020 Kurita Tetsuro

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Foobar is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Foobar.  If not, see <http://www.gnu.org/licenses/>      � 	 	    C o p y r i g h t   ( C )   2 0 0 7 - 2 0 2 0   K u r i t a   T e t s u r o 
 
 T h i s   p r o g r a m   i s   f r e e   s o f t w a r e :   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y 
 i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y 
 t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   e i t h e r   v e r s i o n   3   o f   t h e   L i c e n s e ,   o r 
 ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n . 
 
 F o o b a r   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l , 
 b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f 
 M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e 
 G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 
 
 Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e 
 a l o n g   w i t h   F o o b a r .     I f   n o t ,   s e e   < h t t p : / / w w w . g n u . o r g / l i c e n s e s / >     
  
 l     ��������  ��  ��        j     �� 
�� 
pnam  m        �    X A c c e s s o r      l     ��������  ��  ��        l      ��  ��   ��!@references
Home page || http://www.script-factory.net/XModules/XAccessor/en/index.html
ChangeLog || http://www.script-factory.net/XModules/XAccessor/changelog.html
Repository || https://github.com/tkurita/XAccessor.scptd

@title XAccessor Reference 
* Version : 1.2.1* Author : Kurita Tetsuro ((<scriptfactory@mac.com>))
* Requirements : OS X 10.9 or later
* ((<Home page>)) || ((<ChangeLog>)) || ((<Repository>)) 

XAccessor is an AppleScript library to make followings possible.
* get/set a value from a record by specifying the label name with text.
* get/set a value of a property from a script object by specifying the property name with text.
* get/set a value of a global variable by specifying the name with text.

== Example
@example
use XAccessor : script "XAccessor"set a_record to {a:"aa"}script AScript	property a : "aa"	global b	on get_b()		return b	end get_bend script(*== Using Class Methods ==*)(* access to property *)log XAccessor's value_of(AScript, "a") -- "aa"XAccessor's set_value(AScript, "a", "hello")(* access to global variable *)XAccessor's set_global("b", "hey")log XAccessor's global_value("b") -- "hey"(*== Using XAccessor Instance ==*)(* access to property *)set a_accessor to XAccessor's make_with("a")log a_accessor's value_of(AScript) -- "hello"log a_accessor's value_of(a_record) -- "aa"(* access to global variable *)set b_accessor to XAccessor's make_with("b")log b_accessor's global_value() -- "hey"]
@end

== Description
The mechanism of XAccessor is making script objects to access properties at runtime
using &quote;run script&quote; command.
Class methods always generate an accessor object each time when called. 
The cost of generating an accessor object is expensive. 
The number of generating accessor objects should be keep minimum.
Therefor it should be considered that storing accessor objects returned from make_with(a_name) into variables,
and reuse it.
     �  . ! @ r e f e r e n c e s 
 H o m e   p a g e   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X A c c e s s o r / e n / i n d e x . h t m l 
 C h a n g e L o g   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X A c c e s s o r / c h a n g e l o g . h t m l 
 R e p o s i t o r y   | |   h t t p s : / / g i t h u b . c o m / t k u r i t a / X A c c e s s o r . s c p t d 
 
 @ t i t l e   X A c c e s s o r   R e f e r e n c e   
 *   V e r s i o n   :   1 . 2 . 1  *   A u t h o r   :   K u r i t a   T e t s u r o   ( ( < s c r i p t f a c t o r y @ m a c . c o m > ) ) 
 *   R e q u i r e m e n t s   :   O S   X   1 0 . 9   o r   l a t e r 
 *   ( ( < H o m e   p a g e > ) )   | |   ( ( < C h a n g e L o g > ) )   | |   ( ( < R e p o s i t o r y > ) )   
  
 X A c c e s s o r   i s   a n   A p p l e S c r i p t   l i b r a r y   t o   m a k e   f o l l o w i n g s   p o s s i b l e . 
 *   g e t / s e t   a   v a l u e   f r o m   a   r e c o r d   b y   s p e c i f y i n g   t h e   l a b e l   n a m e   w i t h   t e x t . 
 *   g e t / s e t   a   v a l u e   o f   a   p r o p e r t y   f r o m   a   s c r i p t   o b j e c t   b y   s p e c i f y i n g   t h e   p r o p e r t y   n a m e   w i t h   t e x t . 
 *   g e t / s e t   a   v a l u e   o f   a   g l o b a l   v a r i a b l e   b y   s p e c i f y i n g   t h e   n a m e   w i t h   t e x t . 
 
 = =   E x a m p l e 
 @ e x a m p l e 
 u s e   X A c c e s s o r   :   s c r i p t   " X A c c e s s o r "   s e t   a _ r e c o r d   t o   { a : " a a " }   s c r i p t   A S c r i p t  	 p r o p e r t y   a   :   " a a "  	 g l o b a l   b  	 o n   g e t _ b ( )  	 	 r e t u r n   b  	 e n d   g e t _ b  e n d   s c r i p t   ( * = =   U s i n g   C l a s s   M e t h o d s   = = * )  ( *   a c c e s s   t o   p r o p e r t y   * )  l o g   X A c c e s s o r ' s   v a l u e _ o f ( A S c r i p t ,   " a " )   - -   " a a "  X A c c e s s o r ' s   s e t _ v a l u e ( A S c r i p t ,   " a " ,   " h e l l o " )   ( *   a c c e s s   t o   g l o b a l   v a r i a b l e   * )  X A c c e s s o r ' s   s e t _ g l o b a l ( " b " ,   " h e y " )  l o g   X A c c e s s o r ' s   g l o b a l _ v a l u e ( " b " )   - -   " h e y "    ( * = =   U s i n g   X A c c e s s o r   I n s t a n c e   = = * )  ( *   a c c e s s   t o   p r o p e r t y   * )  s e t   a _ a c c e s s o r   t o   X A c c e s s o r ' s   m a k e _ w i t h ( " a " )  l o g   a _ a c c e s s o r ' s   v a l u e _ o f ( A S c r i p t )   - -   " h e l l o "  l o g   a _ a c c e s s o r ' s   v a l u e _ o f ( a _ r e c o r d )   - -   " a a "   ( *   a c c e s s   t o   g l o b a l   v a r i a b l e   * )  s e t   b _ a c c e s s o r   t o   X A c c e s s o r ' s   m a k e _ w i t h ( " b " )  l o g   b _ a c c e s s o r ' s   g l o b a l _ v a l u e ( )   - -   " h e y " ] 
 @ e n d 
 
 = =   D e s c r i p t i o n 
  T h e   m e c h a n i s m   o f   X A c c e s s o r   i s   m a k i n g   s c r i p t   o b j e c t s   t o   a c c e s s   p r o p e r t i e s   a t   r u n t i m e 
 u s i n g   & q u o t e ; r u n   s c r i p t & q u o t e ;   c o m m a n d . 
  C l a s s   m e t h o d s   a l w a y s   g e n e r a t e   a n   a c c e s s o r   o b j e c t   e a c h   t i m e   w h e n   c a l l e d .   
 T h e   c o s t   o f   g e n e r a t i n g   a n   a c c e s s o r   o b j e c t   i s   e x p e n s i v e .   
 T h e   n u m b e r   o f   g e n e r a t i n g   a c c e s s o r   o b j e c t s   s h o u l d   b e   k e e p   m i n i m u m . 
 T h e r e f o r   i t   s h o u l d   b e   c o n s i d e r e d   t h a t   s t o r i n g   a c c e s s o r   o b j e c t s   r e t u r n e d   f r o m   m a k e _ w i t h ( a _ n a m e )   i n t o   v a r i a b l e s , 
 a n d   r e u s e   i t .  
      l     ��������  ��  ��        l      ��  ��     !@group Class Methods      �   , ! @ g r o u p   C l a s s   M e t h o d s         l     ��������  ��  ��      ! " ! l      �� # $��   # � �!@abstruct
Obtain a value in a record or a property of a script object with specify its label of a text.
@param a_label (text): name of the label
@param an_object (record or script object) : a record or a script object to access
@result anything
    $ � % %� ! @ a b s t r u c t 
 O b t a i n   a   v a l u e   i n   a   r e c o r d   o r   a   p r o p e r t y   o f   a   s c r i p t   o b j e c t   w i t h   s p e c i f y   i t s   l a b e l   o f   a   t e x t . 
 @ p a r a m   a _ l a b e l   ( t e x t ) :   n a m e   o f   t h e   l a b e l 
 @ p a r a m   a n _ o b j e c t   ( r e c o r d   o r   s c r i p t   o b j e c t )   :   a   r e c o r d   o r   a   s c r i p t   o b j e c t   t o   a c c e s s 
 @ r e s u l t   a n y t h i n g 
 "  & ' & i     ( ) ( I      �� *���� 0 value_of   *  + , + o      ���� 0 	an_object   ,  -�� - o      ���� 0 a_label  ��  ��   ) L      . . n     / 0 / I    �� 1���� 0 value_of   1  2�� 2 o    ���� 0 	an_object  ��  ��   0 l     3���� 3 I     �� 4���� 0 	make_with   4  5�� 5 o    ���� 0 a_label  ��  ��  ��  ��   '  6 7 6 l     ��������  ��  ��   7  8 9 8 l      �� : ;��   :d^!@abstruct
Set a value in a record or a property of a script object with specifying its label of a text.
@description
if an_object does not have a_label, a_label is added into a_object when an_object is a record.
When an_object is a script object, passing nonexistent label cause an error.

If new label is added into an_object, returned value is not same instance to an_object.
@param a_label (text): name of the label
@param a_value (anything) : a value to set
@param an_object (record or script object) : a record or a script object to access
@result record or script object : usually same to an_object
    ; � < <� ! @ a b s t r u c t 
 S e t   a   v a l u e   i n   a   r e c o r d   o r   a   p r o p e r t y   o f   a   s c r i p t   o b j e c t   w i t h   s p e c i f y i n g   i t s   l a b e l   o f   a   t e x t . 
 @ d e s c r i p t i o n 
 i f   a n _ o b j e c t   d o e s   n o t   h a v e   a _ l a b e l ,   a _ l a b e l   i s   a d d e d   i n t o   a _ o b j e c t   w h e n   a n _ o b j e c t   i s   a   r e c o r d . 
 W h e n   a n _ o b j e c t   i s   a   s c r i p t   o b j e c t ,   p a s s i n g   n o n e x i s t e n t   l a b e l   c a u s e   a n   e r r o r . 
 
 I f   n e w   l a b e l   i s   a d d e d   i n t o   a n _ o b j e c t ,   r e t u r n e d   v a l u e   i s   n o t   s a m e   i n s t a n c e   t o   a n _ o b j e c t . 
 @ p a r a m   a _ l a b e l   ( t e x t ) :   n a m e   o f   t h e   l a b e l 
 @ p a r a m   a _ v a l u e   ( a n y t h i n g )   :   a   v a l u e   t o   s e t 
 @ p a r a m   a n _ o b j e c t   ( r e c o r d   o r   s c r i p t   o b j e c t )   :   a   r e c o r d   o r   a   s c r i p t   o b j e c t   t o   a c c e s s 
 @ r e s u l t   r e c o r d   o r   s c r i p t   o b j e c t   :   u s u a l l y   s a m e   t o   a n _ o b j e c t 
 9  = > = i    
 ? @ ? I      �� A���� 0 	set_value   A  B C B o      ���� 0 	an_object   C  D E D o      ���� 0 a_label   E  F�� F o      ���� 0 a_value  ��  ��   @ n     G H G I    �� I���� 0 	set_value   I  J K J o    ���� 0 	an_object   K  L�� L o    ���� 0 a_value  ��  ��   H I     �� M���� 0 	make_with   M  N�� N o    ���� 0 a_label  ��  ��   >  O P O l     ��������  ��  ��   P  Q R Q l      �� S T��   S � �!@abstruct
Obtain a value of a global variable specified with a name.
@param a_name (text): name of a global variable
@result anything
    T � U U ! @ a b s t r u c t 
 O b t a i n   a   v a l u e   o f   a   g l o b a l   v a r i a b l e   s p e c i f i e d   w i t h   a   n a m e . 
  @ p a r a m   a _ n a m e   ( t e x t ) :   n a m e   o f   a   g l o b a l   v a r i a b l e 
 @ r e s u l t   a n y t h i n g 
 R  V W V i     X Y X I      �� Z���� 0 global_value   Z  [�� [ o      ���� 
0 a_name  ��  ��   Y L      \ \ n    
 ] ^ ] I    
�������� 0 global_value  ��  ��   ^ I     �� _���� 0 	make_with   _  `�� ` o    ���� 
0 a_name  ��  ��   W  a b a l     ��������  ��  ��   b  c d c l      �� e f��   e � �!@abstructset a value to a global variable specified with a name.@param a_name (text): name of a global variable@param a_value (anything) : value to set to the global variable    f � g gh ! @ a b s t r u c t  s e t   a   v a l u e   t o   a   g l o b a l   v a r i a b l e   s p e c i f i e d   w i t h   a   n a m e .   @ p a r a m   a _ n a m e   ( t e x t ) :   n a m e   o f   a   g l o b a l   v a r i a b l e  @ p a r a m   a _ v a l u e   ( a n y t h i n g )   :   v a l u e   t o   s e t   t o   t h e   g l o b a l   v a r i a b l e  d  h i h i     j k j I      �� l���� 0 
set_global   l  m n m o      ���� 
0 a_name   n  o�� o o      ���� 0 a_value  ��  ��   k n     p q p I    �� r���� 0 
set_global   r  s�� s o    ���� 0 a_value  ��  ��   q I     �� t���� 0 	make_with   t  u�� u o    ���� 
0 a_name  ��  ��   i  v w v l     ��������  ��  ��   w  x y x l      �� z {��   z ( "!@group Obtain an Accessor Object     { � | | D ! @ g r o u p   O b t a i n   a n   A c c e s s o r   O b j e c t   y  } ~ } l     ��������  ��  ��   ~   �  l      �� � ���   ���!@abstruct
Obtain an accessor object to access a label specified with a text.

@description
An accessor object is a script object to access a specified label. The accessor object have following two handlers.
* value at an_object
* set_value for a_value at an_object

an_object must be a record or a script object. 

@param a_label (text) : a text to specify a label or a global variable.
@result selector object : an accessor object to access the specified label or global variable.
    � � � �� ! @ a b s t r u c t 
 O b t a i n   a n   a c c e s s o r   o b j e c t   t o   a c c e s s   a   l a b e l   s p e c i f i e d   w i t h   a   t e x t . 
 
 @ d e s c r i p t i o n 
 A n   a c c e s s o r   o b j e c t   i s   a   s c r i p t   o b j e c t   t o   a c c e s s   a   s p e c i f i e d   l a b e l .   T h e   a c c e s s o r   o b j e c t   h a v e   f o l l o w i n g   t w o   h a n d l e r s . 
 *   v a l u e   a t   a n _ o b j e c t 
 *   s e t _ v a l u e   f o r   a _ v a l u e   a t   a n _ o b j e c t 
 
 a n _ o b j e c t   m u s t   b e   a   r e c o r d   o r   a   s c r i p t   o b j e c t .   
 
 @ p a r a m   a _ l a b e l   ( t e x t )   :   a   t e x t   t o   s p e c i f y   a   l a b e l   o r   a   g l o b a l   v a r i a b l e . 
 @ r e s u l t   s e l e c t o r   o b j e c t   :   a n   a c c e s s o r   o b j e c t   t o   a c c e s s   t h e   s p e c i f i e d   l a b e l   o r   g l o b a l   v a r i a b l e . 
 �  � � � i     � � � I      �� ����� 0 	make_with   �  ��� � o      ���� 0 a_label  ��  ��   � k     " � �  � � � l      �� � ���   � � �!@group Instance Methods
	
	@syntax value_of(an_object)
	@abstruct get value in an_object	@param an_object (script object or record) : an object to get its property	@result anything
	    � � � �t ! @ g r o u p   I n s t a n c e   M e t h o d s 
 	 
 	 @ s y n t a x   v a l u e _ o f ( a n _ o b j e c t ) 
 	 @ a b s t r u c t   g e t   v a l u e   i n   a n _ o b j e c t  	 @ p a r a m   a n _ o b j e c t   ( s c r i p t   o b j e c t   o r   r e c o r d )   :   a n   o b j e c t   t o   g e t   i t s   p r o p e r t y  	 @ r e s u l t   a n y t h i n g  
 	 �  � � � l      �� � ���   � � �!@syntax set_value(an_object, a_value)
	@abstruct set a value to the property of given object	@param a_value (anything) : a value to set	@param an_object (script object or record) : an object to get its property
	    � � � �� ! @ s y n t a x   s e t _ v a l u e ( a n _ o b j e c t ,   a _ v a l u e ) 
 	 @ a b s t r u c t   s e t   a   v a l u e   t o   t h e   p r o p e r t y   o f   g i v e n   o b j e c t  	 @ p a r a m   a _ v a l u e   ( a n y t h i n g )   :   a   v a l u e   t o   s e t  	 @ p a r a m   a n _ o b j e c t   ( s c r i p t   o b j e c t   o r   r e c o r d )   :   a n   o b j e c t   t o   g e t   i t s   p r o p e r t y 
 	 �  � � � l      �� � ���   � ] W!@syntax global_value()
	@abstruct Get a value of a global variable	@result anything
	    � � � � � ! @ s y n t a x   g l o b a l _ v a l u e ( ) 
 	 @ a b s t r u c t   G e t   a   v a l u e   o f   a   g l o b a l   v a r i a b l e  	 @ r e s u l t   a n y t h i n g 
 	 �  � � � l      �� � ���   � z t!@syntax set_global(a_value)
	@abstruct Set a value to global variable	@param a_value (anything) : a value to set	    � � � � � ! @ s y n t a x   s e t _ g l o b a l ( a _ v a l u e ) 
 	 @ a b s t r u c t   S e t   a   v a l u e   t o   g l o b a l   v a r i a b l e  	 @ p a r a m   a _ v a l u e   ( a n y t h i n g )   :   a   v a l u e   t o   s e t  	 �  ��� � L     " � � I    !�� ���
�� .sysodsct****        scpt � b      � � � b      � � � b      � � � b      � � � b      � � � b      � � � b      � � � b      � � � b      � � � b      � � � b     	 � � � b      � � � b      � � � b      � � � m      � � � � � >  o n   v a l u e _ o f ( a n _ o b j e c t ) 
 r e t u r n   � o    ���� 0 a_label   � m     � � � � � �   o f   a n _ o b j e c t 
 e n d   v a l u e 
  o n   s e t _ v a l u e ( a n _ o b j e c t ,   a _ v a l u e ) 
 t r y 
 s e t   � o    ���� 0 a_label   � m     � � � � � �   o f   a n _ o b j e c t   t o   a _ v a l u e 
 o n   e r r o r   n u m b e r   - 1 0 0 0 6 
 s e t   a n _ o b j e c t   t o   a n _ o b j e c t   &   { � o   	 
���� 0 a_label   � m     � � � � � � : a _ v a l u e } 
 e n d   t r y 
 r e t u r n   a n _ o b j e c t 
 e n d   s e t _ v a l u e   o n   g l o b a l _ v a l u e ( )  g l o b a l   � o    ���� 0 a_label   � m     � � � � �  
 r e t u r n   � o    ���� 0 a_label   � m     � � � � � ^ 
 e n d   g e t _ g l o b a l 
  o n   s e t _ g l o b a l ( a _ v a l u e ) 
 g l o b a l   � o    ���� 0 a_label   � m     � � � � � 
  s e t   � o    ���� 0 a_label   � m     � � � � � J   t o   a _ v a l u e 
 e n d   s e t _ g l o b a l 
 
 r e t u r n   m e��  ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� 	0 debug  ��  ��   � k      � �  � � � r      � � � K      � � �� ����� 0 a   � m     � � � � �  a��   � o      ���� 	0 a_rec   �  ��� � I   ���� ��� 0 	set_value  ��   � �� � ��� 0 	for_label   � m   	 
 � � � � �  B � �� � ��� 0 
with_value   � m     � � � � �  b � �� ����� 0 	in_object   � o    ���� 	0 a_rec  ��  ��   �  � � � l     ����~��  �  �~   �  � � � i     � � � I      �}�|�{�} 0 open_helpbook  �|  �{   � Q     , � � � � O    � � � I   
 �z ��y�z 0 do   �  ��x � I   �w ��v
�w .earsffdralis        afdr �  f    �v  �x  �y   � 4    �u �
�u 
scpt � m     � � � � �  O p e n H e l p B o o k � R      �t � �
�t .ascrerr ****      � **** � o      �s�s 0 msg   � �r ��q
�r 
errn � o      �p�p 	0 errno  �q   � k    , � �  � � � I   "�o�n�m
�o .miscactvnull��� ��� null�n  �m   �  ��l � I  # ,�k �j
�k .sysodisAaleR        TEXT  l  # (�i�h b   # ( b   # & o   # $�g�g 0 msg   o   $ %�f
�f 
ret  o   & '�e�e 	0 errno  �i  �h  �j  �l   �  l     �d�c�b�d  �c  �b   �a i    "	
	 I     �`�_�^
�` .aevtoappnull  �   � ****�_  �^  
 k       l     �]�]    return debug()    �  r e t u r n   d e b u g ( ) �\ I     �[�Z�Y�[ 0 open_helpbook  �Z  �Y  �\  �a       �X �X   	�W�V�U�T�S�R�Q�P�O
�W 
pnam�V 0 value_of  �U 0 	set_value  �T 0 global_value  �S 0 
set_global  �R 0 	make_with  �Q 	0 debug  �P 0 open_helpbook  
�O .aevtoappnull  �   � **** �N )�M�L�K�N 0 value_of  �M �J�J   �I�H�I 0 	an_object  �H 0 a_label  �L   �G�F�G 0 	an_object  �F 0 a_label   �E�D�E 0 	make_with  �D 0 value_of  �K *�k+  �k+  �C @�B�A�@�C 0 	set_value  �B �? �?    �>�=�<�> 0 	an_object  �= 0 a_label  �< 0 a_value  �A   �;�:�9�; 0 	an_object  �: 0 a_label  �9 0 a_value   �8�7�8 0 	make_with  �7 0 	set_value  �@ *�k+  ��l+  �6 Y�5�4!"�3�6 0 global_value  �5 �2#�2 #  �1�1 
0 a_name  �4  ! �0�0 
0 a_name  " �/�.�/ 0 	make_with  �. 0 global_value  �3 *�k+  j+  �- k�,�+$%�*�- 0 
set_global  �, �)&�) &  �(�'�( 
0 a_name  �' 0 a_value  �+  $ �&�%�& 
0 a_name  �% 0 a_value  % �$�#�$ 0 	make_with  �# 0 
set_global  �* *�k+  �k+  �" ��!� '(��" 0 	make_with  �! �)� )  �� 0 a_label  �   ' �� 0 a_label  ( 	 � � � � � � � ��
� .sysodsct****        scpt� #�%�%�%�%�%�%�%�%�%�%�%�%�%�%j  � ���*+�� 	0 debug  �  �  * �� 	0 a_rec  + 	� �� �� ����� 0 a  � 0 	for_label  � 0 
with_value  � 0 	in_object  � � 0 	set_value  � ��lE�O*������  � ���,-�� 0 open_helpbook  �  �  , ��
� 0 msg  �
 	0 errno  - 	�	 ����.���
�	 
scpt
� .earsffdralis        afdr� 0 do  � 0 msg  . ��� 
� 
errn� 	0 errno  �   
� .miscactvnull��� ��� null
� 
ret 
� .sysodisAaleR        TEXT� - )��/ *)j k+ UW X  *j O��%�%j  ��
����/0��
�� .aevtoappnull  �   � ****��  ��  /  0 ���� 0 open_helpbook  �� *j+  ascr  ��ޭ