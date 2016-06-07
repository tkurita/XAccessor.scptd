FasdUAS 1.101.10   ��   ��    k             j     �� 
�� 
pnam  m        � 	 	  X A c c e s s o r   
  
 j    �� 
�� 
vers  m       �   
 1 . 1 . 1      l     ��������  ��  ��        l      ��  ��    e _!@title XAccessor Reference 
* Version : 1.1.1* Author : Tetsuro KURITA ((<tkurita@mac.com>))
     �   � ! @ t i t l e   X A c c e s s o r   R e f e r e n c e   
 *   V e r s i o n   :   1 . 1 . 1  *   A u t h o r   :   T e t s u r o   K U R I T A   ( ( < t k u r i t a @ m a c . c o m > ) ) 
      l     ��������  ��  ��        l      ��  ��     !@group Class Methods      �   , ! @ g r o u p   C l a s s   M e t h o d s        l     ��������  ��  ��         l      �� ! "��   ! � �!@abstruct
Obtain a value in a record or a property of a script object with specify its label of a text.
@param a_label (text): name of the label
@param an_object (record or script object) : a record or a script object to access
@result anything
    " � # #� ! @ a b s t r u c t 
 O b t a i n   a   v a l u e   i n   a   r e c o r d   o r   a   p r o p e r t y   o f   a   s c r i p t   o b j e c t   w i t h   s p e c i f y   i t s   l a b e l   o f   a   t e x t . 
 @ p a r a m   a _ l a b e l   ( t e x t ) :   n a m e   o f   t h e   l a b e l 
 @ p a r a m   a n _ o b j e c t   ( r e c o r d   o r   s c r i p t   o b j e c t )   :   a   r e c o r d   o r   a   s c r i p t   o b j e c t   t o   a c c e s s 
 @ r e s u l t   a n y t h i n g 
    $ % $ i    	 & ' & I      �� (���� 0 value_of   (  ) * ) o      ���� 0 	an_object   *  +�� + o      ���� 0 a_label  ��  ��   ' L      , , n     - . - I    �� /���� 0 value_of   /  0�� 0 o    ���� 0 	an_object  ��  ��   . l     1���� 1 I     �� 2���� 0 	make_with   2  3�� 3 o    ���� 0 a_label  ��  ��  ��  ��   %  4 5 4 l     ��������  ��  ��   5  6 7 6 l      �� 8 9��   8d^!@abstruct
Set a value in a record or a property of a script object with specifying its label of a text.
@description
if an_object does not have a_label, a_label is added into a_object when an_object is a record. When an_object is a script object, passing nonexistent label cause an error.

If new label is added into an_object, returned value is not same instance to an_object.
@param a_label (text): name of the label
@param a_value (anything) : a value to set
@param an_object (record or script object) : a record or a script object to access
@result record or script object : usually same to an_object
    9 � : :� ! @ a b s t r u c t 
 S e t   a   v a l u e   i n   a   r e c o r d   o r   a   p r o p e r t y   o f   a   s c r i p t   o b j e c t   w i t h   s p e c i f y i n g   i t s   l a b e l   o f   a   t e x t . 
 @ d e s c r i p t i o n 
 i f   a n _ o b j e c t   d o e s   n o t   h a v e   a _ l a b e l ,   a _ l a b e l   i s   a d d e d   i n t o   a _ o b j e c t   w h e n   a n _ o b j e c t   i s   a   r e c o r d .   W h e n   a n _ o b j e c t   i s   a   s c r i p t   o b j e c t ,   p a s s i n g   n o n e x i s t e n t   l a b e l   c a u s e   a n   e r r o r . 
 
 I f   n e w   l a b e l   i s   a d d e d   i n t o   a n _ o b j e c t ,   r e t u r n e d   v a l u e   i s   n o t   s a m e   i n s t a n c e   t o   a n _ o b j e c t . 
 @ p a r a m   a _ l a b e l   ( t e x t ) :   n a m e   o f   t h e   l a b e l 
 @ p a r a m   a _ v a l u e   ( a n y t h i n g )   :   a   v a l u e   t o   s e t 
 @ p a r a m   a n _ o b j e c t   ( r e c o r d   o r   s c r i p t   o b j e c t )   :   a   r e c o r d   o r   a   s c r i p t   o b j e c t   t o   a c c e s s 
 @ r e s u l t   r e c o r d   o r   s c r i p t   o b j e c t   :   u s u a l l y   s a m e   t o   a n _ o b j e c t 
 7  ; < ; i   
  = > = I      �� ?���� 0 	set_value   ?  @ A @ o      ���� 0 	an_object   A  B C B o      ���� 0 a_label   C  D�� D o      ���� 0 a_value  ��  ��   > n     E F E I    �� G���� 0 	set_value   G  H I H o    ���� 0 	an_object   I  J�� J o    ���� 0 a_value  ��  ��   F I     �� K���� 0 	make_with   K  L�� L o    ���� 0 a_label  ��  ��   <  M N M l     ��������  ��  ��   N  O P O l      �� Q R��   Q � �!@abstruct
