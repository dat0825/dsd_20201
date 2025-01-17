PGDMP     #                     y            d26i149tkpjamk "   11.10 (Ubuntu 11.10-1.pgdg16.04+1)    12.1 '    ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    2008402    d26i149tkpjamk    DATABASE     �   CREATE DATABASE d26i149tkpjamk WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE d26i149tkpjamk;
                sevqggnbwcmmil    false            0           0    0    DATABASE d26i149tkpjamk    ACL     A   REVOKE CONNECT,TEMPORARY ON DATABASE d26i149tkpjamk FROM PUBLIC;
                   sevqggnbwcmmil    false    3887                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                sevqggnbwcmmil    false            1           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   sevqggnbwcmmil    false    3            2           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO sevqggnbwcmmil;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   sevqggnbwcmmil    false    3            3           0    0    LANGUAGE plpgsql    ACL     1   GRANT ALL ON LANGUAGE plpgsql TO sevqggnbwcmmil;
                   postgres    false    630            �            1259    17079236 	   employees    TABLE     +  CREATE TABLE public.employees (
    id bigint NOT NULL,
    employee_id character varying,
    pending_ids character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    current_id integer,
    all_ids character varying,
    type character varying
);
    DROP TABLE public.employees;
       public            sevqggnbwcmmil    false    3            �            1259    17089611    employees_id_seq    SEQUENCE     �   ALTER TABLE public.employees ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999999999
    CACHE 1
);
            public          sevqggnbwcmmil    false    199    3            �            1259    17049238    reports    TABLE     O  CREATE TABLE public.reports (
    id bigint NOT NULL,
    create_id integer,
    task_id integer,
    content character varying,
    status character varying,
    type character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    image character varying,
    title character varying
);
    DROP TABLE public.reports;
       public            sevqggnbwcmmil    false    3            �            1259    17089686    reports_id_seq    SEQUENCE     �   ALTER TABLE public.reports ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.reports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999999
    CACHE 1
);
            public          sevqggnbwcmmil    false    198    3            �            1259    18723163    schedule_settings    TABLE       CREATE TABLE public.schedule_settings (
    id integer NOT NULL,
    month integer,
    year integer,
    off_sunday boolean,
    off_saturday boolean,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    off_days character varying
);
 %   DROP TABLE public.schedule_settings;
       public            sevqggnbwcmmil    false    3            �            1259    18985911    schedule_settings_id_seq    SEQUENCE     �   ALTER TABLE public.schedule_settings ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.schedule_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999
    CACHE 1
);
            public          sevqggnbwcmmil    false    3    206            �            1259    17049201 	   schedules    TABLE     �   CREATE TABLE public.schedules (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    month integer,
    year integer,
    day integer,
    off boolean,
    absent_ids character varying
);
    DROP TABLE public.schedules;
       public            sevqggnbwcmmil    false    3            �            1259    17162616    schedules_id_seq    SEQUENCE     �   ALTER TABLE public.schedules ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.schedules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999999999999
    CACHE 1
);
            public          sevqggnbwcmmil    false    197    3            �            1259    18715999 
   task_types    TABLE     C  CREATE TABLE public.task_types (
    id integer NOT NULL,
    name character varying,
    description character varying,
    employee_number integer,
    project_type character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    prioritize boolean,
    create_id integer
);
    DROP TABLE public.task_types;
       public            sevqggnbwcmmil    false    3            �            1259    18719614    sub_tasks_id_seq    SEQUENCE     �   ALTER TABLE public.task_types ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.sub_tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999
    CACHE 1
);
            public          sevqggnbwcmmil    false    204    3            �            1259    17038527    tasks    TABLE     /  CREATE TABLE public.tasks (
    id bigint NOT NULL,
    status character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    incident_id character varying,
    task_type_id integer,
    employee_ids character varying,
    active_ids character varying
);
    DROP TABLE public.tasks;
       public            sevqggnbwcmmil    false    3            �            1259    17089799    tasks_id_seq    SEQUENCE     �   ALTER TABLE public.tasks ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999
    CACHE 1
);
            public          sevqggnbwcmmil    false    196    3            !          0    17079236 	   employees 
   TABLE DATA           t   COPY public.employees (id, employee_id, pending_ids, created_at, updated_at, current_id, all_ids, type) FROM stdin;
    public          sevqggnbwcmmil    false    199   s.                  0    17049238    reports 
   TABLE DATA           v   COPY public.reports (id, create_id, task_id, content, status, type, created_at, updated_at, image, title) FROM stdin;
    public          sevqggnbwcmmil    false    198   2       (          0    18723163    schedule_settings 
   TABLE DATA           x   COPY public.schedule_settings (id, month, year, off_sunday, off_saturday, created_at, updated_at, off_days) FROM stdin;
    public          sevqggnbwcmmil    false    206   �4                 0    17049201 	   schedules 
   TABLE DATA           b   COPY public.schedules (id, created_at, updated_at, month, year, day, off, absent_ids) FROM stdin;
    public          sevqggnbwcmmil    false    197   [5       &          0    18715999 
   task_types 
   TABLE DATA           �   COPY public.task_types (id, name, description, employee_number, project_type, created_at, updated_at, prioritize, create_id) FROM stdin;
    public          sevqggnbwcmmil    false    204   �;                 0    17038527    tasks 
   TABLE DATA           x   COPY public.tasks (id, status, created_at, updated_at, incident_id, task_type_id, employee_ids, active_ids) FROM stdin;
    public          sevqggnbwcmmil    false    196   ?       4           0    0    employees_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.employees_id_seq', 219, true);
          public          sevqggnbwcmmil    false    200            5           0    0    reports_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.reports_id_seq', 66, true);
          public          sevqggnbwcmmil    false    201            6           0    0    schedule_settings_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.schedule_settings_id_seq', 42, true);
          public          sevqggnbwcmmil    false    207            7           0    0    schedules_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.schedules_id_seq', 1326, true);
          public          sevqggnbwcmmil    false    203            8           0    0    sub_tasks_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sub_tasks_id_seq', 32, true);
          public          sevqggnbwcmmil    false    205            9           0    0    tasks_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tasks_id_seq', 142, true);
          public          sevqggnbwcmmil    false    202            �           2606    17079243    employees employees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            sevqggnbwcmmil    false    199            �           2606    17049245    reports reports_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.reports DROP CONSTRAINT reports_pkey;
       public            sevqggnbwcmmil    false    198            �           2606    18723170 (   schedule_settings schedule_settings_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.schedule_settings
    ADD CONSTRAINT schedule_settings_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.schedule_settings DROP CONSTRAINT schedule_settings_pkey;
       public            sevqggnbwcmmil    false    206            �           2606    17049205    schedules schedules_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT schedules_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.schedules DROP CONSTRAINT schedules_pkey;
       public            sevqggnbwcmmil    false    197            �           2606    18716006    task_types sub_tasks_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.task_types
    ADD CONSTRAINT sub_tasks_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.task_types DROP CONSTRAINT sub_tasks_pkey;
       public            sevqggnbwcmmil    false    204            �           2606    17038534    tasks task_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY public.tasks DROP CONSTRAINT task_pkey;
       public            sevqggnbwcmmil    false    196            !   �  x��VKn\9\�O����~�vAb�d`؁/��o��{�Dif�W�R=~�Eq���(�|BB,"W���s�b8���O?޿��<�}�Ԃ�=����-vr<��|}�����p.�q�+QOړl�%���8�Ub��%m�%\�ġ���T�"=���,K%eO�BV%O��Q�Lj��@BG���c��vĶ��<4�C).j�"V�2� $DY��������ёВ�7�HDV
���N�'rQ$����&��Ѭ#L[l�nb���U+m���ˣ1���v�*Wt�x��-Q�zi:*�	Y�\6�L��z��IQ�6Q;>덢v��q��Nũ�R-fA�x���������<dV��sf<�^-�à�3m	��a�9����X���(
#Ei�w�N��'�tTS(X�Bp`�c�C:s;�M5#��\%B�59����Ŗ��S��p�0�{��AU7�H=��Ӷ�j�
Ҡw�=��0�R�C��a�y]��U�O��9RH�ǹ����b��r̓�9��
o6�ȯ����K��p���y���9�8چC�LF��s�:i�^N]	��Iu,���A�U�-v�������˿���C_%���em�1���Q9DT�����\Ȗ�%��@�5�Q��^R�H،�`��VFk+���8��������KW�F��J���B���fN
��}����{5u>a��I�90�Ŭ�e�54�V��ـ���@��w;�۔-h��	����uVL*�OY	0��E e����w���O;.'�m
���k2�Z�+CD;�[�{z�b=�m�-�KZV<(o�E�5�%��14/�lM�*��ͻ�[�����l[�Y�M��O�������:_jԾl1���������          g  x����n�@��㧘M��3w~��?�HU��r�v�к��e]D,ZU��5(��Q��o�H r*�F G>�~���k)���կ_V?�8�nu���B����Ġ�ޟ�_��y�� 9�p
���h�ЀD��Ԙi���p�K�&�A���K/��}��<NS?ǣ�?�^M���J�@������i�yk���)����N'��������˧#d�_T7�����u�A���%Z��.�\���E#N:s)~�-�����z��t���Ֆ "���@� ZSX�S
FNKW�s&�Ȥ(Sm�<���i��E\54F��\)	�)�� %<&�U����I��c�G׫o6E�Z�QV-��x9�a�j�`D��:�JB¶I]{�I}i[4��W�ay3�ێ^Z�e�>Ǚ���y��s�_�O(C�Z�8φ�Lg��<�h"J$�����}�W՝m�k�"���8@�,B�S�Z'22B�Lf�w�5�.�&���E�W_=ض���Il�<��55�@va�� �u��s��G��An?���)h�4*�M�#WA����Yw.wc�8eM�+���f�g�qM
���t���'�dI��=���N�PG���K������<��^z      (   �   x�mQ��0��)<@�a'6Ct�~w��%q��u��d		0A �7�MƤ�6�������J�վ�~��`8�Y[i�L��N�յu̓k��5��5��\�%�|�H�ٯs s�-6��[�C�+���{i�iZz�Un}�{�I�,�.�H�nw�hYZ�m��:&�j\C�ha�u{K��J��.�p}ޙ��^C         h  x���[�7E�=���ԋ�Ed��
�d�i^�iM�.`` A����|�J��o&&?�~������]����_�~������.P�X� �,Z�m@�E��^h��Ht�z��,xU����N�i�>)��PZ�i�������vJ!ՠ�RX�U
���J,��+��2��)K{e��i�^9�!V9�u��W����,�!^�U�WA{U�+��u���(�]�:-,j@+���E+�΢�������,:��]��6a� ����	>5�'�Nm�PH��h��:��J!uj��B�Զ��n.y���m^ㆅV}���ԩ}��5�ԩ}���xݍW7,���nXx�7^ݰ�o��a�U�xu�v|^�+�N��WH�:h��:u�^!u꠽��si,�)�=L�k�U��s�Q�ΥI8D��ԥG8D_>�R�I����~Vc���G�K1v��>k,��)ZU�ϺTb��L��;E{��FG��F��h��Ht�m��O%$���K6}��O7l�s��Q7p�s�΀.���n�w^���άx ޹u;���]7p �����0/Zm�0�ڢ�a�Dy�P2��e����+�{ӣ��Z��_���%-Igɒ�6X�5=�!,���P��IK�$���5�IV��$m�$�K����%Jk���ڣ���H��i�2���*e$w�]ʦϝ�I�&�mʖϝ�)#�;��&�m���N۔�ۃ�	�;h�,m
ڦ��<h����mZ:���=k`�/a�Ŭe	�(Z�%L�Y<��]����0qژ
^�oj��:��*�Z���9�s���<���<���<����k�Us��V
���j���
�?-�WA{5xA{e׈�j�����U�^ͳ/���g_B{5Ͼ��j�}	�Uy�.aoF<�-?�ʫ�I���#s�eo���-{+/��h����%�V\ܑ=ɷ���iVy���Wʌ�VYܑ9�*oe�	9�*�D9�*�E�.��e��B{��2*-��d��&e���Si��)�t齮�Es2Zw2]�iS��t�f�����M��Φk����l�FӦ���M����_���~��65ڦ̏�h�2=F�m�� 4mS�Di�p�%ʏ�q�(ʏ�m �G�(CD��3�Q~�BD�9�o{m�����ƶ]�Y�$j,�Y��띡�T{eѬ����.P��xgQ���`Q���m�
=X2�Mޡp1x��n		�'4��Ph�%h���Z�Jͳ����GkAK5Oւ�j���l��j6�B{5�x���x���M��^ͻp��w��A���M��^ͻp��jޅ#;�v����W���]n`]n2��y������su�Ic�O��m��/��]���M����;DPe��Xt �o�@he� �h%,����}B�+B��W�6
�(��_Q�)����THEi�0�.Jk��W��
�(��_Q>N�+��B�+J{��W��
3�b�WH�h����=�?�Yg���T���3�D:�"�����5k�9C���n�P<��F�34[{[�����b��(��Ps�*�u�OJ��TbJ5T�(�ӥJ+5Tک�(��R�G��
�Č�
�Č�
�Č������q
^��|�h�检F{�TbF{�Tb��j��B{e١�/��U
Cycty�.�]ޠ+F�79������ǿ��      &   3  x��U�n�@]_�H�R���w���P��J��*U��p u��D,Xt��.��"-T�U,��U��8m�fBEE9����3���W@��%?<�����T���w@"H�%���Yr����I�7����<��#\��6qqI;��h����������p��2��T'�9�r8�a6�%Ǡ�0��ٚo�䜴�_���ဠ֯A�,1�k�VX}��jgw�������+��ε<N�m��Kແ_x��M�1n�0KޑSD�,9ƽ��&a�����Xоw@�W�ٞh9�+1��X!���D�CY9�~<��y�T��;iI8&���
^]dɧ���Z��!��֤���_:�g��+l+,E�����8������{@�A')˓���֗W���(w���dz��80��~����\]��QJm���J��
��F����3�z�O�Ш�ոg��z�m��-�GsJl�����7�E�9���Ħ���x���A�k�R��lAI.���oc�cOHt��$a�ۯv�2�[�@��	F*��s{�����Mr%!4��Ħ�D���^���� �<�-�p��\�M����%�ؔ���\&�\���W5��jӡL��>��͸����11�ĦL%�f�A����4Ag�Ξ�(x>����ud�y�E�鰥Q�-%&�#4/��h�x�%�e�t�F~s���{���(�a����l�#9S��&)���ފ��)8⨜�Ԟ�V���
PX������l}�|�uAqOJL&����� �{�iՔnV�ɹd� �J,���{�i���%         �  x���K��6E�|������xB d*'��PE4�Į��.��s@������?&4h�~�x�0�0ۨjv[�����De�%��K�)N��Y?0���g7�Q5��zg��<����6�4|���]B���M�'�lA���'F�%o9[��c�)��!t*^P�gI��UjYLp��h�[�V���0�o��j��<#��P6	�VW����a"3�o�rq���٢�Q�Z8�Sɪ�j��X1���3�LAՄ�����������W0O�#Ҹ�l�Lo݊8�M-Wv��}39m�Fj�Vio��z���kcg�մV/[�T/,���i%c/��X߂�:F�E{CS3kCֻ^�Ƅ�%�5�{Nz�}Y�$A�Q��ƥ��,�(\�b����$$Y[$�ք�����{ܭ�X�d�B�~�Nұ �R>�|χ3cK@�JxUpr����s>ۅ�D5�:��T���z�����	�F�.�T��%Z�w�����6�ҽ�ju�<}@��6��h#��-�B�p͞`�[������؍��/����"Uv��FJ���}/�3���H��T�:�� �$�9e/�M&��v���¼����ye0\���󰇎Z�f��\�U2�FPuFM����v��K��1�/WCU�t������,��&;�fz���;�>�h���d�'�َ����$�f�F���I&�s�Wg�'�-�q�=m���]�p�����}_�j�`n�}��"�}��k5��rXJ��n�$����q6����#��%Xzp�*�nP�#�U��-%�\ �2��pೣ9� V�>@[n�+x���oUk�h���'9BlX|��	���W���@T�-�Ⱦ@^ �,~)�2��?Ȋ����f��5r!>��1^�p;��T��[҉*Y�J��;�NW�7�B��K���>�]�i]�I����WN���u�e��߃�
Wb8��I>�؎�A?0��I�mi�sBB�7JL&�=�W�WN�=2��j-ڜ��f��X�Wd�j�ѾFP6�3�!�M���n��� �YI�z��^8Z�l�^kde[�"y�࠸ēB�vI�S�情[������]��n������3�MR�D�.c��n�`�]��S<Ӳ1�ׁ"�/= j��fC�=�FW�A:�E��ߩ��*U�����ݬ[F'��}���Q�NPf?̈��>��L�2�i>^�~���K�yf��1fY��C���Y��AU�>�^�k1ۚ��B%B\�$g_�s;6�@�v	}.�8���G�<j����ݭ��)��\���a`����}q��[�K��8� ��e*"��糣ְ�	K�7v�;]X:��x�=j�:w���;��Um�z5�r�R�����*�Q�or�&��o)�oF���cQ��f��POa��ɯcAŲt���1h��,��M�7`T�rVp��g�*�.'�}>P������0�     