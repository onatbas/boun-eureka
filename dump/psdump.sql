--
-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: anno_annotation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE anno_annotation (
    id integer NOT NULL,
    message text NOT NULL,
    "storeKey" text NOT NULL,
    listory_id integer NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE anno_annotation OWNER TO postgres;

--
-- Name: anno_annotation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE anno_annotation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE anno_annotation_id_seq OWNER TO postgres;

--
-- Name: anno_annotation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE anno_annotation_id_seq OWNED BY anno_annotation.id;


--
-- Name: api_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE api_tokens (
    token uuid NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE api_tokens OWNER TO postgres;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO postgres;

--
-- Name: post_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE post_category (
    id integer NOT NULL,
    name character varying(120) NOT NULL
);


ALTER TABLE post_category OWNER TO postgres;

--
-- Name: post_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE post_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE post_category_id_seq OWNER TO postgres;

--
-- Name: post_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE post_category_id_seq OWNED BY post_category.id;


--
-- Name: post_marker; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE post_marker (
    id integer NOT NULL,
    lat double precision NOT NULL,
    long double precision NOT NULL,
    color text NOT NULL,
    mag double precision NOT NULL,
    name text NOT NULL,
    listory_id integer NOT NULL
);


ALTER TABLE post_marker OWNER TO postgres;

--
-- Name: post_marker_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE post_marker_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE post_marker_id_seq OWNER TO postgres;

--
-- Name: post_marker_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE post_marker_id_seq OWNED BY post_marker.id;


--
-- Name: post_point; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE post_point (
    id integer NOT NULL,
    lat double precision NOT NULL,
    long double precision NOT NULL,
    line_id integer NOT NULL
);


ALTER TABLE post_point OWNER TO postgres;

--
-- Name: post_point_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE post_point_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE post_point_id_seq OWNER TO postgres;

--
-- Name: post_point_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE post_point_id_seq OWNED BY post_point.id;


--
-- Name: post_polyline; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE post_polyline (
    id integer NOT NULL,
    color text NOT NULL,
    name text NOT NULL,
    listory_id integer NOT NULL
);


ALTER TABLE post_polyline OWNER TO postgres;

--
-- Name: post_polyline_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE post_polyline_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE post_polyline_id_seq OWNER TO postgres;

--
-- Name: post_polyline_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE post_polyline_id_seq OWNED BY post_polyline.id;


--
-- Name: post_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE post_post (
    id integer NOT NULL,
    title character varying(120) NOT NULL,
    content text NOT NULL,
    image text NOT NULL,
    publishing_date date NOT NULL,
    "timeInfoGroup_id" integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE post_post OWNER TO postgres;

--
-- Name: post_post_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE post_post_category (
    id integer NOT NULL,
    post_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE post_post_category OWNER TO postgres;

--
-- Name: post_post_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE post_post_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE post_post_category_id_seq OWNER TO postgres;

--
-- Name: post_post_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE post_post_category_id_seq OWNED BY post_post_category.id;


--
-- Name: post_post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE post_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE post_post_id_seq OWNER TO postgres;

--
-- Name: post_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE post_post_id_seq OWNED BY post_post.id;


--
-- Name: post_timeinfo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE post_timeinfo (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    value_count integer NOT NULL,
    value_type character varying(20) NOT NULL
);


ALTER TABLE post_timeinfo OWNER TO postgres;

--
-- Name: post_timeinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE post_timeinfo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE post_timeinfo_id_seq OWNER TO postgres;

--
-- Name: post_timeinfo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE post_timeinfo_id_seq OWNED BY post_timeinfo.id;


--
-- Name: post_timeinfogroup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE post_timeinfogroup (
    id integer NOT NULL,
    "timeValue1" character varying(120) NOT NULL,
    "timeValue2" character varying(120) NOT NULL,
    "timeInfo_id" integer NOT NULL
);


ALTER TABLE post_timeinfogroup OWNER TO postgres;

--
-- Name: post_timeinfogroup_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE post_timeinfogroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE post_timeinfogroup_id_seq OWNER TO postgres;

--
-- Name: post_timeinfogroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE post_timeinfogroup_id_seq OWNED BY post_timeinfogroup.id;


--
-- Name: anno_annotation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY anno_annotation ALTER COLUMN id SET DEFAULT nextval('anno_annotation_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: post_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_category ALTER COLUMN id SET DEFAULT nextval('post_category_id_seq'::regclass);


--
-- Name: post_marker id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_marker ALTER COLUMN id SET DEFAULT nextval('post_marker_id_seq'::regclass);


--
-- Name: post_point id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_point ALTER COLUMN id SET DEFAULT nextval('post_point_id_seq'::regclass);


--
-- Name: post_polyline id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_polyline ALTER COLUMN id SET DEFAULT nextval('post_polyline_id_seq'::regclass);


--
-- Name: post_post id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_post ALTER COLUMN id SET DEFAULT nextval('post_post_id_seq'::regclass);


--
-- Name: post_post_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_post_category ALTER COLUMN id SET DEFAULT nextval('post_post_category_id_seq'::regclass);


--
-- Name: post_timeinfo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_timeinfo ALTER COLUMN id SET DEFAULT nextval('post_timeinfo_id_seq'::regclass);


--
-- Name: post_timeinfogroup id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_timeinfogroup ALTER COLUMN id SET DEFAULT nextval('post_timeinfogroup_id_seq'::regclass);


--
-- Data for Name: anno_annotation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY anno_annotation (id, message, "storeKey", listory_id, author_id) FROM stdin;
47	biology mostly	b135f90c1f0f74ea9a70397479da50bb516ef5483610d1f385debdcb41882c8d	2	5
48	I went there too, It had a wonderful view	e4ee788a586867b7b1b8afc9ab175fb92a4677463293527ea10c03488ee94633	47	5
49	biology mostly	2e2dca71e226c5fb689e109cea1a889d6d7f3239277110c877e4bbe276114cf1	2	5
50	biology mostly	5187ccd92ab612bfd6c97c1eb7ef6a30458a40045cf2b79733cca99dc85ad959	2	5
51	biology mostly	df2e0f0db5c119f69b3c90c444b5d72e60e3857103cf1c87d9611c72373c8ce1	47	5
52	my favorite	f24f7363d788576620eca5fcd81bcdfaf6eb2e60e78f2e5fc9ba31d8c8d3770a	47	5
53	my favorite	ca7a5352d298fcaf3974b752d6429510e8218091f59e5fabd5c5788b96a15fb7	47	5
54	biology mostly	f0bee221b27682fe47921e9bb96d2de37618dd909dc89d43534b12aa11a41930	47	5
55	biology mostly	b26932485c28921016c4fc2e276099978bec97a82bed2736633b4ee0622d94f2	47	5
56		fa93f9b3a639d218a45d5c438ca40081e716d3aaebdbf82fdb1470f6e54ca8b0	83	27
57	Nasil karar verilir. Cok zor cok. Ama sagliga zararli imis. Ne degil ki?	d8188754876952c33fb023d8be876b7dc82822799c3cab3caffd538e9e84efae	83	27
58	Nasil karar verilir. Cok zor cok. Ama sagliga zararli imis. Ne degil ki?	1732b290c5db3d06a0fdcf5abc08c30f80460bc3e81dd10c83fc3b22b6d4e8b9	83	27
59	Nasil karar verilir. Cok zor cok. Ama sagliga zararli imis. Ne degil ki?	ed81b8aca0c56b5ecbe2cef85ba6a1cef32bf3bcc756b0a6d59a9372be68241d	83	27
60	And, there you have the sahlep. When is snow coming?	9eebd4a2d89311a34159e8f0bfb96fd147f39109771fd160d86e14e53b8fefdc	84	27
61	Oh, no you didn't!	c3bdfe1e376959088e5c3f6a84fdbe53e936085c24bbb5425a77cf1afc08c9a2	84	1
62	biology mostly	a1ac84f1ccc8f1bd24fd6db62987627c07c591bc068e4b63287a9879e489b7c5	47	5
63	Benim de çok gittiim bir caddedir	f2777a3326c6ae7b1ee380ad14b063eb1aa6b9776ab4d4309130e6d6ef65baf9	28	5
64	and onion rings 	18988a53af84b0e6313862f394fa5c021194dad18a934d19b57002c602c98da4	47	5
65	exactly	283a05c61e1983cd815ffa1265814f7290cb5683813f403ad6b32fb5311726b0	75	5
66	ünlüdür	de735f88f1bacbf8b4bf63731806aaacfa21e1533dd5f71b2dd1b8aa4b563f99	84	5
67	biology mostly	e94793b09d6bdb30ac19b1f81c437e13f3a888f925c580c40dbefa3abc9d0862	47	5
68	my favorite	1440c2079325c44cd41364785c50411e766069df39caf190cc0aa7cd3d3d91ef	6	5
69	1.2km exactly	fb98082343551bf05a4aad821d6451e67674c0346dcab745d83d4c491b492ee8	6	5
\.


--
-- Data for Name: api_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY api_tokens (token, user_id) FROM stdin;
5c048848-c5a2-4c87-bb48-b3a4268d2083	1
ab6d6a4e-d20b-498f-9a01-f15b19c64c30	1
cb1f99f1-40e4-4742-8f41-1643f49fef2e	1
99210634-2c31-4aa3-812e-257d619024e9	1
5602003b-5ab2-4c01-b738-0d2b7fcb51c6	1
ac41a9b5-9097-4e60-9842-21682683031c	1
85b88a94-db78-4638-9ec1-df785c13745c	1
fad5e278-84a1-4f3b-bf78-1b93b7ff10e1	1
ec4fca42-7aa1-47ed-aeac-e1f8aadac18e	1
1fe0ef00-7bad-41f0-b3ce-cbf749422da8	1
9018dd91-b9c3-4672-854f-1f16d77c678a	1
64e9f234-7953-4789-8a81-2605486df852	1
5f477fb8-6511-4acd-9b85-895570e2a9b8	1
203fdbdd-5d6c-45d4-afcc-531abb6b01f5	1
a02eeca3-e07b-4ea0-81a4-2c3d7b2c05fa	1
7dc53f62-efde-44c2-a4a1-702baf60803f	2
b6d0133a-5cb7-4401-8ae3-c1cb27a2f1dc	3
d348f201-ab36-4573-a4a3-6e1f4c260e33	5
e69f6176-5374-4a57-bef5-c78062be7d53	6
524b824b-5ce1-4cfd-a688-51fb20081866	7
dedf562f-6fbb-44c4-9852-886161247b5d	5
061265cb-7ed1-40f5-b725-31b91bb27e56	7
fec5a63e-8f93-4c0c-95b2-ee9e2c7c82e5	7
d15f8399-a541-43d4-a6d7-0a94ea6ec420	5
b446b3f2-600d-4fed-b81c-aeb8361b5593	5
abd12c4b-cfa9-4582-9054-5daa9e246f7a	2
01076594-5782-4880-85cd-ac33957efb62	5
f51ad890-f634-499e-a68d-e674fea048ab	5
29085f75-1b2b-442b-83ed-cb162a64a4d5	12
7265c0a4-2498-462a-8a36-1796d154fbcb	12
6f06a239-789f-453b-aa8e-fbf5556bbd6d	12
958f349f-f89c-40c6-88a8-9426e4b9c64c	5
06c88cd8-060b-4c93-b1d1-01a0c2f44d2b	5
c5f2ca93-a3bc-47ff-9aa5-0ed17f225ef4	5
169d9c75-43cd-4304-b696-dc5dfd950568	5
c4a2e628-fea5-428e-a9b7-082d88c66dae	5
0d0579b0-82c0-4a68-a677-1413e36e7302	12
65115e71-cd30-45ee-a3ed-61d22e2f4e35	12
19c1a610-42bf-4a31-b2b9-07d11873f051	5
82c47c4c-b20d-416a-860f-2981ea95bb78	5
8b597327-bb03-4838-82e7-67c8b3ff2234	5
553185f5-ad86-4951-86ce-327439bb46ab	13
19596b96-b597-49d8-bd6f-4a6a6afb4a0a	14
bad5fbc9-02e9-4c62-9416-99e506018ec4	14
88a1f854-fa40-4d32-9c66-5ecd948f6a0f	14
85d25f51-f862-4ab3-810a-fcc78f1ce6fd	14
2b9c3078-5908-4d13-aba7-a697edc2c529	14
544c3e4d-8970-4abc-8f91-cec2fbb92423	14
066668d3-37f2-4beb-919d-0a146ffb18eb	14
f22c5db6-1995-4cb5-a9b4-78317107c353	14
c054c152-4c01-465b-b8b5-2631c885dfa4	14
1b82953a-cfbe-4a43-bcc5-3087cc6eb8f3	14
442d9f04-5689-4309-92c8-3e50e38ef6c1	14
2a2c6be6-ccd2-4573-b99b-6472ea5d74ff	14
f5b4004a-f9fd-41e1-8141-6e087d8fc70c	14
9f28d7ad-c141-4d0d-a27d-47a18bce40b5	14
25ad4f15-ad4d-4417-9ee2-07284b63588a	14
7fadaece-5b96-41e6-a022-8a6613d0f47a	14
7c9e7406-421d-46e6-8652-f34c53cbae01	14
bbfb7708-fffa-4926-9436-04b0d55397c6	14
fc09ea97-6f76-40c1-ac43-4227741cf9f0	14
2cb858e5-84d2-48ae-8bee-3b8365b5f93c	14
468defbd-db4f-4372-b1a2-2cbd37298be9	14
622f1283-5316-4908-9a75-7242671cc0a9	14
5a612d51-d4c8-45b7-8798-032555fecef4	14
69d17d12-87d8-4fb0-8835-2a719dcbf97e	14
c4909e93-41be-494f-8482-b6d2e699e573	14
15149671-774f-494f-9bd7-da285120c6d4	14
653fffea-9d1c-496b-b6e1-0d57e74000fd	14
5b447527-8f0d-461b-9890-9547ee923624	14
0aafed1d-bd11-4178-ac9a-1cdce92908fb	14
41f0303a-a0ca-4335-9cb1-cb58e4fe2ff1	14
c8752546-ba2a-4824-884a-1b3bf0e83847	14
ea57b83b-df62-4171-8837-82ebec625daf	14
a7f132ca-fb55-4b94-9876-59312ef8520b	14
57beb03b-36af-428c-9253-b282ee1cbe17	14
7726cb40-b691-481e-b457-ddd4ca3dc617	14
2a19a487-6abe-49ac-a639-e92e15b82a17	14
06a10219-c2fc-43bd-b898-ec4bd16dc8cf	14
d1886c61-a855-4935-9ea4-dd79635ad859	14
1070dbe4-d32e-465a-8bd7-c59783a6f30f	14
9b8ab4db-a9ca-4e88-bedd-64fa7fea8ce0	14
fd807370-abb8-40c9-9352-7353801bdd98	14
45d36458-d178-421d-9621-bcd1b1470718	14
032dc703-cf94-407b-91f2-319cc0ee9df1	14
3eb5c69f-e236-4627-8f35-5370161eaab8	14
2c1bedfb-63d8-4b60-9c14-781902b6591f	14
3b3bad1a-2bda-4524-90cc-67c92d329010	14
f784ab81-948a-4f83-8b76-ee80d535b270	14
801584c7-39b3-4c73-a10e-185c07f1e8e5	14
572d6f65-4476-4593-804f-e2a31984746b	14
6cc52d56-74e3-48e6-8476-827866e2e794	14
50f3103b-01c6-4ab7-abab-6f5c7441c7c0	14
316ffd3c-5a44-42ff-b997-f81c80a0cf4c	14
1c7a8400-1c84-499c-b154-3bdfd0fbe274	14
ecbc416b-6d2f-45b4-96d5-54e0d6fabe99	14
571b3a14-0fe4-4009-962e-a47163ead042	14
9e2866aa-126a-4949-8aa6-ce8d6ede33e5	14
2f4a2929-9fcd-439a-a6e4-c3c0eb159f39	14
cb6b71b8-cc5f-45fa-9981-2dccc3861531	14
369062e9-1710-412d-8159-744454e6dc30	14
836f483b-a092-40da-a470-0792feba40b1	14
0d51611a-cb5a-4636-a3f1-24b62f28405e	14
bbf8ac0c-29a5-4320-a0dc-1607669c7bae	14
b01bff91-1f5c-4036-a198-9f9e02ab98fe	14
6127b85f-5778-4ad3-b28a-8e62422f9613	14
af152920-0318-4262-906e-fc738c8a5b5f	14
fa9f2147-db11-4aad-8ef0-df15e12705e5	14
e9be2516-1d89-4def-ab28-a3975aabda53	14
861b5a0f-69b6-4fff-adac-ecc718a912dc	14
04acccd7-1c65-4d55-9ce8-0b941a49d7b0	14
ed1d091f-1613-4e8c-ab00-f4dcb78980c5	14
9a0a022a-ab6f-4308-89e8-a0aa05f71e02	14
271721d1-c82b-44ef-a475-ceb377a756ac	14
1691a6b0-4f3f-40b5-b66e-11f2e3c1ea0d	14
130adb05-4365-40dd-962c-573819e8df51	14
cc42c2e0-9f6d-4bf5-a36c-9c2ed6329423	14
5b3d5fcf-6d92-4679-9c7d-d063b543bfb0	14
f04a464e-9728-4a70-8095-763fcd5e53c4	14
0d03f8d4-e13a-4676-b9cd-07bc9e5dabae	14
65a36de8-85f3-44e5-9cc2-251e7aba6f03	14
e056ad88-c9b5-4209-8f0f-50a609330fc4	14
cc803ed7-e208-43ec-9215-19fe1f5dfde9	14
2078dc22-18ba-4124-87b3-9f6385ee6b49	14
6c179007-22b4-48e0-aefe-95867d90be6f	14
337b9119-432e-4f27-b973-f4be2154d1c6	14
45c98b1e-df17-4a31-827c-4eeb05f36d97	14
cf4e0255-9f01-42c1-a7e6-f03ea997f449	14
3cce57ff-6d34-49e0-a55f-aa1d118d50e7	14
f0c498c8-29b3-41c8-9fb9-5fe5c85d3219	14
75c799e3-29af-4e9f-b206-ac2019d608ea	14
75002219-b44a-4980-9378-974263b62b5e	14
fa3fed20-39e0-4b87-ab30-328fdd6f6db2	14
174823d2-cfa4-4912-b876-092bf8124f2e	14
73c3ae1e-bf20-4d14-a7c7-492be184ae1b	14
bdf4b217-6467-4214-95b6-e770f4ac4dbe	14
51d67ccb-dd01-462d-9d1e-82d2329eafb1	14
746054e8-6571-47f1-9437-47eb72772e8a	14
cdcdd138-afb2-4276-a21b-ae889815e387	14
ede63415-6b89-485a-be45-ec828773ed7d	14
7d6b6b6c-3cb1-487e-bd7a-5eb98af8982f	14
626a2615-a989-455d-8944-264e84fe7cfd	14
9262639b-e01e-4674-be5a-0ac423414114	14
6daf3bc1-808c-4a92-bc90-d331428c38c7	14
4b0d21fd-c419-485a-a449-9dec39a4d3a3	14
63453e92-aee7-4055-94b1-b34dce79573a	14
8bcca10f-eb7e-4354-a71c-1a414ab77a58	14
e5fcd6a3-3668-44e2-9091-df9637896cba	14
c8ca8771-0e06-4fb5-961a-6f4a326ccd19	14
2706de99-41f1-4364-af4c-caebdf82fdd7	14
9a988fa8-fd17-479f-8132-485da75ff142	14
713b2f5c-bbe4-404e-a9a0-98150e62cf60	14
32286cff-6fef-416b-91c4-7de4422574a3	14
04675a15-3e72-410c-8e9e-25464929050e	14
88e0a37e-9e1d-43ad-8f8c-4d19e603dd9c	14
4d0526ab-c007-4144-8399-4c71871e2042	14
f6f11e9b-a6c5-4929-aa6f-6541ab7af4bd	14
87be0ef0-e1de-412f-8476-72da9451feb8	14
cc1887e0-0421-4d90-89fe-64dfc8bcfbe8	14
84722b40-85b6-4986-bb5b-afe161021206	14
ba267cfe-c4ae-4aa7-8b4f-e7b2a57e8e8b	14
10c21cbe-0d49-48f6-b7e1-492ec8081b27	14
812e417d-f3db-4cb2-935a-e4ed53107795	14
30828e84-acf0-46d5-97a7-cc62ddf20a77	14
9c2f6768-d131-428c-9176-9dfe5e86c3fa	14
b861511b-cec7-4347-9b90-55216da15a7b	14
b1d36e2c-1e6d-4d0b-97d7-37083cb27993	14
327fc27e-2b51-416e-ad3c-a03411af46bb	14
d12af745-1845-4527-bb6c-36986d16fcd8	14
af12910a-47af-4de6-9084-37c23bb38711	14
4f5e960f-1dfb-419b-b849-833a21fbe2eb	14
5cfd4f77-ab37-428d-aae4-06dceddce129	14
cb24e435-f28b-4e03-be51-54d904b05b25	14
d14dc2a0-b88a-4c59-99d9-9181452fad90	14
f3d94941-c921-462c-8d6c-26227157a3d3	14
4bf37c36-4a08-40d3-a28f-6182ea06dddc	14
9b1536e6-e2bd-4c17-8028-1a5be05f55ad	14
4640f484-6d77-4980-8fcc-8a893b69c859	14
33afc1dc-7a72-4117-9860-eb659cc362a9	14
42a3988c-9542-403f-b323-31e7dc25193e	14
4805bb35-edfb-4aec-805e-5a9a7e88e6e3	14
57a8dfbc-63dc-4522-98ca-0bc94f945595	14
368a4311-6a3e-4cb9-8210-b41ac248aa02	14
6119a606-c419-4e7a-a285-ecd67c152c1e	14
11a89360-a380-43dd-b8e3-19366e3afdd8	14
42bb539f-52eb-4cba-9629-64cb7513a4a2	14
79ec683c-206e-4834-b918-a1994dba631f	14
eb7d3445-fde4-4921-b4fd-ba7a085f751a	14
3ff5a65b-e6f4-4306-ae58-a5339e20c92d	14
6a840f02-2eaa-4459-b9b7-512653a6b10d	14
4fb663fd-588c-456f-921f-69a415618ed5	14
cc341604-27e7-496f-b5b5-a77c8c773b05	14
0206c730-5da2-43b3-a8f4-a96bc860af99	14
341dff1e-24c2-4b08-9ee0-3db631d2d6b2	14
5cfce5fa-5dcd-4dbc-9214-b7e3366a5343	14
23397991-4709-435e-a212-901fd4be292c	14
7fc1ce85-35e5-47da-be7d-d519a554d3e1	14
eeb9cf4c-dd58-476e-8449-3b044da0138c	14
da397cbc-ced7-4f42-b4b6-4e1bdb9ad98c	14
489e71aa-ec50-4d19-ae77-d86ec06d789d	14
5647ba3a-6d10-46a7-bf77-3aecd130db98	14
68faf8ad-4107-4e71-b3de-7d8ca2dfd48e	5
dd3c1f5d-63fa-439e-b305-35a5749734ca	14
0817acd1-f836-4b9e-9835-bd0ba8909011	14
95cb8b38-6099-46f7-883b-b75546f7dcda	14
6177b73a-d214-4f2c-82e2-8b9d4a5b18f5	14
70c6aefa-1fa2-4532-8142-68a6c74a90ea	14
675a75fa-2fc1-4eb5-ac0f-fe836131c082	14
ddc3a4ff-a825-42ba-952c-02b1c510cf41	14
db88390e-8a0d-4c43-a779-976bda2c883c	14
62c80f04-2376-4828-8bf4-3d72ab5ecf46	14
a1e7c3b3-dd60-418a-8979-255b9a72e05f	14
9ace7519-ddb5-4cb7-834f-5af0cdf145d1	14
41c6c5ae-98a0-4eca-9234-763568bf770f	14
a59d2b95-8e90-46ef-8778-2368196d5052	15
5895c873-a83c-44eb-8963-e1d19e19644a	14
ccde6668-b03f-41fe-affa-488bef27c45e	14
f2dbcce2-e37f-4f1f-809c-ae2ed21fd9f5	15
7faac8d5-c81e-44bf-85c9-212a25d15b63	15
b2db8f22-08b5-43f2-bbec-e8ed652e5d11	14
9037bda9-f542-407d-8610-a32048c0a1a3	14
1d96774f-b599-425e-b9c0-375b34110cb2	14
089799bb-5138-44e7-bf7b-481c55cf95f6	14
d17c0455-bb18-4acd-80b9-63303550a1d9	15
a81e2e53-e649-451d-804b-0dc5d7de4311	15
4769fc25-fc0d-4fd1-8a7f-40c5e9089695	14
5a154d28-8bc8-48ec-9d46-719b601c43c2	14
bee1dfd6-03c0-42fe-8e02-49b516abdc6c	15
a8afd13a-79a0-4dbb-ab6f-466306d66c89	15
c413f1e0-ad62-4dc2-adc0-a1ffb9648a2b	14
626e221b-8fbf-470c-9fca-d967f85867e8	14
ada849c0-f5be-4caf-9461-771c3c4e91d1	15
6b1ba49a-e6b9-4ed5-881f-deada1c7466d	15
9a85cb0a-a8ce-4693-8978-a57fb0341a5e	5
a11ba072-1cbe-4dfd-b6a0-3aa0e689c5dd	14
d630b350-c5d9-446d-b83c-244bc49c7937	14
88a031c6-11fa-4e03-93ab-dd9d092547f6	15
84db3648-15c9-4c16-8daa-75ce5722588f	15
bfa82fb3-3219-4e90-99bf-acef2525273c	5
22c24aa3-4d20-4779-907a-e6114b201cde	15
70d09661-0b23-4278-8057-ad1934a6534d	15
f31996b6-aa59-44c4-86f0-456f550ce24a	14
dda7e610-e755-4b87-b796-f6cb528fad04	14
88ca21d7-b33e-491b-9723-6825e6d36e7e	15
33082854-fa54-4a77-b9bb-8ed9fac42244	15
1d98f210-f8a7-410d-b02a-eca60a965781	5
02438c89-4aeb-4164-86ef-5932aa0362dd	5
2a9b3d94-d9dc-49f3-94c1-7106a3212798	5
0c722f25-5bae-4e49-a2d7-625a1d2e84fc	5
8ca8aae4-92c6-4fcd-873f-b2e9b1f1b2b8	5
79ad5881-d647-4417-bb04-036d6584b66c	5
60f22b6d-65bb-4fc2-8f3f-395e9031777e	5
20bcecbf-2c55-4d4e-8c8c-670a35c99f6b	5
6399ad09-ca7a-4120-b28e-0f738515adf9	5
2c76e7cc-4daf-4f18-b359-e5b589e98537	5
ce27997c-43f8-45ec-bf59-3d4a4f375f05	5
859748de-3dc5-45ef-b987-f2e83f3b9a52	5
225f08be-7dd9-4108-ab6f-50c14e3861a6	5
ec66d8a4-272a-4709-b54b-71e88aab9ade	5
c768d3c9-192e-4e8e-8a90-f845457e1f3d	5
ec1be178-764e-4ce6-9817-e58da32ddc2e	5
985ad66f-a9a5-41cc-b001-faea8c1b13a5	5
8bc0af24-8274-421e-9276-b98000913cac	5
48b3cbcc-b149-4a35-aaf9-22a027a9e784	5
b0c487b3-3405-49d2-9196-0f4fb0a048fb	5
363a6b8c-a0c2-4a6e-83fc-96e7d81c38ab	5
68b9f33b-006a-429a-a9b8-073e39ee15e0	5
8c90884c-5c8a-4f28-abde-4f5212de17d4	5
f9f2c085-88ba-4f81-ad74-7b73a5453efe	5
6952610d-5138-408c-a5a7-81b812b590b8	5
734b3aca-0d7a-4c80-9fb2-5453d9ece254	5
2aba2948-1956-4456-a0cb-a8121b2f7a25	5
da0a4687-a7fc-4e1e-ab21-c249ae818d93	5
49a9d56d-450c-4cbb-bfa6-81c34dddc32a	5
b86980d0-e208-4dea-a9ef-2482594331f4	5
bf0fdc2d-13e2-472e-b179-046d356ff10c	5
a68458d0-6eb1-4df4-9113-114f895d5c2a	5
adaa8dd2-9aa3-465f-8039-6d4d1b919b20	5
c0d68ca1-4899-48b4-9740-7aaeb5dd283b	5
c4ed224c-aa69-4c85-a951-1143e20637e2	5
da34ac2d-a1eb-4127-b552-c0cec1ffeac6	5
0363541a-e569-4b0f-85f1-6d932b163ccb	5
b23ad7c5-addb-4b29-9e72-6e04fe78cad5	5
268200c3-52fa-46c2-a1b7-de99c3f89d8e	5
ad09ef8b-efc5-4db5-858f-b42755744c44	5
1e900692-52c4-4992-80af-3a03d500bbe6	5
38f130b1-d0b1-47d3-9bd0-70f1715f3c9c	5
3c94a2dd-cbd9-496a-ba23-58f3638e5f73	5
f10b74bc-a053-4c7a-9329-942081140f74	5
c57dc388-c9ab-4820-b159-337783affa91	5
e2ab96cf-32a8-4535-8497-1ba454a5977f	5
fa523393-bacb-426c-9bc2-6872e73dc15f	5
74968290-29c8-4eb2-852f-7b07ba60e02b	5
f1c33187-af2c-475e-b0f0-a972dd9f4281	5
22a5dcdc-e3ad-4a79-98fa-a6defe49b5d2	5
b6990a6b-dfaf-4f7e-8d42-7381f700ab6d	5
8e914100-11bf-48bb-99d7-997e9ff7a1f7	5
694e5244-d3aa-4e94-9e34-823741f5667a	5
7618c77c-da90-4c06-986b-9f6984fa74e7	5
e581e234-68a9-4462-8c47-0058ddd39dec	5
e3677f07-1ddd-434f-9d6e-e09a15512aa2	5
8fde72cd-adcf-43f4-9a09-5aa154b70e23	5
a77cd66f-f7e7-492b-9cff-c3ffa56b2f74	5
9c359128-bc63-40a1-bbaa-90537b973eea	5
b542650a-ad47-4003-a21c-c093e312b33d	5
66118420-d5ce-474e-8969-2633dbf4d60b	5
2695caea-32f6-401f-a1a4-b9729d6bf53d	5
f067bf99-ef83-4858-ad57-deb1d2fc1ead	5
f57e2199-d544-41d4-9204-78ace96949ae	5
555e0344-72c4-461a-afb1-c9d3ef6f4678	5
e67d2f11-6820-421f-8fd9-fb7981a8208b	5
78ba5159-3030-4b45-b522-eebb5feafa1e	5
2d639719-4001-4a8f-8920-a4f6f50bc248	5
98f3ab3a-8be9-4334-977c-906528ce192f	5
28718e3d-0b9f-4d31-8868-08f52242f540	5
47ce1d82-f1cf-4a26-9c3d-a39b5296bccf	5
20a2be8b-2866-4f24-aeb9-60622b70190e	5
c5ae20e3-3807-4aea-aa1c-8ac85747bb8d	5
be75cc16-0d57-45dc-9b40-c39725dfcd7d	5
bf970dd5-a0aa-4716-8dfe-e9a32770eb67	5
8483ec1b-7389-475e-a1bb-cc58fcffdf36	5
fd4f2de7-3e17-42e9-8338-584552132e08	5
6ba31e5f-6f41-4a2f-a1f0-cbb81938bd6d	5
be6d0fce-9939-4d8a-a047-e4fbcbe9d81a	5
a0d070af-0743-471e-91e3-3ab7bb5510e7	5
220676c9-7c5f-4878-a3e3-2d968f193049	5
dcce2cc2-3f3c-4fe0-ac68-99794d87b0fe	5
3b056870-e183-4110-8d4e-99bbf4ad250c	5
068a5dc8-5fbd-42db-8620-49a1a333ba91	5
fd10a7bd-2c2a-4a45-aa56-b2b1cdab94cf	5
6e91e858-b70b-43fc-8faa-3314aaeaddb6	5
b59170bb-f1e2-415f-aabe-e730b6eef660	5
169ca005-df0b-4eae-88ea-11510ef01818	5
5e2de881-2e93-4a91-91ff-4e7d30cd5c19	5
6f95f671-8520-4646-9b17-4501f4645542	5
f49c4ab7-e485-48ee-aab9-d7547f2cbcc3	5
52f439eb-ff18-4789-ab5f-4384ae7b3038	5
fe1a6254-c990-4b56-ac4c-1661ab27076b	5
6376f5d1-e33e-40a8-9d17-a24a8ff1174d	5
09fdc2cd-0b3c-4ce6-b544-074dd6b03511	5
d7378070-c632-42c7-8c33-c91e28e49211	5
749f5a75-15c1-4b09-be96-3e21b7e70ede	5
134457f0-8cf6-4fbb-9ba4-cd5d3c8b648f	5
31ce105b-a716-4f97-a2e7-1ccd05b11bd4	5
9efd9bc5-e570-4ab4-a9e1-d368b114a0a3	5
2265bbc6-ac09-4798-88a1-ff74ef02efd9	5
5dafd004-688b-464f-9198-c4c7d9f6a1ff	5
1d647d74-3869-44aa-a610-137c3575fe77	5
5a663158-1ead-4b1f-b529-53cbeee00aca	5
d462998e-8426-4314-b5a0-90058ac9d020	5
9fa1c1a3-8b96-408d-ac6f-a97fb0cf70c6	5
e3d9d56a-ed0d-4e1b-93c2-bffa44388ef8	5
8b81468b-e9f9-4ae3-927c-cdf9725eb948	5
226eaaa2-7927-49ff-90c6-d2c065e9732c	5
6f2e1d41-daf2-4b03-8be0-c986f9c7e3fd	5
8cc3d3ee-7c9f-4a05-85ba-c25ded812dd3	5
425d2450-10e1-478b-8972-d903557d1636	5
31cec66c-baf3-478d-a0e7-683e3cb3cfb6	5
61c977fa-eca4-47ed-91ac-52b577197f9f	5
6908b7b0-8d45-45db-acd5-b4c2054714f3	5
ff7053b9-a74a-44d9-ade3-56611c7dafe9	5
4c971436-36d4-41db-a172-4055f9555176	5
4412b937-1c44-4e30-9ab1-dd451c2b2c5f	5
54cb2122-85e3-4bd7-968a-c49074bb6ae3	5
82225228-7d03-4f50-8ee9-be10650a7f6b	5
9fec72b8-7186-4da2-80ac-2aa5a873cd0d	5
7f057a8a-c6ca-40be-8d1e-c2028769e303	5
0204b3cf-6b38-472e-94db-6874f6dc6426	5
805aee16-84ef-4fbb-b88f-4ff71c02181c	5
1f1f9a4d-3103-4b95-8c89-1f23b33a271c	5
6262fe95-8196-49cc-988e-3d8d6432f0ee	5
5a997f63-906d-456e-a5f7-90c74572ee7b	5
6985dc02-0ecf-4394-90e2-af1f669d5edd	5
516c8ee0-9d87-4e36-8dc8-66964029b23f	5
b770f6b1-0325-4721-b976-8d021823a5c7	5
e56fd80f-97c0-48cb-9d74-5bbbf660438f	5
1755b7eb-3df9-44cb-b9da-afb4a28a4853	5
6c6c63f8-1dcf-4a79-808f-b0032b0d5639	5
13d0cd9e-0a79-48ec-a03d-36a9aabafce4	5
d592a393-37e2-4d9c-b015-ad5a7c6d3796	5
67ee70de-a2a3-45df-abb8-2d907ebea3c9	5
3623fff0-885a-4651-88bc-88d428a93b91	5
05f48708-87cd-4d3d-abb9-ffe52da7c347	5
0f4dd64a-0f82-412b-b4bf-f00feeece285	5
7f351e94-f1d1-4ddd-b814-c6bc04e68e35	5
e685945d-d5db-4582-8eac-6f2185283c48	5
03575354-2aef-4061-bba4-622c9b19b730	16
5a7b1ccc-7ae3-43c5-ba9b-73a51dfcad5e	16
12896e58-324c-4c9b-99ac-c655e839ba50	16
ae65753c-dcff-4fe3-bfe1-8f4870fdb53c	5
8da8899a-7b61-470b-b273-e6f6d0ae1f2c	5
cf607af5-7a12-4271-b9c0-73ea7bae17e6	17
5d54ca45-4855-4d90-bc20-7643737abf07	5
aff74109-84ab-45db-a8de-29f3c8c047cf	5
2c70cda5-df06-4188-830a-105e96c8219b	5
c46cc4ae-799b-47ab-98d7-02ea95cedc8a	5
4ebaadbb-a4cf-4972-95af-f2c478500d0f	5
b9776e22-2b2c-4e5b-a550-dbf71c499bfd	5
9dd89551-5fb1-4f0a-92d3-1a42030c6e66	5
4e8c724c-f403-4098-a850-32701647a765	5
835d99c7-44f9-4609-bbdd-94d23f2d370c	5
ce37ee8a-e846-463b-8654-9852a286b1c5	5
90dc38cd-674b-44a0-94c6-171df480e110	5
7962dadd-9842-4c93-96c7-eaba8b3c1f20	5
20118f66-a59b-4b3e-a1e8-5002c4907af0	5
456b6da0-7d99-4ad2-930c-3c6f20e7b5c6	5
c8108a22-ae67-4077-97c3-79a834ecc439	5
55c8f2ea-b8b0-4a7e-b67d-1b5017d096bf	5
b53db6be-5c75-4260-80f2-ec49d502e7b2	18
c7a5d60d-c992-4914-a84a-c5ec78d27921	1
65b35466-cfec-4110-9389-4ada2d6b84e8	1
0d7445ae-7e59-47c8-bb4c-32a927d06753	1
fb67f0cc-cbad-4cd1-8bb3-b1692e9ed3f8	1
bbeba690-1a76-4801-90b2-1f2da5faba56	5
5e7bc10f-a1ed-458d-8ae4-a16834b00bdf	5
d12534df-3e9c-418e-bfbb-33dcdff5ccbf	5
fe6094a2-8592-429e-a53c-3fe0f77cb287	5
c81a70be-8e30-41d2-b051-201063036fa7	5
8bc8211d-150a-4a2c-ac78-097e6a22fc93	5
7d9d86d6-2549-4ea4-8936-7821fed898df	5
355bca14-7fe7-4707-a1cb-547f2fd84027	5
a15a31bf-86aa-4881-a90d-821aa04567fb	5
438f81b2-26ff-4f6c-85b5-5ce0709dff32	5
6bd1f0f1-e0f9-4bc8-adcb-e69792cd6b80	5
b4634b6d-856a-4a97-abc0-1f7b9d1ec1eb	5
d0ad4f18-ffe9-4d70-a6df-901a6cc85330	5
b8348158-f41b-4a10-b61b-42c3c7b57d5a	5
dca46034-86e9-4051-9fec-0e5add48e53e	5
eb467ed6-bc28-496d-8542-bf4fd8e0c13f	5
b9937781-4c1d-4d04-8fb9-ad5635956f76	5
f083c804-d828-4d3d-84d2-004124ab030a	5
daaf758e-ff15-4665-9764-59a043c6c7b8	6
a870bab4-c4dd-4faf-ab31-d63ca0cc3fc0	5
144b4fc4-271b-40ac-aacd-bad6d7770937	5
5a3b90da-5815-48ca-8eb3-79147db15512	5
28ed3a0f-8495-44d1-8a43-f2dae932730c	19
b8523ad1-d2e6-4081-b7dd-bfe425f7395b	5
e1141596-7c0f-4eee-bf10-27429eef6671	5
b73b0e13-a24e-4148-bd31-fbdd8529c2a3	5
b2a5b2dc-522c-42bf-9256-f6593f320a4f	5
880e88cb-a375-4489-ba41-f12fb10783df	5
a2db1841-4e58-4500-adea-3c36fa568180	5
9d7ec240-0e96-4a83-a1bb-62b0a90bab2a	5
1d3852fe-a125-4d5b-881f-b72bfa8bb180	5
503be309-8c2a-4717-8914-b6ac1a51f610	5
3208be48-9b1d-4451-9e0e-35a0ecda83e8	5
0ef3386a-0310-4e63-8d09-2a4b0a664ab7	5
2053e6a6-608b-4365-920a-51e211e47333	5
a5a2cc56-5eed-47f1-8b70-707fa431ffde	5
70b9077e-ed56-4c9c-9273-cef81a07ce29	5
71553abd-ab38-4841-9540-ddbb74e278f3	5
012a9530-bf6c-4fc6-8a5e-2d2f6cbd885d	5
b0625a44-fcc9-44f9-8199-e2ca5fd066f0	5
5023dfc1-f610-4eff-b201-0c60f0a12cf5	5
b742e0da-e534-423f-93f2-87a94f5a2daa	5
c7f54bb8-3971-407b-9196-bfa0ad3509dd	5
7cee89e0-8242-45d3-a63e-f9ca28a30030	5
bac59bae-eab8-4cf4-b727-8360f7d913c4	5
94a45aef-fff1-453d-b134-f90f7a76ba31	5
3f28327b-b14f-4cea-b12f-de8e5137555b	5
60bebaf1-0a86-4296-9c8f-c7804b114ad1	5
8de5396c-5475-4e4e-8f74-8eb780e8d82d	5
a38d0657-d76c-4b7b-90d5-09fd3238084f	5
bae9f252-ba27-4a80-9e06-c3caa484832c	5
4c8d6840-515b-41a3-9390-614a9775bf9b	5
7f10b971-dfec-4693-91ee-48b5b874c802	5
d7f2d1dd-1262-412a-b62a-e5ed46ec8023	5
0f63870b-8ead-4520-a079-226b086052ac	5
18e871e3-6409-4f06-8ce0-aae245277f36	5
611e9dc9-d9cd-4a31-add0-56d7d74be9f4	5
dbd9454c-d64f-4ec0-a185-d4b61c92f5d1	5
77e491b9-5cf8-4681-a42d-e9488062fee7	5
b9b0bd17-f573-423c-946b-6cde1342574d	5
1b36a91d-8619-4a2b-8898-85a85e36ac6a	5
1bbb3204-b07b-40d4-988a-5c6c39835b99	5
df9857da-cbd4-4be4-96b9-0ca62e2b956a	5
2af5f0c8-3ab4-4105-b182-7af09eb3eb38	5
62d06024-90ce-4f16-937b-6f1d0694a229	5
c94a824e-8223-4db7-9163-baa99bf5ccd3	5
249150c1-8359-482d-8bd4-61f09731746b	5
463c9224-b489-4622-86c4-13c3fcadecba	5
b78c22f2-0dcc-4ebd-8053-addf16dce190	5
224d01a6-e2c0-4f19-8492-7f96a51f003b	5
4b4580b6-061c-458a-bcea-37480f0cbbb4	5
2538f58f-926f-40b0-9401-10faff1dfa8b	5
3d15cae9-05d5-4d23-837a-083ae880dc41	5
c5ac7c6a-e3b2-4aa7-bb22-8f4ac33f9bde	5
906cd6b8-e80d-4ecf-9720-a266bbcbc9fd	5
18788c61-632f-4663-8003-e87533d05f74	5
b684607a-8c69-4f40-9604-764a516695b9	5
9e54067a-062a-455a-bf1a-83cb77302a34	5
78e6f7da-7c7b-4b30-ba6e-66bb82c3e61f	5
1bcc6fd5-ac47-4d9a-a741-32c70e3726ff	5
88c558ef-8c65-4663-b64f-d49d5a2e73cb	5
d0c2fb19-971d-4cca-b024-d73bf3ccf8af	5
07ba61b8-f39f-41f2-be03-de42aedecc24	5
08bd7477-c7a7-4248-a819-9cbef098203f	5
d06af1ea-e8fc-45be-b0c2-6d79d7d830c5	5
d679a41d-7f5b-4655-a2b4-eb5d1d2cdd4f	5
372c998f-b00e-485d-ba8b-f896f42e83f1	5
f0ae75e5-de9a-4c27-b4b9-cd898fb6d8f0	5
e1ef999a-2568-4faa-8be3-e4e45e9c7d37	5
5d6e1482-c970-49ac-adbf-f7cd7546fcf1	5
60c028cd-cd27-4549-87db-32437d708df9	5
d00b5009-b20b-4c87-b8df-0127219c3dee	5
817d66b7-22c8-48c0-8019-f0fec90b0450	5
cb50d44d-482c-4019-b6d8-6ae666e14090	5
edecfc06-7cc8-447f-a6cf-164929581573	5
75b7835f-be9c-43f3-b0e6-20401356505f	5
3e5083c8-26d4-4cd7-b56c-f83fdc74464c	5
b52ecb54-0552-4c1c-97ad-37d8756b2ec4	5
e276d141-16f0-4b51-afbd-959917140fd3	5
26b5a92f-2b55-4849-888f-c938c1f19980	5
a36c1ef1-99c7-4790-b368-689523c9d2bd	5
838bd7f1-1bd3-43ec-971c-a53dafcb52e2	5
dfaf907c-9645-47ef-acda-658f93063099	5
fe2f6f90-38de-4c22-9a7a-b0def1b3d9b8	5
c6f08ce7-86b3-490d-8a2d-e3211b5fdac8	5
c058634a-1f67-4b62-b397-ace16e853af7	5
167b5c33-529d-4341-950c-7d9ddeb5dcbe	5
de64201e-90b1-4f70-91c3-eeed2ced58a6	5
704db3e9-3f39-473c-a603-81cc575a2f00	5
306c36c3-a6ac-4dc9-8de3-18f84d96cc76	5
172e0d20-da00-4cfc-a5c9-2f952413b7cc	5
4fb94683-7990-4570-b90e-2df66167482d	5
4ad4baa1-1b69-4321-aa3e-e6956d1752f6	5
228730df-972c-4dce-af13-2d5ef9276241	5
fb88ee11-a4a5-4a49-849a-5bb3b69a0749	5
68a213ed-74c3-41a8-9269-b83e17771a31	5
9633081e-09c0-4d3a-b933-43116ab63c40	5
8d29d61e-f000-4995-909b-d20fc9bf42c1	5
2ed6d24d-4dc3-4da4-a50c-5b83b095fbfc	5
e7a2f108-3918-42f4-976f-916bd26e0f7b	5
54871cc7-a6ed-45d1-aa94-3db1d0c1cc06	5
523447b1-06e7-4b13-b352-54100ad3f03f	5
811f6dbe-de6c-4c37-8130-27a6f8d45a64	5
9bcc2a67-d890-4dc1-b6f2-908de843f8b1	5
de60b0e1-cdc4-4bb9-9753-5fad04663c0e	5
fd5caf31-f40b-49d3-89d8-7d6d2a1e75b0	5
4acb366f-3d27-401d-9104-eb427a663c15	5
15929fd5-2c1b-414c-945a-da77301ac011	5
81491782-5fc2-4095-9b70-7415a416a8a9	5
3e64f8a1-7797-4be4-b689-0e9360c444b9	5
9e2453e9-68aa-48f9-9659-d52acf0f1dd1	5
f72f28c1-b25a-4e62-811d-39dcb0720e69	5
143086a3-dbc6-4dad-9d25-8a65e434eaa4	5
ec9a19bd-4b63-4c4c-a95c-598dadb5cd0d	5
4f352c34-6e3a-4b0a-b5d8-215a3ef7f0dd	5
9956ecf0-e73d-4551-bb91-5db357d3b04b	5
07e7c118-1bbf-4a17-839e-51a1ce9b90dd	5
09ae1653-1e11-423d-8c1f-d7ece069a8b7	5
4cb20447-747c-4ea2-8ef9-a02aec1239fb	5
7ee67bc5-c875-4f8f-99b7-dc936f714df0	5
c5e0c2c2-713c-47db-ba72-6186473382eb	5
5764472b-a4f9-4d3f-8769-39a883952182	5
1701f109-ef8a-45d7-ae11-ff3dc99e4b37	5
bf98188b-9586-499d-9869-940ea080b07c	5
9ad8943d-1347-4532-8709-0471436574cc	5
8c7a371b-03bd-44a3-91ae-5d78275d2ad2	5
8a512dc7-3490-4a59-9c0e-918f14a6dfb5	5
a51eac75-6369-43de-99ec-7e59d3334b4b	5
37bb56fd-4719-4d85-a2ad-875ca9c89e2a	5
62303785-9066-4821-b9e1-9e5303b00261	5
44b91ad7-5268-4fe3-b1b2-23ff6b0e002c	5
a2765b70-897a-4d61-96fb-c2cb86cd1064	5
710e1886-7935-4341-aa5d-1b8af6cb3801	5
9d1e2381-b886-434b-8772-1dae54be26b2	5
59eee9e3-79a4-418f-b933-26475aa9c943	5
b5f28231-8e13-4af0-ad7d-6a5cd50179dd	5
39eefedc-e6e6-4f5d-85be-830ee59cb411	5
c04fc494-eba1-404b-ae92-d998bcfe3d41	5
3dcbeb78-e454-4587-a33b-ae718ac10968	5
4d86af49-61de-4325-897a-bddf6ba9b2c3	5
ab723c6d-6196-4d1c-8388-7d779b2a846d	5
d25305ed-956c-46a6-a6fb-dd2dd5a342bd	5
38c2d9e6-95bd-495d-929b-fce7c0aa796d	5
8e58d7ee-d00d-4734-8749-b0bf7d0c8d97	5
5b176aca-550a-4fa6-b48e-d520ba7e1042	5
c6ac432a-e9d9-45fd-aab0-4a6880825536	5
a301be08-9208-400c-8287-ee0b0f5292fc	5
4a9114a0-cb76-464f-99f7-f16c3f5bd638	5
23b1d6e2-fd91-4561-b878-ffe89b871fe6	5
03dd27b0-f1d7-48cc-bbba-b92e5d496b04	5
05ce7084-849e-4e3b-9b0d-af67314e90b6	5
4fffb608-a098-4407-bd1f-591e2d3a8377	5
540c86d3-8ad4-4df0-a261-378806f58846	5
10d339fc-d5c1-4c49-8aa7-7d6c25a5234e	5
ceeff372-03b9-48e7-a9e9-6f7f5257eef0	5
116bf0c7-604c-4304-a28a-dffec88c8d15	5
fe580eda-eb20-4f66-921e-a68015c8efbf	5
e5f55b49-b567-4432-b0d8-76cec4648cc9	5
43c70f2c-cf5e-455d-8a73-468febb65fa3	5
b8322961-426a-481c-8f78-3f340aa6d4f1	5
20f2daa4-3148-4cbb-adac-1218448f524d	5
884628ca-4d57-4ae8-b2c4-a62e95784aef	5
c57834c6-a32b-4eaa-a3e4-5868542ed924	5
0e03bec4-1ad5-4132-a3c6-195b1ef7f270	5
c66dfe86-08f5-41b5-b2b1-76464e65c369	5
86f327f7-3c4e-48cb-8e2c-9c2f4eed89d5	5
15a4e983-0f1f-41c3-bc4d-946c190c1ef9	5
64fcd835-7784-4663-bb04-12842e375511	5
9026e7f5-2626-4deb-87c6-538b83565f84	5
f38772e6-5727-4d51-9988-61c4e352cfa9	5
76de4a08-9a47-4a3f-a784-32abe1569187	5
e280f9dc-4c58-4115-8729-af0f029420fc	5
174e9bb8-3aaf-4a27-9d5e-f6ea9a4074e4	5
a6082322-6560-4f30-ad91-dedacf0b4814	5
e483ec7a-4a98-4fb9-b6e6-53b175f68849	5
12f47bad-92bd-4c0b-bddd-0f8d5b06c583	5
62036817-72b4-4ee3-803a-6ed41e704054	5
543da8f7-7af8-4da0-adeb-cf598361079c	5
48266b16-38bc-4bcd-b55e-94d1693c5164	5
e6c9cdf8-95bd-43ed-84ba-694f3584eed3	5
f3bbdbbc-8ba8-43ac-a0d3-30371bd90b5b	5
177034d8-5710-4922-9d14-9cccac7ada52	5
bdb270a8-dbe0-4064-88a9-0d245f6c858e	5
5d6a4b4a-215f-4bce-8c99-097606a6dfb8	5
4c4dd339-f119-4962-88b2-a36a6d18dfff	5
5240fb4a-5bc3-4465-b624-93e88e617b36	5
63e9816c-e07b-44ea-98b7-4c6b53abbfdf	5
a68235e9-1f05-49c6-9c17-7d224c201cc5	5
1849c00f-f165-4cd0-ae88-76094bb236ab	5
1cd437ab-e68a-42f1-a600-92e967b708df	5
44d0fe8f-0657-4df2-8dfa-f35046db3e0a	5
4a4ca79e-d09c-4e91-838f-78eacb16852b	5
15d26a25-fb20-4ca0-b261-fa32ec1a088c	5
650c6230-6928-49a3-8948-dd164c666790	5
c94ada8f-45ac-4606-8387-5d7516bf67e7	5
1f02b3c5-41ca-4451-8911-564cc1c98d28	5
217dde04-3285-4681-a928-7a5f50f169ca	5
0ee0bfa1-09c5-4c99-9634-8f34a5704c45	5
e1c1fac3-3160-4957-a671-c23dc3d17ec0	5
e6447bed-f6e6-48c2-a448-22a906e767ee	5
fe8395bc-3952-4430-a975-b5805308cffe	5
35d7e43e-18a0-4fdc-8564-4b535349e8ab	5
6887ab74-5624-4b26-96a6-29bd3c8db2b3	5
93c3367d-1d18-4fd3-9967-fd3270060116	5
6282f45a-6c5d-4980-bba2-581fd4d00b89	5
98c3429a-c76b-47cf-9b49-4795602013c5	5
8e124cd8-f029-4cca-97ff-41479ecb4c1e	5
231e0f9d-c12e-45a1-8962-1a7437074dc4	5
518a33f1-6cd3-491a-a4f4-1bb65b424873	5
4e52d991-9942-4b76-bdc1-bef0182c33da	5
35aa4a56-8fe9-4aa0-bdc9-79ba4947db07	5
d222d0da-316d-4ef7-b20c-62ff2db56cc8	5
02576021-c138-4802-8b9b-7bba9d57fc91	5
7a8dabeb-5095-449c-99fc-619988db4cbf	5
4f96d46a-fbcb-4f92-b21f-ff158acaf5f9	5
6412c808-a462-4c58-9f03-39a20d0ccdaf	5
82682b92-d6b0-44f8-99ff-5dd28283befc	5
1b99c249-c6ad-4557-9988-4f0732e10905	5
d338cc46-7037-4328-85b0-478f0d09af69	5
3c7266a0-1153-4a8e-8f96-d16a6df37938	5
7e87824d-5f47-4c1e-9011-054d006fc52a	5
d7482e37-a480-499e-bbf2-fcef111d95f7	5
c6106b3d-4ee0-4f8a-8831-7ffd0ffaa931	5
039c134f-00a6-4c4f-94a9-b11e72ae3cbc	5
2fa10103-ff50-429f-9e57-252d0067b230	5
5931754a-10da-486d-b243-1126c9041eda	5
4acab2eb-9255-48f1-9b8a-89039b24c4f6	5
18f816aa-6897-4f4a-a000-bf9cccc76707	5
f3376499-4795-4362-8fe0-30145a958123	5
d6ade98f-90ea-4fa2-b40a-e8cfb0d5575c	5
6a9ef300-9ba7-4acb-baa4-7332e88ceb3c	5
32110df3-0e84-48b2-8557-a896b299af5d	5
d5abefd7-602b-40ff-b830-317b58790742	5
d519b6b7-9633-45c9-845a-4531fea1f455	5
456b76f8-62a9-4afe-9270-641c6683d43f	5
d30fba8f-1461-4609-9a4d-e87d6cac7823	5
75559f33-346d-4d76-828a-4c95ff69f78d	5
eb0d68fd-493c-494b-9680-13ff05439b53	5
e66f6aec-2ff1-4e8c-9ca1-c07b3fa125b8	5
360ddebb-2ae6-4256-a07e-1567337cb758	5
584cab93-e5af-4b86-bd00-8d58ec3104df	5
2ddf0e80-5966-4f22-b377-df1364ef814b	5
f0dcf29f-cae7-48f1-909f-61f615dca840	5
77131d09-9ddf-49ea-a465-7f13e39c2068	5
dcf64b3a-234c-4b4e-9fd4-695539b654fc	5
db68107f-199d-40f9-96dc-9d1d2d686eb7	5
57422814-eea8-47e4-8d59-4728865280af	5
b360b10c-8300-4a83-94a2-59fe2227aa6b	5
9cc1d353-1c1c-428a-9c3a-39c6f52b32c6	5
2fe8f175-da45-41b7-af52-5e9f52632964	5
03585e8b-21a7-49c0-b3a1-d0f723f6829c	5
3003450d-5f53-4736-ba03-4331e7f57f52	5
c995e32b-6260-48ec-8f9f-fc5b709062e1	5
7724abd2-a3ce-440d-9897-59509c219507	5
509aed58-3099-457f-ae03-307d4358b321	5
d60198e9-aec0-4ce2-a8e6-5b99b03fbe2d	5
36728828-a196-4faa-9998-9347344fdbb5	5
26ad30cd-4eef-48b9-86e1-0eeec49fdce0	5
90b5e06d-9461-4239-9aac-6beae058d96e	5
9872ef15-9169-4a80-a6a2-bad853dbc0b5	5
0da7ab47-dd0c-4bb6-a7e2-ae168f0df3df	5
30890cc8-3561-4428-a1e7-a9a85c9eb621	5
1d9ade65-96b3-4fb5-9d89-7b6926aa8d0d	5
444d64d9-e36a-4f61-a0b8-f50a15b7df24	5
f0e27755-32fc-4e88-9fea-6e051bf392d3	5
e16c3f89-e41b-405f-a6e6-55f6639564f7	5
1d507972-8bac-4296-8454-018423bc8d0e	5
9360eb02-0b67-41ea-91b1-67fb5601a3ef	5
e471d90c-1a9c-45fb-8648-9bb69217c37b	5
0ccebb38-0d92-45cb-94d1-c759a6926e06	5
bb565d52-3114-43f3-a134-ced618cc5e72	5
a55a744f-695d-45a5-9252-6acd7085524f	5
b9499f63-ee3f-46be-90d4-c3fe09bca23f	5
8446e750-4dfe-4b65-a3b4-372d126cb9a7	5
9aa03ba8-507d-4386-98d2-4215db4583a0	5
d9148ccc-ee02-40b8-8cc1-c1619e626037	20
49e95ed7-a65d-4d86-bd56-734310f1ef53	5
0dc48811-5a27-42bf-9629-5753e30f5778	5
f1dd289e-9e90-4ef2-8f0b-b9158721b1c0	5
d356e9c0-3a6c-4cc0-99ed-018796954d5c	5
423bb6f9-700b-4629-9fc5-76a869ebfd5c	5
8a57ae15-523b-4e2b-b09e-a9c09c536122	5
93d7fac8-00ea-4d5f-a7c2-d17d3a601d83	5
1d14cb57-610a-4703-9234-2e1006044a65	5
d11d29fa-0dab-46f5-bf33-0125b62a84d7	5
5eca8680-ce7f-441c-877b-ba693c04bd6d	5
d8fa3452-2c53-4f6c-9430-54b566ee91e5	5
d0ad15eb-76b9-43cc-8d1c-5e6057011c6d	5
a894d789-dc5e-4692-8b3a-2c3670d26eff	5
78be1738-f0b7-4599-9bf9-be944cc06424	5
7c3660b5-eec8-44e2-b5de-ebde5f05b69d	5
ff69ba70-f1bc-46b8-b9a2-60169971386d	5
3c55e659-6207-4ea7-8cec-fc2e8effab22	5
b7769130-0e8c-4d42-a048-4703c965a866	5
42ef3fa6-832a-4a03-a40a-35446d1bff00	5
401342c2-13f2-4da5-b246-93cc6182d67b	5
57dd61bc-2b50-42c4-ae15-039c33d90b61	5
52653d3f-9b75-4c36-96f0-45dece2b93be	5
6f46a127-0a3d-4bff-aec6-810bac4d2c14	5
c4e21376-eb04-40b7-bfab-8f8c98a2b346	5
243fb0bc-7b84-4e26-891e-81c0ee764f52	5
e4ee0b28-03d0-4e34-aade-1724f3f3e32e	5
cc59e8fb-2bf8-4916-8e91-fb9f84e8db6c	5
7d2c0864-2b3f-480a-b0da-937e64f9ea36	5
2d3fe123-0dea-4527-8922-3f3e32f23509	5
e261de90-19a6-42b2-8e70-3786f1c5cfd8	5
5bce4111-e1a4-497a-8567-a55dbec20b0f	5
7047d25c-6fd4-4983-a116-55a40b482084	1
26da2922-909e-404a-83dc-3ef210380673	1
3b858300-ace7-4c78-bb5d-5e8c15fa10d2	1
0e196968-99ef-498e-8e45-761e10e56e35	1
b7f14f65-5274-4698-b236-6eace35f5f91	24
e65e9aec-38b4-4675-aaa3-d030197e7cf6	5
f600e6ec-ed70-4678-8c30-af48e8beae8a	5
1f5fe219-99f7-4253-966e-cc583dca92db	27
80d322c3-de3f-4cac-9720-f1ef813290f2	27
eda88608-cf81-4636-89e0-2328b3d7df43	27
5b975749-427a-4fe8-b3f5-4d5f10607abb	27
d93b09dd-4006-4378-bfd5-c00fe126c0aa	28
d08c0d8c-9d63-452d-9d88-611568044809	29
f4fdaf12-c081-4389-8206-d682806b1a99	29
a5b140f5-a48e-42ee-a512-77a29e60b5ed	5
20f51c4b-ebd4-40e3-a670-b8b5c35229bc	5
24559750-8413-4460-91f5-ad8b8df85c83	5
26f7d5d1-423e-49fa-bfc1-556ff14019c9	5
07f631ba-73d0-40f3-8e25-9e0583505c84	5
6723bf69-642a-4b7a-b83c-a341a52e610b	5
95d5f21e-3cee-42b0-bed3-56928af8846b	5
743ea8f8-54ec-411a-afdb-9601a1e7ac41	5
bd20c40c-7401-49b7-b569-1237e1a7f2f1	5
bc625cc5-8fe3-4675-b45c-359aa872dff4	5
3102201b-a592-47d3-83f8-fb16cfc4b192	5
b02a5e35-dd67-4c47-b4ef-80185b28e943	5
07720775-7f9c-4ba6-b05f-1911b27d06b2	5
19baab2b-1a0f-4d6f-bddc-64bdb7605fa7	5
c5d548e6-1db2-46cc-8eb5-33972be1b91a	5
4b76ca05-5d48-4da4-b2b4-40b0e9cf4ca7	5
85de7681-eb11-40ba-899d-be960d433968	5
4f7f86a6-62bf-40ad-b172-68193c5b97d1	5
efea7975-549b-45c8-a016-67395ec6ee7e	5
85c252e6-14f3-4de3-b25c-6b188a99f880	5
6a250af2-fe0a-4eb7-b142-f5db4e2bbff5	1
2154dcc5-bcd1-459b-a89d-c1f0c5084846	1
b949b340-3634-48b9-89d0-2e58b5fd6c39	5
a44b93e1-8f8d-494f-bcb8-802cbdcfdf43	5
0aea27ce-db8d-4fd3-b6ab-42c20693bbad	5
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add category	7	add_category
20	Can change category	7	change_category
21	Can delete category	7	delete_category
22	Can add post	8	add_post
23	Can change post	8	change_post
24	Can delete post	8	delete_post
25	Can add time info	9	add_timeinfo
26	Can change time info	9	change_timeinfo
27	Can delete time info	9	delete_timeinfo
28	Can add time info group	10	add_timeinfogroup
29	Can change time info group	10	change_timeinfogroup
30	Can delete time info group	10	delete_timeinfogroup
31	Can add marker	11	add_marker
32	Can change marker	11	change_marker
33	Can delete marker	11	delete_marker
34	Can add point	12	add_point
35	Can change point	12	change_point
36	Can delete point	12	delete_point
37	Can add polyline	13	add_polyline
38	Can change polyline	13	change_polyline
39	Can delete polyline	13	delete_polyline
40	Can add tokens	14	add_tokens
41	Can change tokens	14	change_tokens
42	Can delete tokens	14	delete_tokens
43	Can add annotation	15	add_annotation
44	Can change annotation	15	change_annotation
45	Can delete annotation	15	delete_annotation
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$36000$Y4jICmhwJq4c$07MluOXRWzfq08Qw4/IAA2sPmhZhO/EMA6Z86ViWFuk=	\N	f	onat			onatbas@gmail.com	f	t	2017-12-02 16:13:45.596517+00
2	pbkdf2_sha256$36000$edArEyNI03Us$sX0/7gnEKSQD7lWfOJB6/UQdWDHvz9H+UKz9Z7mbwLs=	\N	f	ece123			ece@e.com	f	t	2017-12-05 11:12:54.207364+00
3	pbkdf2_sha256$36000$HPiY6mVhI4EO$g3l/tiTErGutv0qCBiLjKdg3K04GSMEVm8OIzPWAIHE=	\N	f	iy536			ilker.nem@gmail.com	f	t	2017-12-05 11:14:42.587072+00
5	pbkdf2_sha256$36000$bO1WT0SiH9ll$4vIUpaqOXQfRfcuz5+N7e5jNzYAz6yAn1tnDU85SHjs=	\N	f	ece			ece123@e.com	f	t	2017-12-05 11:18:05.551509+00
6	pbkdf2_sha256$36000$PUCo83hiDDfc$4sTiPo8FWT/W+mmwzgCNGT7Sddcn9MTAu5+zF2gUejw=	\N	f	ece1			ece1234@e.com	f	t	2017-12-05 11:18:33.550447+00
7	pbkdf2_sha256$36000$OxtbdFsdBfVQ$hQ5NDlmi7U0bKguYNLkh4jGveFGhzMbaSQpV7gNmxwU=	\N	f	selingungor			selingungor01@gmail.com	f	t	2017-12-05 11:41:32.401038+00
12	pbkdf2_sha256$36000$ph11Mo2NlsaX$1PfXM66IW24guaYivVulDIJ0Pe8qSGyCnRfUVkH4dRI=	\N	f	can			can@can	f	t	2017-12-05 14:17:00.438047+00
13	pbkdf2_sha256$36000$xRFosTzw8BHP$g8ifMHsbI+AyGe9HfBFqD9cfdQp4lHhVaDTYzK2673M=	\N	f	uskudarli			suzan.uskudarli@boun.edu.tr	f	t	2017-12-06 12:06:26.46261+00
14	pbkdf2_sha256$36000$TSskpw8wlZiv$c74xK1X9lgzK5d5EWuAm01+PxtslvUnLtNX//FiU5Iw=	\N	f	AutomatedTestUser			automatedtest@gmail.com	f	t	2017-12-10 16:25:04.542037+00
15	pbkdf2_sha256$36000$xmzCIaQKhyXL$ElVCTbJ5KxwaRkzUYSBrNFmwIC6O47Kn2SmCcFI+gNM=	\N	f	AutomatedTestUser2			AutomatedTestUser2@gmail.com	f	t	2017-12-10 23:03:06.432834+00
16	pbkdf2_sha256$36000$a6GoZoLQNXN5$N1j4D8BlmDdReL0d6o6kJs3vhXEiUXV3/B53zelwjNg=	\N	f	umur			umur.turkay@gmail.com	f	t	2017-12-12 15:44:50.145076+00
17	pbkdf2_sha256$36000$xB4LFkBZRu5i$tLdOWusyO4SdJFSLpnJV4ZhZGlHm6kDJRxdP8+hXByw=	\N	f	umurtrky			umurtrky@hotmail.com	f	t	2017-12-12 16:18:08.589241+00
18	pbkdf2_sha256$36000$3YVxU31guNWl$wOk+D9FmqpNWlaRuldI+jBCehh7Nx1/ZsVtlhmFqdP0=	\N	f	foo			bar@baz.bak	f	t	2017-12-16 15:05:30.656366+00
19	pbkdf2_sha256$36000$JULZRV4SUAtI$PYQGnzZtN3n/NVyLLkcG6ZYcB7PjZwGNMoT0GaIKyVU=	\N	f	suzan29			suzan.ece@gmail.com	f	t	2017-12-21 19:10:11.914253+00
20	pbkdf2_sha256$36000$28dA58FlZNa1$ErU9WfzjUqd0HaJrzZqPKg5R1CF/aL2HF/jBgBgTJMU=	\N	f	2FA			onatbas2@gmail.com	f	t	2018-01-05 12:08:55.149276+00
21	pbkdf2_sha256$36000$rRa0A0Ot3gq7$EBP/Od5PjLqesRrjONAet+2x/U4ZuZsKY/gCX/HwD+A=	\N	f	ece3			ece@eee.com	f	t	2018-01-06 01:22:34.517966+00
22	pbkdf2_sha256$36000$cPOrVzDFcuhZ$fzeRuZ+8SiSAj0o6mhvkU8sLaLWWQDg/xMS2AaILv+g=	\N	f	ecetttt			ececece@gmail.com	f	t	2018-01-06 01:27:05.945722+00
23	pbkdf2_sha256$36000$n8ndPRdkQmb5$1LlcqvUnwlzGm7z3ZyAnlmKywrhp8S2qIjL36FBSfNY=	\N	f	edede			ededede@rrrrr.com	f	t	2018-01-06 01:29:03.630367+00
24	pbkdf2_sha256$36000$dYOxkOCM2T1e$LTRZ/n/dEELX5GTlOPRPDFcxWrKaPtYxhYTIR2p3/yE=	\N	f	newecejanuary			newecejanuary@gmail.com	f	t	2018-01-07 12:25:07.137354+00
27	pbkdf2_sha256$36000$mAbtN0q5U1uT$yek8tml09qac8Pqoh3vptXDdHa5xmbIDTRjRTy0lPtY=	\N	f	uskudarlim			uskudarli@gmail.com	f	t	2018-01-09 14:14:41.128263+00
28	pbkdf2_sha256$36000$DPQJAl3HD95M$oTvR/wCn0yEFWXY125HK15WYYpi5uPGmICCexrHgTCE=	\N	f	ece44			ecea@google.com	f	t	2018-01-09 16:32:06.908747+00
29	pbkdf2_sha256$36000$yUFMIJZP6SJg$r5Ieyxj32TF6e4RaopD3xx1d3NyxyXitfwokngu7s4o=	\N	f	ece11			suzaneceada@gmail.com	f	t	2018-01-09 16:36:07.948174+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	post	category
8	post	post
9	post	timeinfo
10	post	timeinfogroup
11	post	marker
12	post	point
13	post	polyline
14	api	tokens
15	anno	annotation
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-12-02 13:19:43.352672+00
2	auth	0001_initial	2017-12-02 13:19:45.430419+00
3	admin	0001_initial	2017-12-02 13:19:46.370064+00
4	admin	0002_logentry_remove_auto_add	2017-12-02 13:19:47.021159+00
5	post	0001_initial	2017-12-02 13:19:50.754137+00
6	anno	0001_initial	2017-12-02 13:19:53.381165+00
7	anno	0002_annotation_author	2017-12-02 13:19:54.742281+00
8	api	0001_initial	2017-12-02 13:19:57.044739+00
9	contenttypes	0002_remove_content_type_name	2017-12-02 13:19:59.551037+00
10	auth	0002_alter_permission_name_max_length	2017-12-02 13:20:00.123188+00
11	auth	0003_alter_user_email_max_length	2017-12-02 13:20:01.350934+00
12	auth	0004_alter_user_username_opts	2017-12-02 13:20:03.278731+00
13	auth	0005_alter_user_last_login_null	2017-12-02 13:20:06.99822+00
14	auth	0006_require_contenttypes_0002	2017-12-02 13:20:07.03834+00
15	auth	0007_alter_validators_add_error_messages	2017-12-02 13:20:08.878435+00
16	auth	0008_alter_user_username_max_length	2017-12-02 13:20:12.48476+00
17	post	0002_marker	2017-12-02 13:20:13.54702+00
18	post	0003_auto_20171130_1641	2017-12-02 13:20:15.424774+00
19	post	0004_auto_20171130_2016	2017-12-02 13:20:17.876859+00
20	sessions	0001_initial	2017-12-02 13:20:18.370058+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: post_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_category (id, name) FROM stdin;
1	baklava
2	burhan
3	altintop
4	burhan altintop
5	vapur
17	kafes
9	Austria
10	Country
11	Testing
12	Bamboozled
13	bar
14	open
15	cafe
16	yıldız teknik
42	school
18	Yıldız Teknik
19	Yıldız Bahçe
20	Tonoz
22	çocukluk
23	çıkmaz sokak
24	göztepe
43	objects
25	90lar
26	dolmus
27	vehicle
28	hospital
29	tıbbiye
30	haydarpasa
7	kadıköy
32	{'id': 6, 'name': 'beşiktaş'}
33	{'id': 1, 'name': 'baklava'}
44	candy
31	childhood
8	istanbul
6	beşiktaş
21	Beşiktaş
34	sdfsdfsdfsdfs
35	sdfsdfsdfsdfsdfsdfsdf
36	sdfsdfsdfsdfsdfsdfsdfsdf
37	fdfd
38	feriköy
39	pickles
40	somethingggg
41	{'name': 'somethingggg', 'id': 40}
\.


--
-- Data for Name: post_marker; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_marker (id, lat, long, color, mag, name, listory_id) FROM stdin;
2	40.9913586579013796	29.0205978795564761	#ffa0a0	37.968755799373433	Kadıköy'deki Iskele	2
3	41.0399975086945261	29.0055741747987668	#ffa0a0	60.4130893895713683	Beşiktaş'taki Iskele	2
4	41.0027927000000005	29.0157483999999997	#ffa0a0	200	Sally O'Briens	4
6	41.0466655149226298	29.0072865079640678	#ffa0a0	53.2840939116342511	Eski Open Cafe bar burada idi	12
7	41.0523381067228215	29.0104699067160254	#ffa0a0	6.19109220654303805	Kafesin yeri	13
8	40.9759008752359506	29.0658586113954698	#ffa0a0	17.7706033946550264	Bu alan eskiden kapalıydı. 	14
9	41.0027927000000005	29.0157483999999997	#ffa0a0	200	Bebek	16
19	41.0500408999999991	29.0098379999999985	#0000ff	512.5	yildiz teknik	47
23	41.0539393999999973	28.9871747000000006	#0000ff	30.7499999999999964	osmanbey metro	75
31	41.0027927000000005	29.0157483999999997	#ffa0a0	200	Haci Muhiddin	84
32	41.0027927000000005	29.0157483999999997	#ffa0a0	200		84
33	40.9899174238725195	29.0205014245102575	#ffa0a0	28.9901304159758233	Haci Muhiddin 	85
\.


--
-- Data for Name: post_point; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_point (id, lat, long, line_id) FROM stdin;
6	40.9915928902185058	29.0199995040893555	2
7	41.0090502718272276	29.0021896362304688	2
8	41.0251108641128823	29.0004730224609375	2
9	41.0398889768394923	29.0057945251464844	2
10	52.5105534205839746	6.09041690826416016	3
11	40.976726990455056	29.0665572881698608	4
12	40.976078986171089	29.0659403800964355	4
13	41.0770057618105824	29.0432274341583252	5
14	41.0114984690880391	29.0196990966796875	6
15	40.9990622349556162	29.0238189697265625	6
116	41.0534160634148577	28.9814333617687225	29
117	41.0515150001967655	28.9805254340171814	29
118	41.0505554721001289	28.9795397222042048	29
119	41.0492743096085988	28.9820365235209465	29
120	41.0469033220232049	28.9798180013895035	29
\.


--
-- Data for Name: post_polyline; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_polyline (id, color, name, listory_id) FROM stdin;
2	#ffa0a0	Beşiktaş - Kadıköy Rotası	2
3	#ffa0a0	Sally O'Briens	4
4	#ffa0a0	Cıkmaz Sokak	14
5	#ffa0a0	bebek	16
6	#ffa0a0	Tıbbiye Caddesi	28
29	#0000ff	ferikoy	75
\.


--
-- Data for Name: post_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_post (id, title, content, image, publishing_date, "timeInfoGroup_id", user_id) FROM stdin;
7	Arabaya Servis	"Drive Through" diye adlandirilan arabaya servis, yolda giderken yemek yeme olayidir. Sanirim bu aliskanligi Tim Horton's kaybetti. Eskiden Tim Horton's donutcisi en buyuk satislarini arabaya servis ile yapiyormus. Insanlar zaman kaybetmemek icin yemekleri arabadan siparis verip, yol boyunca yiyorlarmis. Fakat simdilerde insanlar arabaya servisi pek tercih etmiyor.\n\n	http://gaia.adage.com/images/bin/image/xx-large/timhortons_3x2.jpg	2017-12-05	7	7
2	Kadıköy Beşiktaş Vapuru	kadikoy'den kalkip besiktas'a giden vapur. ilk vapur seferi sabah 6:45**'tedir. bu saatten itibaren yarim saat arayla her saati 15 ve 45 gece kalkar bu vapur. sonuncu sefer ise yazin 20:45'te, kisin 20:15'tedir.ögrenci ve çalisan yogun seferleri 07:45 ve 08:15 olan vapur. \n\ngeç kalanlar 08:45, geç kalmak umrunda olmayan tembel tenekeler de 09:15'i tercih eder..\\nsabah uykusu için ideal mekanlardandır..	http://www.dipnot.tv/wp-content/uploads/2013/06/page_vapur39da-39tekbir39-saldirisi-bicak-verin-allah-yolunda-kesecegim-bunlari_969197810.jpg	2017-12-05	2	1
3	Yesilköy Taksim Dolmus duraklari	Hayatim boyunca en fazla kullandigim ulasim araci tartismasiz yesilköy dolmuslaridir. Yesilkoyde Migrosun yanindan kalkip sahilden çok hizli bir sekilde taksime giden bu dolmuslar benim zamanimda 2 sira ve 2 kisilik bir ön koltuk ile hizmet vermekteydi.Arkada cocuklu ailelerin çocuklarinin kucaklarinda yolculuk etmesi ve yayilarak oturanlar sebebiyle 4 kisi mutlaka sikisirdik bundan dolay bir on siranin en sagi yolculuk icin en elverisli alandir. Durakta arac gelince ilk olarak o koltuga oncelik vermisimdir. Her gün yesil agaclar arasnda bu dolmusu dort gozle beklerdik.	https://igx.4sqi.net/img/general/200x200/40710956_fYRaaYRdFLb5pK8ECY2DzocyH3409S1zuZ7xSrOcR6Q.jpg	2017-12-05	3	5
4	Sally O'Briens	Sally O'Briens is a Irish Bar in Zwolle where serves draft beers and tasty Irish beers. It used to have happy hours between 18:00pm and 19:00pm. In the happy hours, they were offering discounts on beers. They were only 50 Cents! Everyone in the bar was buying 20 beers in the happy hours time period to save them for all night. So, all of the tables in the bar were covered with a lot of beer glasses. However, my friend told me when he was 18, he used to go to that bar. He cannot afford to buy a new beer even in the happy hours. So, he was getting one beer on each table for free.	https://thebirdsofplay.files.wordpress.com/2010/02/a-nice-crowd.jpg	2017-12-05	4	7
5	Uzay Pastanesi	"Her eski Bursali Uzay Pastanesi'ni bilir." diyor annem. Eski Bursalilarin en gozde pastanelerinden birisiymis. Ozel bulusmalar, toplantilar icin genelde Uzay Pastanesi'nde bulusmak uzere sozlesilirmis. Fakat Uzay pastanesinin annem icin ayri bir onemi var. Annem 25 yaslarindayken, bir gun anneannem ile birlikte alisverise cikmislar. Annem Uzay Pastanesi'nin onunde anneannemi beklerken, babam annemle tanismaya gelmis ve kendisine ulasabilmesi icin kartvizitini vermis. Annem o gun babami gordugu ve konsutugu ilk ani unutamiyor. Simdi her onunden gecerken bu hikayeyi tekrar anlatiyor. :)	http://uzaypastanesi.com/photos/5178d4952258e.jpg	2017-12-05	5	7
6	Sureyya Plaji	Sureyya Plaji Idealtepe-Maltepe arasinda bulunan semtin adi. Eskiden Istanbul'un en gozde plajlarindan biriymis. Insanlar yuzmeye gidip guzel vakit gecirirlermis. Denizin ortasinda bulunan mavi kubbeli guzel yapi bakireler tapinagi diye adlandirilir. Fakat suan deniz dolduruldugu icin, deniz mesafesi bakireler tapinagindan en az 1 km uzakta bulunuyor ve simdilerle Sureyya Plajindan denize girmek mumkun degil malesef.	http://3.bp.blogspot.com/-2AH_k4OwZ84/VafCss3H4MI/AAAAAAADI1g/nZcvCePGG2Q/s1600/s%25C3%25BCreyya%2Bplaj%25C4%25B1.jpg	2017-12-05	6	7
14	1. Orta Sokak Çıkmazı	Çıkmaz sokak diyorum ama, artık çıkmaz sokak değil burası. Sonunu başka bir yola bağlamışlar seneler sonra farkettim. Lakin burası benim çocukluğumun geçtiği sokaktır, 1. orta çıkmazı. Göztepede bu mahallenin bütün çocukları gelir burada oyun oynardık. Ben şanslıydım direk sokağın içerisinde oturuyordum. Sabahları iner akşam hava kararıncaya kadar bütün çocuk oyunlarını oynardık. Çevre apartmanlarda oturan amca/dedeleri rahatsız ederdik, onlar da topumuzu keserlerdi. Şimdi büyüdük, hala çocuklar burada oyun oynamaya devam ediyorlar mı bilmiyorum. Ama çıkmaz sokakken gönül rahatlığıyla koşar ederdik sokakta, hiç kimse de peşimizden koşturmazdı. Bazen yolum düşüyor söyle bir tur atıyorum, epey dar küçük bir sokakmış aslında, ama biz de küçüktük, bize yetiyordu sanırım!	https://preview.ibb.co/bPESEb/IMG_0465.jpg	2017-12-06	14	1
15	Erenkoy not so long ago.	\nIf you were to travel on minibus caddesi in Istanbul, you would be in company of a huge amount of traffic. It is hard to imagine that a few short decades ago that that road was traveled by few and seeing a horse carriage (fayton).\n\nOne day my mom and I were returning from the market, our fayton full of vegetables and who knows what else. The horse was not looking very well. The driver was yelling and whipping him. I was so upset. We told him to stop and got off. I was so sad for the horse. Then, right there it died :( The houses and life was good in many ways, but animal treatment was often very poor. \n\n		2017-12-08	15	13
12	Eski Open Cafe & Bar	Arkadaşlarımızla neredeyse her gün gittiğimiz bar'dı burası. 2010'a kadar Yıldız Teknik'ten mezun olan herkes burayı kesinlikle bilir. Çok ucuz biralarıyla, kalitesiz hizmetiyle bizim gibi öğrencilerin kalbinde taht kurmuştu. Sonra el değiştirdi birşeyler oldu, müdavimleri gitmedi. Sanırım 2011'de kapandı. O günden beri de yerinde 3-4 ayrı mekan açıldı, hiç biri de tutunamadı. 	https://igx.4sqi.net/img/general/width960/mtQ6zOnMXmLqSPYtivKInJQX-Rzp3tNGYL5Qe9GiwO8.jpg	2017-12-06	12	1
13	Yıldız Teknik Bahçesindeki Kafes	Belki başka birşey deniyordur bu yapıya ancak bir öğrenciler olarak "kafes" derdik buna. 2009'a kadar yapılan şenliklerde okulda içki içilirdi (sonra yeni gelen rektörün değişikliğiyle kalktı tabi). Her şenlikte burası yarı çakır keyf şen şakrak öğrencilerin içeride tıklım tıkış durup muhabbet ettiği biryer olurdu. Festival yokken de sınavını, dersini bekleyen öğrenciler için dedike bekleme alanıdır :) Hala da durur.	https://preview.ibb.co/ir0Onw/kafes.png	2017-12-06	13	1
84	Sahlep zamani -- tek adres	\nTamam tamam, tek adres degil, ama saglam adres. \n\nHaci Muhiddin, Kadikoy. Hem ortam sahane, hem sahlep gibi sahlep. Eski usul. Son zamanlarda yerlesmis sahlep bozuntusu tozlarda degil asla.\n\nI tried to mark it on the map, but I think I failed :(	https://cdn4.themagger.net/wp-content/uploads/2017/11/kis-lezzetleri-ali-muhiddin-haci-bekir-540x435.jpg	2018-01-09	84	27
16	Ah Istanbul Dolmus	\nDolmus is a kind of shared cab. Very popular in Istanbul. Nowadays they all look the same, yellow vehicles buzzing around.\n\nIt was not so long ago that the the dolmus cars were all different. Nice old cars, with a solid strip. Some would pick there routes. Others were fixed routes. I recall the dolmus' that used to go up the Bebek-Etiler hill. I have been on them so many times. The cars would barely move. In fact you would swear that they would no way make it up the hill. But, you would be wrong. They sure did!\n\nAs you girl or woman you would avoid sitting by the driver, since some would use shifting the gear as an excuse to touch.\n\nAnyway, the cars were beautiful.	https://i.pinimg.com/originals/80/f7/ea/80f7eaece0aa18684ede8c23712df310.jpg	2017-12-08	16	13
85	Akide Candy	The old candy stores are the best. Haci Muhiddin, very well known for its Turkish Delight, also has Akide candy, a hard sugar sort of candy with other flavors. My fave is cinnamon, and then ginger. \nWhenever you walk into haci muhiddin you see the shinny jars with brass lids full of Akide candy. They looks so nice, better than they taste -- not that they don't take good mind you.\n\nThe cinnamon has a real kick. And the place is super nice. A blast from the past. When we were kids those jars were waaaaaay up there, now we can see them at eye level. Alas, their glory was superb when they were way out there. I wanted to be old enough to buy them, now that I am, I don't. Ain't that life for you!	https://www.hacibekir.com/Image/Get?id=7765	2018-01-09	85	27
47	Fen Bilimleri Days	Fen Bilimleri Dershanesi was one of the  best preparation center in İstanbul. After high school we used to go there immediately and start practicing our testing skills. Most of my friends went out for smoking between the breaks but I wasn’t smoking at that period of time in my life so I used to go to the mcdonalds on the ground floor and got myself a cheeseburger.	http://static.panoramio.com/photos/original/2418711.jpg	2017-12-25	47	5
83	Okulun ilk gunu ve o kokulu silgiler	Okulun acilmasini hic istemezdim. Ama kader! Gelir catardi o gun illa ki.\nEh, ne yaparsin? Ilk is kirtasiye! Kitaplar, deferler, kalemler silgiler alinacak.\nNe kalabalik olurdu kirtasiye... Hic kacmaz en populer kose silgi kosesi, rengarenk ve kimi de bir geminin diregini kiracak gucte bir kokuya sahip.\nCok sevmezdim ama untmadim... Koku oyle bir sey. Unutulmuyor.\n\nHa kirtasiyedeki diger seylere hayranim. Pergeller, cetveller, kalemler, sormayin gitsin. Cocuklugumun buyuk bir kismi, ellerim ve burnum kirtasiye camlarina yapismis halde gecti. Kim temizlediyse sonra o camlar, affola!\n\nSimdi, googlayin, bakin ne diyor o silgiler hakkinda.	https://images-na.ssl-images-amazon.com/images/I/71OFaZu1kKL._SL1000_.jpg	2018-01-09	83	27
75	Pelit Pickle Store	We used to go to the Pickle Store in Ferikoy to choose and thus buy from 27 pickles availabile. There was a man in Ferikoy who just wanders around the store to get a pickle	https://igx.4sqi.net/img/general/200x200/73936024_4Ki3UxNo6s7VAZcHdy5WydJ55lplKRxj5mrU60XxQF4.jpg	2018-01-04	75	5
28	90larda Tıbbiye Caddesi	Çocukluğumun hatırladığım büyük kısmını Haydarpaşa'da askeri lojmanlarda geçirdim. \nLojman Tıbbiye Caddesi üstünde yer alıyor. Bu cadde Selimiye'den Kadıköy Rıhtım'a doğru inen cadde. \nÜsküdar'dan Kadıköy'e giden herkes bu caddeyi bilir bence. \nHatırladığım kadarıyla bir zamanlar çift yönlü olarak trafiğe açıktı. \nCadde üstünde ambulans sesleri eksik olmazdı, çünkü bu cadde üstünde GATA, Numune ve Siyami Ersek \ngibi üç büyük hastane yer alıyor. Çocukken Kadıköy'e tek başıma giderken bu cadde üstünde yürümek \nçok zevkli gelirdi, çünkü cadde hiç boş kalmazdı ve benim araçları ve insanları izlemeye çok severdim. \nMutlaka yol üstünde ismini şu an hatırlamadığım büfeden bir gazoz alırdım:)	http://static.panoramio.com/photos/large/20242848.jpg	2017-12-12	28	17
\.


--
-- Data for Name: post_post_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_post_category (id, post_id, category_id) FROM stdin;
5	2	5
6	2	6
7	2	7
8	2	8
13	12	13
14	12	14
15	12	15
16	12	6
17	12	16
18	13	17
19	13	18
20	13	19
21	13	20
22	13	21
23	14	22
24	14	23
25	14	24
26	14	8
27	14	25
28	15	26
29	15	27
30	16	27
31	28	28
32	28	29
33	28	30
34	28	7
35	28	31
42	47	21
50	75	38
51	75	8
52	75	39
59	83	31
60	83	42
61	83	43
62	85	44
63	85	31
64	85	8
\.


--
-- Data for Name: post_timeinfo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_timeinfo (id, name, value_count, value_type) FROM stdin;
1	Active Between	2	YEAR
2	Start Year	1	YEAR
3	Year	1	YEAR
4	Year Range	2	YEAR
5	Year	1	YEAR
6	Year Range	2	YEAR
\.


--
-- Data for Name: post_timeinfogroup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_timeinfogroup (id, "timeValue1", "timeValue2", "timeInfo_id") FROM stdin;
1	2010	undefined	2
2	1950	undefined	2
3	1999	2016	1
4	2003	2005	1
5	1980	1987	1
6	1970	1990	1
7	1990	2000	1
8	2016	undefined	2
9	1222	0	2
10	2008	undefined	2
11	2010	undefined	2
12	2005	2011	1
13	1911	undefined	2
14	1990	2000	1
15	1940	1980	1
16	1930	1985	1
17	0	0	1
18	0	0	1
19	0	0	1
20	0	0	1
21	0	0	1
22	0	0	1
23	0	0	1
24	0	0	1
25	0	0	1
26	0	0	1
27	0	0	1
28	1995	2000	1
29	0	0	1
30	0	0	1
31	0	0	1
32	0	0	1
33	0	0	1
34	0	0	1
35	3433	0	2
36	1911	0	1
37	0	0	1
38	0	0	1
39	0	0	1
40	0	0	1
41	0	0	1
42	0	0	1
43	0	0	1
44	0	0	1
45	0	0	1
46	1990	2006	1
47	1999	2013	1
48	0	0	1
49	0	0	1
50	0	0	1
51	0	0	1
52	0	0	1
53	0	0	1
54	0	0	1
55	0	0	1
56	0	0	1
57	0	0	1
58	0	0	1
59	0	0	1
60	0	0	1
61	0	0	1
62	0	0	1
63	0	0	1
64	0	0	1
65	0	0	1
66	0	0	1
67	0	0	1
68	0	0	1
69	0	0	1
70	1930	0	2
71	56	0	1
72	0	0	1
73	0	0	1
74	0	0	1
75	1930	0	2
76	0	0	1
77	1911	1999	2
78	2001	2008	1
79	2001	2008	1
80	2001	2008	1
81	2001	2008	1
82	2001	0	2
83	1930	undefined	2
84	1800	undefined	2
85	1800	undefined	2
\.


--
-- Name: anno_annotation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('anno_annotation_id_seq', 69, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 45, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 30, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 15, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 20, true);


--
-- Name: post_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('post_category_id_seq', 44, true);


--
-- Name: post_marker_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('post_marker_id_seq', 33, true);


--
-- Name: post_point_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('post_point_id_seq', 120, true);


--
-- Name: post_polyline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('post_polyline_id_seq', 29, true);


--
-- Name: post_post_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('post_post_category_id_seq', 64, true);


--
-- Name: post_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('post_post_id_seq', 85, true);


--
-- Name: post_timeinfo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('post_timeinfo_id_seq', 6, true);


--
-- Name: post_timeinfogroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('post_timeinfogroup_id_seq', 85, true);


--
-- Name: anno_annotation anno_annotation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY anno_annotation
    ADD CONSTRAINT anno_annotation_pkey PRIMARY KEY (id);


--
-- Name: api_tokens api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY api_tokens
    ADD CONSTRAINT api_tokens_pkey PRIMARY KEY (token);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: post_category post_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_category
    ADD CONSTRAINT post_category_pkey PRIMARY KEY (id);


--
-- Name: post_marker post_marker_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_marker
    ADD CONSTRAINT post_marker_pkey PRIMARY KEY (id);


--
-- Name: post_point post_point_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_point
    ADD CONSTRAINT post_point_pkey PRIMARY KEY (id);


--
-- Name: post_polyline post_polyline_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_polyline
    ADD CONSTRAINT post_polyline_pkey PRIMARY KEY (id);


--
-- Name: post_post_category post_post_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_post_category
    ADD CONSTRAINT post_post_category_pkey PRIMARY KEY (id);


--
-- Name: post_post_category post_post_category_post_id_category_id_114d1bd4_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_post_category
    ADD CONSTRAINT post_post_category_post_id_category_id_114d1bd4_uniq UNIQUE (post_id, category_id);


--
-- Name: post_post post_post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_post
    ADD CONSTRAINT post_post_pkey PRIMARY KEY (id);


--
-- Name: post_timeinfo post_timeinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_timeinfo
    ADD CONSTRAINT post_timeinfo_pkey PRIMARY KEY (id);


--
-- Name: post_timeinfogroup post_timeinfogroup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_timeinfogroup
    ADD CONSTRAINT post_timeinfogroup_pkey PRIMARY KEY (id);


--
-- Name: anno_annotation_author_id_acbd56d2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX anno_annotation_author_id_acbd56d2 ON anno_annotation USING btree (author_id);


--
-- Name: anno_annotation_listory_id_3fd118b5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX anno_annotation_listory_id_3fd118b5 ON anno_annotation USING btree (listory_id);


--
-- Name: api_tokens_user_id_2db24e1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX api_tokens_user_id_2db24e1c ON api_tokens USING btree (user_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: post_marker_listory_id_05b229a4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_marker_listory_id_05b229a4 ON post_marker USING btree (listory_id);


--
-- Name: post_point_line_id_54a8dd71; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_point_line_id_54a8dd71 ON post_point USING btree (line_id);


--
-- Name: post_polyline_listory_id_9c6e66de; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_polyline_listory_id_9c6e66de ON post_polyline USING btree (listory_id);


--
-- Name: post_post_category_category_id_f9ae0d8d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_post_category_category_id_f9ae0d8d ON post_post_category USING btree (category_id);


--
-- Name: post_post_category_post_id_6eb32df2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_post_category_post_id_6eb32df2 ON post_post_category USING btree (post_id);


--
-- Name: post_post_timeInfoGroup_id_7894a140; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "post_post_timeInfoGroup_id_7894a140" ON post_post USING btree ("timeInfoGroup_id");


--
-- Name: post_post_user_id_b9c97aef; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_post_user_id_b9c97aef ON post_post USING btree (user_id);


--
-- Name: post_timeinfogroup_timeInfo_id_29f5e15b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "post_timeinfogroup_timeInfo_id_29f5e15b" ON post_timeinfogroup USING btree ("timeInfo_id");


--
-- Name: anno_annotation anno_annotation_author_id_acbd56d2_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY anno_annotation
    ADD CONSTRAINT anno_annotation_author_id_acbd56d2_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: anno_annotation anno_annotation_listory_id_3fd118b5_fk_post_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY anno_annotation
    ADD CONSTRAINT anno_annotation_listory_id_3fd118b5_fk_post_post_id FOREIGN KEY (listory_id) REFERENCES post_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_tokens api_tokens_user_id_2db24e1c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY api_tokens
    ADD CONSTRAINT api_tokens_user_id_2db24e1c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_marker post_marker_listory_id_05b229a4_fk_post_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_marker
    ADD CONSTRAINT post_marker_listory_id_05b229a4_fk_post_post_id FOREIGN KEY (listory_id) REFERENCES post_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_point post_point_line_id_54a8dd71_fk_post_polyline_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_point
    ADD CONSTRAINT post_point_line_id_54a8dd71_fk_post_polyline_id FOREIGN KEY (line_id) REFERENCES post_polyline(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_polyline post_polyline_listory_id_9c6e66de_fk_post_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_polyline
    ADD CONSTRAINT post_polyline_listory_id_9c6e66de_fk_post_post_id FOREIGN KEY (listory_id) REFERENCES post_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_post_category post_post_category_category_id_f9ae0d8d_fk_post_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_post_category
    ADD CONSTRAINT post_post_category_category_id_f9ae0d8d_fk_post_category_id FOREIGN KEY (category_id) REFERENCES post_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_post_category post_post_category_post_id_6eb32df2_fk_post_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_post_category
    ADD CONSTRAINT post_post_category_post_id_6eb32df2_fk_post_post_id FOREIGN KEY (post_id) REFERENCES post_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_post post_post_timeInfoGroup_id_7894a140_fk_post_timeinfogroup_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_post
    ADD CONSTRAINT "post_post_timeInfoGroup_id_7894a140_fk_post_timeinfogroup_id" FOREIGN KEY ("timeInfoGroup_id") REFERENCES post_timeinfogroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_post post_post_user_id_b9c97aef_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_post
    ADD CONSTRAINT post_post_user_id_b9c97aef_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_timeinfogroup post_timeinfogroup_timeInfo_id_29f5e15b_fk_post_timeinfo_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_timeinfogroup
    ADD CONSTRAINT "post_timeinfogroup_timeInfo_id_29f5e15b_fk_post_timeinfo_id" FOREIGN KEY ("timeInfo_id") REFERENCES post_timeinfo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

