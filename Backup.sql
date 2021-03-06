PGDMP     4                
    x            orders    12.4    12.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16393    orders    DATABASE     �   CREATE DATABASE orders WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE orders;
                postgres    false            �            1259    16402 
   attachment    TABLE     U   CREATE TABLE public.attachment (
    hash character varying,
    id uuid NOT NULL
);
    DROP TABLE public.attachment;
       public         heap    postgres    false            �            1259    16394 
   order_info    TABLE     �   CREATE TABLE public.order_info (
    id bigint NOT NULL,
    product_id uuid,
    type character(256),
    cost numeric,
    "phoneNumber" character(256),
    email character(256),
    value character(256),
    attachment_id uuid
);
    DROP TABLE public.order_info;
       public         heap    postgres    false            �            1259    16554    order_info_id_seq    SEQUENCE     �   ALTER TABLE public.order_info ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.order_info_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    202            	          0    16402 
   attachment 
   TABLE DATA           .   COPY public.attachment (hash, id) FROM stdin;
    public          postgres    false    203   �                 0    16394 
   order_info 
   TABLE DATA           l   COPY public.order_info (id, product_id, type, cost, "phoneNumber", email, value, attachment_id) FROM stdin;
    public          postgres    false    202   +                  0    0    order_info_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.order_info_id_seq', 2, true);
          public          postgres    false    204            �
           2606    16416    attachment attachment_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.attachment
    ADD CONSTRAINT attachment_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.attachment DROP CONSTRAINT attachment_pkey;
       public            postgres    false    203            �
           2606    16401    order_info order_info_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.order_info
    ADD CONSTRAINT order_info_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.order_info DROP CONSTRAINT order_info_pkey;
       public            postgres    false    202            �
           2606    16417    order_info attachment_idfkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_info
    ADD CONSTRAINT attachment_idfkey FOREIGN KEY (attachment_id) REFERENCES public.attachment(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 F   ALTER TABLE ONLY public.order_info DROP CONSTRAINT attachment_idfkey;
       public          postgres    false    202    2696    203            	   3   x����L1�0677K�M�H��51���,t�M��S�Ӓ��Ҹb���� 	�B         B   x�3���,���KU� p�bbalnn���l�h�kb
d%&�Y蚛%��%'%�q��qqq T@/�     