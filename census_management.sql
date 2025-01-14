PGDMP             	            {            Census_Management    15.3    15.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16397    Census_Management    DATABASE     �   CREATE DATABASE "Census_Management" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
 #   DROP DATABASE "Census_Management";
                postgres    false                       0    0    DATABASE "Census_Management"    COMMENT     c   COMMENT ON DATABASE "Census_Management" IS 'A basic vaccination census system and trend analysis';
                   postgres    false    3328            F           1247    16444    gender_enum    TYPE     S   CREATE TYPE public.gender_enum AS ENUM (
    'male',
    'female',
    'others'
);
    DROP TYPE public.gender_enum;
       public          postgres    false            �            1259    16454    census    TABLE     �   CREATE TABLE public.census (
    name character varying NOT NULL,
    is_vaccinated boolean NOT NULL,
    birthdate date NOT NULL,
    gender public.gender_enum NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.census;
       public         heap    postgres    false    838            �            1259    16461    census_id_seq    SEQUENCE     �   CREATE SEQUENCE public.census_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.census_id_seq;
       public          postgres    false    214                       0    0    census_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.census_id_seq OWNED BY public.census.id;
          public          postgres    false    215            h           2604    16462 	   census id    DEFAULT     f   ALTER TABLE ONLY public.census ALTER COLUMN id SET DEFAULT nextval('public.census_id_seq'::regclass);
 8   ALTER TABLE public.census ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �          0    16454    census 
   TABLE DATA           L   COPY public.census (name, is_vaccinated, birthdate, gender, id) FROM stdin;
    public          postgres    false    214   �                  0    0    census_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.census_id_seq', 56, true);
          public          postgres    false    215            j           2606    16464    census census_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.census
    ADD CONSTRAINT census_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.census DROP CONSTRAINT census_pkey;
       public            postgres    false    214            �   �  x��T�n�0=�_�`�E�rt���۴@��^���Pb@�N��J$�� ���fަ��|��jZ����J��WV�ڨA�mo�nu�q3J8]�ݙ�S��`�nX 8���z��@{c��F�̸�kB+����(������F� ��^�[���S�LKB#0+ѽ{�~�d�¯��
}s'�ί��	+�Fw��_�`3��vyV�e,1��^uG�5�!�Z��w].��j����H��U}+/`�9(}Y�/3�6����W�]rS�������:ś�Z%(ں�Ψ���)�!�?�Y�xgl���K���5'����uX65�L2��ۺG�������2Q �^�;c-�����I!a��ߒ����%Z��{�ʐ5~9��Sz=���T�\W!v)
�N�<t��Pup��AWz��z3`��O'q0!�_�B��Q=jk����Y�*�+��n�/�uf�ٍ2+T��7�>�X���"���@p>)�Bm��3��*
t�)o�4i|m��2W3�Dk�����5Q!ļ�Xe��Λ�n���Ue�\T�V���~H�/����� �-x���E��	�;����1uh{�NH�>y�j�ޫ>��ӤC$�{H2x6�iʖB|X����D�w��Ocnͬ_�_��ui�Vhۂưo[�V�I��,)/_�j�K�U�����ozp��     