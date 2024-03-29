PGDMP     +         
            w            postgis "   10.10 (Ubuntu 10.10-1.pgdg18.04+1)     11.5 (Ubuntu 11.5-1.pgdg18.04+1)     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    17891    postgis    DATABASE     y   CREATE DATABASE postgis WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'pt_BR.UTF-8' LC_CTYPE = 'pt_BR.UTF-8';
    DROP DATABASE postgis;
             postgres    false            �            1259    22897 
   macrofitas    TABLE     �  CREATE TABLE public.macrofitas (
    data_passagem date NOT NULL,
    id integer NOT NULL,
    sensor text NOT NULL,
    the_geom public.geometry NOT NULL,
    media_ndvi double precision NOT NULL,
    nome_segmento text NOT NULL,
    porcentagem_macrofitas numeric(3,1) NOT NULL,
    porcentagem_nuvens integer NOT NULL,
    id_imagem text NOT NULL,
    area_macrofitas_m2 numeric(16,1) NOT NULL,
    porcentagem_intersecao integer NOT NULL,
    local_segmento text NOT NULL
);
    DROP TABLE public.macrofitas;
       public         postgres    false            �            1259    22895    macrofitas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.macrofitas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.macrofitas_id_seq;
       public       postgres    false    213            �           0    0    macrofitas_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.macrofitas_id_seq OWNED BY public.macrofitas.id;
            public       postgres    false    212            H           2604    22900    macrofitas id    DEFAULT     n   ALTER TABLE ONLY public.macrofitas ALTER COLUMN id SET DEFAULT nextval('public.macrofitas_id_seq'::regclass);
 <   ALTER TABLE public.macrofitas ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212    213            �          0    22897 
   macrofitas 
   TABLE DATA               �   COPY public.macrofitas (data_passagem, id, sensor, the_geom, media_ndvi, nome_segmento, porcentagem_macrofitas, porcentagem_nuvens, id_imagem, area_macrofitas_m2, porcentagem_intersecao, local_segmento) FROM stdin;
    public       postgres    false    213   �       �           0    0    macrofitas_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.macrofitas_id_seq', 335, true);
            public       postgres    false    212            J           2606    22905    macrofitas macrofitas_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.macrofitas
    ADD CONSTRAINT macrofitas_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.macrofitas DROP CONSTRAINT macrofitas_pkey;
       public         postgres    false    213            �      x������ � �     