Obtain a value of a global variable specified with a name.
@param a_name (text): name of a global variable
@result anything
    R � S S ! @ a b s t r u c t 
 O b t a i n   a   v a l u e   o f   a   g l o b a l   v a r i a b l e   s p e c i f i e d   w i t h   a   n a m e . 
  @ p a r a m   a _ n a m e   ( t e x t ) :   n a m e   o f   a   g l o b a l   v a r i a b l e 
 @ r e s u l t   a n y t h i n g 
 P  T U T i     V W V I      �� X���� 0 global_value   X  Y�� Y o      ���� 
0 a_name  ��  ��   W L      Z Z n    
 [ \ [ I    
�������� 0 global_value  ��  ��   \ I     �� ]���� 0 	make_with   ]  ^�� ^ o    ���� 
0 a_name  ��  ��   U  _ ` _ l     ��������  ��  ��   `  a b a l      �� c d��   c � �!@abstructset a value to a global variable specified with a name.@param a_name (text): name of a global variable@param a_value (anything) : value to set to the global variable    d � e eh ! @ a b s t r u c t  s e t   a   v a l u e   t o   a   g l o b a l   v a r i a b l e   s p e c i f i e d   w i t h   a   n a m e .   @ p a r a m   a _ n a m e   ( t e x t ) :   n a m e   o f   a   g l o b a l   v a r i a b l e  @ p a r a m   a _ v a l u e   ( a n y t h i n g )   :   v a l u e   t o   s e t   t o   t h e   g l o b a l   v a r i a b l e  b  f g f i     h i h I      �� j���� 0 
set_global   j  k l k o      ���� 
0 a_name   l  m�� m o      ���� 0 a_value  ��  ��   i n     n o n I    �� p���� 0 
set_global   p  q�� q o    ���� 0 a_value  ��  ��   o I     �� r���� 0 	make_with   r  s�� s o    ���� 
0 a_name  ��  ��   g  t u t l     ��������  ��  ��   u  v w v l      �� x y��   x ( "!@group Obtain an Accessor Object     y � z z D ! @ g r o u p   O b t a i n   a n   A c c e s s o r   O b j e c t   w  { | { l     ��������  ��  ��   |  } ~ } l      ��  ���   ��!@abstruct
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
 ~  � � � i     � � � I      �� ����� 0 	make_with   �  ��� � o      ���� 0 a_label  ��  ��   � L     " � � I    !�� ���
�� .sysodsct****        scpt � b      � � � b      � � � b      � � � b      � � � b      � � � b      � � � b      � � � b      � � � b      � � � b      � � � b     	 � � � b      � � � b      � � � b      � � � m      � � � � ��  ( * ! @ g r o u p   I n s t a n c e   M e t h o d s * )   ( * ! @ a b s t r u c t  g e t   v a l u e   i n   a n _ o b j e c t  @ p a r a m   a n _ o b j e c t   ( s c r i p t   o b j e c t   o r   r e c o r d )   :   a n   o b j e c t   t o   g e t   i t s   p r o p e r t y  @ r e s u l t   a n y t h i n g  * )  o n   v a l u e _ o f ( a n _ o b j e c t ) 
 r e t u r n   � o    ���� 0 a_label   � m     � � � � ��   o f   a n _ o b j e c t 
 e n d   v a l u e 
  ( * ! @ a b s t r u c t  s e t   a   v a l u e   t o   t h e   p r o p e r t y   o f   g i v e n   o b j e c t  @ p a r a m   a _ v a l u e   ( a n y t h i n g )   :   a   v a l u e   t o   s e t  @ p a r a m   a n _ o b j e c t   ( s c r i p t   o b j e c t   o r   r e c o r d )   :   a n   o b j e c t   t o   g e t   i t s   p r o p e r t y  * ) 
 o n   s e t _ v a l u e ( a n _ o b j e c t ,   a _ v a l u e ) 
 t r y 
 s e t   � o    ���� 0 a_label   � m     � � � � � �   o f   a n _ o b j e c t   t o   a _ v a l u e 
 o n   e r r o r   n u m b e r   - 1 0 0 0 6 
 s e t   a n _ o b j e c t   t o   a n _ o b j e c t   &   { � o   	 
���� 0 a_label   � m     � � � � � : a _ v a l u e } 
 e n d   t r y 
 r e t u r n   a n _ o b j e c t 
 e n d   s e t _ v a l u e   ( * ! @ a b s t r u c t  G e t   a   v a l u e   o f   a   g l o b a l   v a r i a b l e  @ r e s u l t   a n y t h i n g  * )  o n   g l o b a l _ v a l u e ( )  g l o b a l   � o    ���� 0 a_label   � m     � � � � �  
 r e t u r n   � o    ���� 0 a_label   � m     � � � � � 
 e n d   g e t _ g l o b a l 
  ( * ! @ a b s t r u c t  S e t   a   v a l u e   t o   g l o b a l   v a r i a b l e  @ p a r a m   a _ v a l u e   ( a n y t h i n g )   :   a   v a l u e   t o   s e t  * )  o n   s e t _ g l o b a l ( a _ v a l u e ) 
 g l o b a l   � o    ���� 0 a_label   � m     � � � � � 
  s e t   � o    ���� 0 a_label   � m     � � � � � J   t o   a _ v a l u e 
 e n d   s e t _ g l o b a l 
 
 r e t u r n   m e��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I     ������
�� .aevtoappnull  �   � ****��  ��   � k      � �  � � � l     �� � ���   �  debug()    � � � �  d e b u g ( ) �  ��� � Q      � � � � I   �� � �
�� .HBsushHBTEXT    ��� file � l    ����� � I   �� ���
�� .earsffdr****        afdr �  f    ��  ��  ��   � �� ���
�� 
rcIP � m   	 
��
�� boovtrue��   � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 msg   � �� ���
�� 
errn � o      ���� 	0 errno  ��   � I   �� ���
�� .sysodisAaleR        TEXT � l    ����� � b     � � � b     � � � o    ���� 0 msg   � o    �
� 
ret  � o    �~�~ 	0 errno  ��  ��  ��  ��   �  � � � l     �}�|�{�}  �|  �{   �  ��z � i    ! � � � I      �y�x�w�y 	0 debug  �x  �w   � k      � �  � � � r      � � � K      � � �v ��u�v 0 a   � m     � � � � �  a�u   � o      �t�t 	0 a_rec   �  ��s � I   �r�q ��r 0 	set_value  �q   � �p � ��p 0 	for_label   � m   	 
 � � � � �  B � �o � ��o 0 
with_value   � m     � � � � �  b � �n ��m�n 0 	in_object   � o    �l�l 	0 a_rec  �m  �s  �z       �k �   � � � � � � ��k   � 	�j�i�h�g�f�e�d�c�b
�j 
pnam
�i 
vers�h 0 value_of  �g 0 	set_value  �f 0 global_value  �e 0 
set_global  �d 0 	make_with  
�c .aevtoappnull  �   � ****�b 	0 debug   � �a '�`�_ � ��^�a 0 value_of  �` �] ��]  �  �\�[�\ 0 	an_object  �[ 0 a_label  �_   � �Z�Y�Z 0 	an_object  �Y 0 a_label   � �X�W�X 0 	make_with  �W 0 value_of  �^ *�k+  �k+  � �V >�U�T � ��S�V 0 	set_value  �U �R ��R  �  �Q�P�O�Q 0 	an_object  �P 0 a_label  �O 0 a_value  �T   � �N�M�L�N 0 	an_object  �M 0 a_label  �L 0 a_value   � �K�J�K 0 	make_with  �J 0 	set_value  �S *�k+  ��l+  � �I W�H�G � ��F�I 0 global_value  �H �E ��E  �  �D�D 
0 a_name  �G   � �C�C 
0 a_name   � �B�A�B 0 	make_with  �A 0 global_value  �F *�k+  j+  � �@ i�?�> � ��=�@ 0 
set_global  �? �< �<    �;�:�; 
0 a_name  �: 0 a_value  �>   � �9�8�9 
0 a_name  �8 0 a_value   � �7�6�7 0 	make_with  �6 0 
set_global  �= *�k+  �k+  � �5 ��4�3�2�5 0 	make_with  �4 �1�1   �0�0 0 a_label  �3   �/�/ 0 a_label   	 � � � � � � � ��.
�. .sysodsct****        scpt�2 #�%�%�%�%�%�%�%�%�%�%�%�%�%�%j  � �- ��,�+�*
�- .aevtoappnull  �   � ****�,  �+   �)�(�) 0 msg  �( 	0 errno   �'�&�%�$�#�"
�' .earsffdr****        afdr
�& 
rcIP
�% .HBsushHBTEXT    ��� file�$ 0 msg   �!� �
�! 
errn�  	0 errno  �  
�# 
ret 
�" .sysodisAaleR        TEXT�*   )j  �el W X  ��%�%j  � � ����� 	0 debug  �  �   �� 	0 a_rec   	� �� �� ����� 0 a  � 0 	for_label  � 0 
with_value  � 0 	in_object  � � 0 	set_value  � ��lE�O*������ ascr  ��ޭ