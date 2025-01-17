PGDMP  #    7                {            vet_management    16.1    16.0 G    P           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Q           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            R           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            S           1262    17919    vet_management    DATABASE     p   CREATE DATABASE vet_management WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE vet_management;
                postgres    false            �            1259    18364    animals    TABLE     �  CREATE TABLE public.animals (
    animal_id bigint NOT NULL,
    breed character varying(255),
    colour character varying(255),
    date_of_birth date,
    gender character varying(255),
    name character varying(255),
    species character varying(255),
    customer_id integer NOT NULL,
    CONSTRAINT animals_gender_check CHECK (((gender)::text = ANY ((ARRAY['MALE'::character varying, 'FEMALE'::character varying])::text[])))
);
    DROP TABLE public.animals;
       public         heap    postgres    false            �            1259    18362    animals_animal_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.animals_animal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.animals_animal_id_seq;
       public          postgres    false    217            T           0    0    animals_animal_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.animals_animal_id_seq OWNED BY public.animals.animal_id;
          public          postgres    false    215            �            1259    18363    animals_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.animals_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.animals_customer_id_seq;
       public          postgres    false    217            U           0    0    animals_customer_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.animals_customer_id_seq OWNED BY public.animals.customer_id;
          public          postgres    false    216            �            1259    18377    appointments    TABLE     �   CREATE TABLE public.appointments (
    appointment_id bigint NOT NULL,
    appointment_date timestamp without time zone,
    animal_id integer NOT NULL,
    doctor_id integer NOT NULL
);
     DROP TABLE public.appointments;
       public         heap    postgres    false            �            1259    18375    appointments_animal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.appointments_animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.appointments_animal_id_seq;
       public          postgres    false    221            V           0    0    appointments_animal_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.appointments_animal_id_seq OWNED BY public.appointments.animal_id;
          public          postgres    false    219            �            1259    18374    appointments_appointment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.appointments_appointment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.appointments_appointment_id_seq;
       public          postgres    false    221            W           0    0    appointments_appointment_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.appointments_appointment_id_seq OWNED BY public.appointments.appointment_id;
          public          postgres    false    218            �            1259    18376    appointments_doctor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.appointments_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.appointments_doctor_id_seq;
       public          postgres    false    221            X           0    0    appointments_doctor_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.appointments_doctor_id_seq OWNED BY public.appointments.doctor_id;
          public          postgres    false    220            �            1259    18387    available_date    TABLE     �   CREATE TABLE public.available_date (
    available_date_id bigint NOT NULL,
    available_date date,
    doctor_id integer NOT NULL
);
 "   DROP TABLE public.available_date;
       public         heap    postgres    false            �            1259    18385 $   available_date_available_date_id_seq    SEQUENCE     �   CREATE SEQUENCE public.available_date_available_date_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.available_date_available_date_id_seq;
       public          postgres    false    224            Y           0    0 $   available_date_available_date_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.available_date_available_date_id_seq OWNED BY public.available_date.available_date_id;
          public          postgres    false    222            �            1259    18386    available_date_doctor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.available_date_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.available_date_doctor_id_seq;
       public          postgres    false    224            Z           0    0    available_date_doctor_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.available_date_doctor_id_seq OWNED BY public.available_date.doctor_id;
          public          postgres    false    223            �            1259    18395 	   customers    TABLE     �   CREATE TABLE public.customers (
    customer_id bigint NOT NULL,
    address character varying(255),
    city character varying(255),
    mail character varying(255),
    name character varying(255),
    phone character varying(255)
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    18394    customers_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customers_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.customers_customer_id_seq;
       public          postgres    false    226            [           0    0    customers_customer_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;
          public          postgres    false    225            �            1259    18404    doctors    TABLE     �   CREATE TABLE public.doctors (
    doctor_id bigint NOT NULL,
    address character varying(255),
    city character varying(255),
    mail character varying(255),
    name character varying(255),
    phone character varying(255)
);
    DROP TABLE public.doctors;
       public         heap    postgres    false            �            1259    18403    doctors_doctor_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.doctors_doctor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.doctors_doctor_id_seq;
       public          postgres    false    228            \           0    0    doctors_doctor_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.doctors_doctor_id_seq OWNED BY public.doctors.doctor_id;
          public          postgres    false    227            �            1259    18414    vaccine    TABLE     �   CREATE TABLE public.vaccine (
    vaccine_id bigint NOT NULL,
    code character varying(255),
    name character varying(255),
    protection_finish_date date,
    protection_start_date date,
    animal_id integer NOT NULL
);
    DROP TABLE public.vaccine;
       public         heap    postgres    false            �            1259    18413    vaccine_animal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vaccine_animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.vaccine_animal_id_seq;
       public          postgres    false    231            ]           0    0    vaccine_animal_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.vaccine_animal_id_seq OWNED BY public.vaccine.animal_id;
          public          postgres    false    230            �            1259    18412    vaccine_vaccine_id_seq    SEQUENCE        CREATE SEQUENCE public.vaccine_vaccine_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.vaccine_vaccine_id_seq;
       public          postgres    false    231            ^           0    0    vaccine_vaccine_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.vaccine_vaccine_id_seq OWNED BY public.vaccine.vaccine_id;
          public          postgres    false    229            �           2604    18367    animals animal_id    DEFAULT     v   ALTER TABLE ONLY public.animals ALTER COLUMN animal_id SET DEFAULT nextval('public.animals_animal_id_seq'::regclass);
 @   ALTER TABLE public.animals ALTER COLUMN animal_id DROP DEFAULT;
       public          postgres    false    217    215    217            �           2604    18368    animals customer_id    DEFAULT     z   ALTER TABLE ONLY public.animals ALTER COLUMN customer_id SET DEFAULT nextval('public.animals_customer_id_seq'::regclass);
 B   ALTER TABLE public.animals ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    18380    appointments appointment_id    DEFAULT     �   ALTER TABLE ONLY public.appointments ALTER COLUMN appointment_id SET DEFAULT nextval('public.appointments_appointment_id_seq'::regclass);
 J   ALTER TABLE public.appointments ALTER COLUMN appointment_id DROP DEFAULT;
       public          postgres    false    218    221    221            �           2604    18381    appointments animal_id    DEFAULT     �   ALTER TABLE ONLY public.appointments ALTER COLUMN animal_id SET DEFAULT nextval('public.appointments_animal_id_seq'::regclass);
 E   ALTER TABLE public.appointments ALTER COLUMN animal_id DROP DEFAULT;
       public          postgres    false    221    219    221            �           2604    18382    appointments doctor_id    DEFAULT     �   ALTER TABLE ONLY public.appointments ALTER COLUMN doctor_id SET DEFAULT nextval('public.appointments_doctor_id_seq'::regclass);
 E   ALTER TABLE public.appointments ALTER COLUMN doctor_id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    18390     available_date available_date_id    DEFAULT     �   ALTER TABLE ONLY public.available_date ALTER COLUMN available_date_id SET DEFAULT nextval('public.available_date_available_date_id_seq'::regclass);
 O   ALTER TABLE public.available_date ALTER COLUMN available_date_id DROP DEFAULT;
       public          postgres    false    222    224    224            �           2604    18391    available_date doctor_id    DEFAULT     �   ALTER TABLE ONLY public.available_date ALTER COLUMN doctor_id SET DEFAULT nextval('public.available_date_doctor_id_seq'::regclass);
 G   ALTER TABLE public.available_date ALTER COLUMN doctor_id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    18398    customers customer_id    DEFAULT     ~   ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);
 D   ALTER TABLE public.customers ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    18407    doctors doctor_id    DEFAULT     v   ALTER TABLE ONLY public.doctors ALTER COLUMN doctor_id SET DEFAULT nextval('public.doctors_doctor_id_seq'::regclass);
 @   ALTER TABLE public.doctors ALTER COLUMN doctor_id DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    18417    vaccine vaccine_id    DEFAULT     x   ALTER TABLE ONLY public.vaccine ALTER COLUMN vaccine_id SET DEFAULT nextval('public.vaccine_vaccine_id_seq'::regclass);
 A   ALTER TABLE public.vaccine ALTER COLUMN vaccine_id DROP DEFAULT;
       public          postgres    false    231    229    231            �           2604    18418    vaccine animal_id    DEFAULT     v   ALTER TABLE ONLY public.vaccine ALTER COLUMN animal_id SET DEFAULT nextval('public.vaccine_animal_id_seq'::regclass);
 @   ALTER TABLE public.vaccine ALTER COLUMN animal_id DROP DEFAULT;
       public          postgres    false    230    231    231            ?          0    18364    animals 
   TABLE DATA           n   COPY public.animals (animal_id, breed, colour, date_of_birth, gender, name, species, customer_id) FROM stdin;
    public          postgres    false    217   �T       C          0    18377    appointments 
   TABLE DATA           ^   COPY public.appointments (appointment_id, appointment_date, animal_id, doctor_id) FROM stdin;
    public          postgres    false    221   �U       F          0    18387    available_date 
   TABLE DATA           V   COPY public.available_date (available_date_id, available_date, doctor_id) FROM stdin;
    public          postgres    false    224   V       H          0    18395 	   customers 
   TABLE DATA           R   COPY public.customers (customer_id, address, city, mail, name, phone) FROM stdin;
    public          postgres    false    226   iV       J          0    18404    doctors 
   TABLE DATA           N   COPY public.doctors (doctor_id, address, city, mail, name, phone) FROM stdin;
    public          postgres    false    228    W       M          0    18414    vaccine 
   TABLE DATA           s   COPY public.vaccine (vaccine_id, code, name, protection_finish_date, protection_start_date, animal_id) FROM stdin;
    public          postgres    false    231   X       _           0    0    animals_animal_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.animals_animal_id_seq', 7, true);
          public          postgres    false    215            `           0    0    animals_customer_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.animals_customer_id_seq', 1, false);
          public          postgres    false    216            a           0    0    appointments_animal_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.appointments_animal_id_seq', 1, false);
          public          postgres    false    219            b           0    0    appointments_appointment_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.appointments_appointment_id_seq', 10, true);
          public          postgres    false    218            c           0    0    appointments_doctor_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.appointments_doctor_id_seq', 1, false);
          public          postgres    false    220            d           0    0 $   available_date_available_date_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.available_date_available_date_id_seq', 29, true);
          public          postgres    false    222            e           0    0    available_date_doctor_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.available_date_doctor_id_seq', 1, false);
          public          postgres    false    223            f           0    0    customers_customer_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.customers_customer_id_seq', 6, true);
          public          postgres    false    225            g           0    0    doctors_doctor_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.doctors_doctor_id_seq', 7, true);
          public          postgres    false    227            h           0    0    vaccine_animal_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.vaccine_animal_id_seq', 1, false);
          public          postgres    false    230            i           0    0    vaccine_vaccine_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.vaccine_vaccine_id_seq', 9, true);
          public          postgres    false    229            �           2606    18373    animals animals_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.animals
    ADD CONSTRAINT animals_pkey PRIMARY KEY (animal_id);
 >   ALTER TABLE ONLY public.animals DROP CONSTRAINT animals_pkey;
       public            postgres    false    217            �           2606    18384    appointments appointments_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (appointment_id);
 H   ALTER TABLE ONLY public.appointments DROP CONSTRAINT appointments_pkey;
       public            postgres    false    221            �           2606    18393 "   available_date available_date_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.available_date
    ADD CONSTRAINT available_date_pkey PRIMARY KEY (available_date_id);
 L   ALTER TABLE ONLY public.available_date DROP CONSTRAINT available_date_pkey;
       public            postgres    false    224            �           2606    18402    customers customers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    226            �           2606    18411    doctors doctors_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_pkey PRIMARY KEY (doctor_id);
 >   ALTER TABLE ONLY public.doctors DROP CONSTRAINT doctors_pkey;
       public            postgres    false    228            �           2606    18422    vaccine vaccine_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.vaccine
    ADD CONSTRAINT vaccine_pkey PRIMARY KEY (vaccine_id);
 >   ALTER TABLE ONLY public.vaccine DROP CONSTRAINT vaccine_pkey;
       public            postgres    false    231            �           2606    18428 (   appointments fk95vepu86o8syqtux9gkr71bhy    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT fk95vepu86o8syqtux9gkr71bhy FOREIGN KEY (animal_id) REFERENCES public.animals(animal_id);
 R   ALTER TABLE ONLY public.appointments DROP CONSTRAINT fk95vepu86o8syqtux9gkr71bhy;
       public          postgres    false    217    3486    221            �           2606    18423 #   animals fkb36lt3kj4mrbdx5btxmp4j60n    FK CONSTRAINT     �   ALTER TABLE ONLY public.animals
    ADD CONSTRAINT fkb36lt3kj4mrbdx5btxmp4j60n FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);
 M   ALTER TABLE ONLY public.animals DROP CONSTRAINT fkb36lt3kj4mrbdx5btxmp4j60n;
       public          postgres    false    226    217    3492            �           2606    18438 *   available_date fkbq44iqs91gghds83rs8xachaj    FK CONSTRAINT     �   ALTER TABLE ONLY public.available_date
    ADD CONSTRAINT fkbq44iqs91gghds83rs8xachaj FOREIGN KEY (doctor_id) REFERENCES public.doctors(doctor_id);
 T   ALTER TABLE ONLY public.available_date DROP CONSTRAINT fkbq44iqs91gghds83rs8xachaj;
       public          postgres    false    228    3494    224            �           2606    18443 #   vaccine fkcphlsnwa208me208efvjl8mi7    FK CONSTRAINT     �   ALTER TABLE ONLY public.vaccine
    ADD CONSTRAINT fkcphlsnwa208me208efvjl8mi7 FOREIGN KEY (animal_id) REFERENCES public.animals(animal_id);
 M   ALTER TABLE ONLY public.vaccine DROP CONSTRAINT fkcphlsnwa208me208efvjl8mi7;
       public          postgres    false    3486    231    217            �           2606    18433 (   appointments fkmujeo4tymoo98cmf7uj3vsv76    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT fkmujeo4tymoo98cmf7uj3vsv76 FOREIGN KEY (doctor_id) REFERENCES public.doctors(doctor_id);
 R   ALTER TABLE ONLY public.appointments DROP CONSTRAINT fkmujeo4tymoo98cmf7uj3vsv76;
       public          postgres    false    228    221    3494            ?   �   x�uα�0����w�i�8*�&�.E.��M���Ӌ�������(H��8�R�����Z	�R��X�P�,X�PC5Y8[�T�V�|u%��EP��u��ZH�	�S��+�1��4ͼ�p|U��O��'�|�	����g�i�U�x�!��z8�      C   P   x�Uͱ�0D��7�gG!���s lK�{ŧP��88�[�$��&VĪ�.)+�eb����]Ű�D�F���	�@R#�      F   V   x�Mλ�@��������TP>	s���C=�FpU<�m��cj��y�޻��^��ǫ����V����[�	����%f      H   �   x�e�1�0�����Y
���L�����������Ĥ���/�;�6�~Үn����a����n=�"*�p	� hy�Gm}p0���	s�T�E�1�:W�QΥ�*����g;�+���&��l����ctQ��0�Pl��{0s��>vPR.A��R
!>^�eD      J   �   x�e�MN�0����@��IvP!�
��d���v�A����3���x�<�s�d�O��<���~�����oO�f�:=<K�����JkDI�*�w��57<���7��y#��U;��/ؐ��r3�jE�آ*a�m����@>,ԫ|�&�a���5y����a��n���NŴĘ�li��v���:.g�)y�dT���c
T5��O���������Ϲ9�9���VJ�/V��      M   p   x�3��v��50��.M)��4202�54	 ��P�	��2c�2#(Ә��i�Fp@�1�9�KpH�KfqIjnAjD��n"��eQj���,o��drYb5�Rc�=... NN5K     