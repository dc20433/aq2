--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.patients DROP CONSTRAINT fk_rails_faa6e0fcc2;
ALTER TABLE ONLY public.active_storage_attachments DROP CONSTRAINT fk_rails_c3b3935057;
ALTER TABLE ONLY public.filings DROP CONSTRAINT fk_rails_9abd4b7898;
ALTER TABLE ONLY public.active_storage_variant_records DROP CONSTRAINT fk_rails_993965df05;
ALTER TABLE ONLY public.charts DROP CONSTRAINT fk_rails_89fcde0ec1;
DROP INDEX public.index_users_on_reset_password_token;
DROP INDEX public.index_users_on_email;
DROP INDEX public.index_patients_on_regi_id;
DROP INDEX public.index_filings_on_regi_id;
DROP INDEX public.index_charts_on_regi_id;
DROP INDEX public.index_active_storage_variant_records_uniqueness;
DROP INDEX public.index_active_storage_blobs_on_key;
DROP INDEX public.index_active_storage_attachments_uniqueness;
DROP INDEX public.index_active_storage_attachments_on_blob_id;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
ALTER TABLE ONLY public.regis DROP CONSTRAINT regis_pkey;
ALTER TABLE ONLY public.patients DROP CONSTRAINT patients_pkey;
ALTER TABLE ONLY public.filings DROP CONSTRAINT filings_pkey;
ALTER TABLE ONLY public.charts DROP CONSTRAINT charts_pkey;
ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
ALTER TABLE ONLY public.active_storage_variant_records DROP CONSTRAINT active_storage_variant_records_pkey;
ALTER TABLE ONLY public.active_storage_blobs DROP CONSTRAINT active_storage_blobs_pkey;
ALTER TABLE ONLY public.active_storage_attachments DROP CONSTRAINT active_storage_attachments_pkey;
ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.regis ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.patients ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.filings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.charts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.active_storage_variant_records ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.active_storage_blobs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.active_storage_attachments ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.users_id_seq;
DROP TABLE public.users;
DROP TABLE public.schema_migrations;
DROP SEQUENCE public.regis_id_seq;
DROP TABLE public.regis;
DROP SEQUENCE public.patients_id_seq;
DROP TABLE public.patients;
DROP SEQUENCE public.filings_id_seq;
DROP TABLE public.filings;
DROP SEQUENCE public.charts_id_seq;
DROP TABLE public.charts;
DROP TABLE public.ar_internal_metadata;
DROP SEQUENCE public.active_storage_variant_records_id_seq;
DROP TABLE public.active_storage_variant_records;
DROP SEQUENCE public.active_storage_blobs_id_seq;
DROP TABLE public.active_storage_blobs;
DROP SEQUENCE public.active_storage_attachments_id_seq;
DROP TABLE public.active_storage_attachments;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO postgres;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_variant_records_id_seq OWNER TO postgres;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: charts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.charts (
    id bigint NOT NULL,
    t_date date,
    obj text,
    assess text,
    plan text,
    o_treats character varying,
    subj text,
    regi_id bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.charts OWNER TO postgres;

--
-- Name: charts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.charts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.charts_id_seq OWNER TO postgres;

--
-- Name: charts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.charts_id_seq OWNED BY public.charts.id;


--
-- Name: filings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filings (
    id bigint NOT NULL,
    describe text,
    regi_id bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.filings OWNER TO postgres;

--
-- Name: filings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.filings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filings_id_seq OWNER TO postgres;

--
-- Name: filings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.filings_id_seq OWNED BY public.filings.id;


--
-- Name: patients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.patients (
    id bigint NOT NULL,
    v_date date,
    m_stat character varying,
    weight numeric(4,1),
    height numeric(2,1),
    street character varying,
    city character varying,
    state character varying,
    zip character varying,
    cell character varying,
    home character varying,
    work character varying,
    email character varying,
    referred character varying,
    com1 character varying,
    com2 character varying,
    com3 character varying,
    pain_scale character varying,
    d_lost numeric(4,1),
    d_restd numeric(4,1),
    c_onset character varying,
    better character varying,
    worse character varying,
    o_drs character varying,
    o_drs_when date,
    pcp_name character varying,
    hosp character varying,
    h_when date,
    diag_given character varying,
    diag_where character varying,
    aq_b4 character varying,
    aqrist character varying,
    aq_where character varying,
    di_list character varying[] DEFAULT '{}'::character varying[],
    string character varying[] DEFAULT '{}'::character varying[],
    o_dis character varying,
    inj_surg character varying,
    med_taken character varying,
    alcohol character varying,
    tobacco character varying,
    last_prd date,
    preg character varying,
    preg_wks integer,
    regi_id bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    d_onset date
);


ALTER TABLE public.patients OWNER TO postgres;

--
-- Name: patients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.patients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.patients_id_seq OWNER TO postgres;

--
-- Name: patients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.patients_id_seq OWNED BY public.patients.id;


--
-- Name: regis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.regis (
    id bigint NOT NULL,
    last_name character varying,
    first_name character varying,
    init character varying,
    gender character varying,
    dob date,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.regis OWNER TO postgres;

--
-- Name: regis_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.regis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.regis_id_seq OWNER TO postgres;

--
-- Name: regis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.regis_id_seq OWNED BY public.regis.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(0) without time zone,
    remember_created_at timestamp(0) without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp(0) without time zone,
    last_sign_in_at timestamp(0) without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    role integer DEFAULT 0
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: charts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charts ALTER COLUMN id SET DEFAULT nextval('public.charts_id_seq'::regclass);


--
-- Name: filings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filings ALTER COLUMN id SET DEFAULT nextval('public.filings_id_seq'::regclass);


--
-- Name: patients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patients ALTER COLUMN id SET DEFAULT nextval('public.patients_id_seq'::regclass);


--
-- Name: regis id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regis ALTER COLUMN id SET DEFAULT nextval('public.regis_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
3	image	Filing	3	3	2023-02-18 23:09:51.744967
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
1	2fhwvtayoso8nn8fw7i2284khfmv	DSC00428.JPG	image/jpeg	{"identified":true,"width":3648,"height":2736,"analyzed":true}	local	4540685	CTDU6fTFlKAnf/zraWaUug==	2023-01-27 16:58:48.085104
2	2s259j5onfyu7zx1e77noc6slztm	DSC00433.JPG	image/jpeg	{"identified":true,"width":2736,"height":3648,"analyzed":true}	local	3981528	JJW8B6k/plafF2dUCBfPRA==	2023-01-27 17:05:29.560308
3	82pr1nmse7gxk42llcsn5x9wt7m3	DSC00456.JPG	image/jpeg	{"identified":true,"width":3648,"height":2736,"analyzed":true}	local	3442762	glM0F1nxije4V8E57PwROg==	2023-02-18 23:09:51.742027
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2023-01-27 16:20:01.463284	2023-01-27 16:20:01.463284
schema_sha1	899905ecf683c0e604a584d83b45190da02326b9	2023-01-27 16:20:01.469617	2023-01-27 16:20:01.469617
\.


--
-- Data for Name: charts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.charts (id, t_date, obj, assess, plan, o_treats, subj, regi_id, created_at, updated_at) FROM stdin;
26	2023-01-16	脉紧，一息四至，舌淡红，白薄苔。	肝风内动，眩晕，内耳失衡。	气血三内关公孙木针行间太冲 (B)小同步。	\N	耳鸣，耳朵有压力减轻，她原有听力减退。无眩晕，无恶心，睡眠质量好饮食二便正常。	52	2023-02-17 18:27:12	2023-02-23 01:42:41
41	2023-02-07	脉浮缓有力，一息四至，舌暗红。	郁热于内，阳气不能外达，	养筋汤加味合四逆散：白芍3熟地3麦冬3酸枣仁1巴戟天1+柴胡3枳实3干姜3补骨脂1。 气血三内关公孙木针膝五针行间太冲(B)。	\N	膝关节摩擦减轻，疼痛减轻，水肿消退。饮食规律，二便调。	46	2023-02-17 18:44:19	2023-02-23 01:40:41
40	2023-01-24	脉沉缓有力，左脉大，一息四至，舌暗红。	郁热于内，阳气不能外达，还可用四逆散。	养筋汤加味合四逆散：白芍3熟地3麦冬3酸枣仁1巴戟天1+柴胡3枳实3干姜3补骨脂1。 气血三内关公孙木针膝五针行间太冲(B)。	\N	膝关节疼痛减轻，水肿消退，未行房	46	2023-02-17 18:43:00	2023-02-23 01:40:56
27	2023-01-14	脉紧，一息四至，舌淡红。	肝风内动	气血三内关公孙木针行间太冲(B)小同步。	\N	耳鸣，耳朵有压力减轻，无眩晕，睡眠质量好饮食二便正常。	52	2023-02-17 18:28:11	2023-02-23 01:42:56
28	2023-01-12	脉一息四至，舌淡红。	肝风内动	苓桂术甘汤合越菊丸：茯苓4桂枝3白术3炙甘草2香附2苍术2川芎2栀子2神曲2。 气血三内关公孙木针行间太冲(B)小同步。	\N	耳鸣，耳朵有压力一年，近来开始感到旋晕。经中医治疗后有好转，但不久前在澳大利亚在潮湿高热的环境中再次发生耳鸣及耳内压力增加，无眩晕，睡眠质量好饮食二便正常。	52	2023-02-17 18:29:10	2023-02-23 01:43:11
30	2023-01-17	脉沉紧，一息四至，舌质暗红，白苔。	风寒湿痺	白芍5炙甘草2附子2茯苓4干姜4白术2牛膝2。 气血三中渚后溪肾源三行间太冲(B)。	\N	腰痛，右腿痛，放射到足跟约一周。	64	2023-02-17 18:34:12	2023-02-23 01:51:14
29	2023-01-19	脉紧，一息四至，舌质暗红，白湿苔。	风寒湿痺	气血三中渚后溪肾源三行间太冲(B)环跳(R)。	\N	腰痛，右腿痛放射到足跟。	64	2023-02-17 18:33:33	2023-02-23 01:51:28
31	2023-02-01	脉沉无力，一息四至。舌红瘦，苔略干。四肢寒至腕及踝	厥阴病，热深厥深	芍药甘草合吴茱萸汤，白芍7炙甘草2桂枝2川牛膝2吴茱萸2生姜2三七2党参2 气血三中渚后溪肾源三行间太冲(B)。	\N	左大腿根痛两年，经多位西医检查未发现异常。睡眠饮食二便均好。	85	2023-02-17 18:35:27	2023-02-23 02:16:53
32	2023-02-06	脉沉无力，一息四至。舌红瘦，苔略干。四肢寒退至指根。	厥阴病，热深厥深	气血三中渚后溪肾源三行间太冲(B)。	\N	左大腿根仍痛导致睡眠不足，饮食二便均好。	85	2023-02-17 18:36:17	2023-02-23 02:17:04
33	2023-02-09	脉沉，一息四至。舌红瘦，苔略干。四肢寒减轻。	厥阴病，热深厥深	气血三中渚后溪木针行间太冲(B)。	\N	左大腿痛已显著好转，不影响睡眠，饮食二便均好。	85	2023-02-17 18:37:12	2023-02-23 02:17:11
34	2023-02-13	脉沉一息四至。舌红瘦，四肢寒减轻。	厥阴病，热深厥深	气血三中渚后溪木针行间太冲(B)。	\N	左大腿痛已显著好转，不影响睡眠，饮食二便均好。不服药	85	2023-02-17 18:37:51	2023-02-23 02:17:17
35	2023-01-04	脉一息四至，舌淡红，伸舌略偏右。	肝气郁结	归脾汤21。 气血三内关公孙木针行间太冲(B)。	\N	血压：138/80，精神状态好，睡眠质量好	37	2023-02-17 18:38:52	2023-02-23 02:45:47
36	2023-01-25	脉浮一息四至，舌淡红，薄湿苔，伸舌不偏。	保健	气血三内关公孙木针行间太冲(B)。	\N	血压：135/82，刚度假回来，精神饱满，睡眠质量好，饮食清淡，二便调。	37	2023-02-17 18:39:38	2023-02-23 02:45:58
38	2023-02-10	脉软一息四至，舌淡红，薄湿苔，伸舌偏右。	虚劳	气血三内关公孙木针行间太冲(B)。	\N	两天前有一次轻感冒，已经恢复。血压：135/82，头脑清醒，二便调。	37	2023-02-17 18:41:02	2023-02-23 02:46:07
37	2023-02-03	脉浮一息四至，舌淡红，薄湿苔，伸舌偏右。	虚劳	气血三内关公孙木针行间太冲(B)。 人参养荣汤。	\N	血压：135/82，头脑清醒，二便调。	37	2023-02-17 18:40:28	2023-02-23 02:46:19
25	2023-01-06	脉一息四至，舌淡红湿苔。	外伤，颈肩痛，膝痛	气血三中渚后溪木针行间太冲(B)。 养筋汤合肾着汤：白芍3熟地3麦冬3酸枣仁1巴戟天1茯苓4干姜4白术2。	\N	右颊痛两天，左肘右膝及腰痛均好转。	60	2023-02-17 18:25:48	2023-02-23 02:47:10
24	2023-01-14	脉一息四至，舌淡红。	外伤，颈肩痛	气血三中渚后溪木针行间太冲(B)。 桂枝汤加味：桂枝3白芍3生姜3大枣2炙甘草2葛根4防风2伸筋草2。	\N	右手拇食指发麻，颈及右肩肌肉紧张酸痛，左肘好转，右膝恢复，腰痛减轻，睡眠质量好，饮食二便调。	60	2023-02-17 18:24:56	2023-02-23 02:47:21
23	2023-01-16	脉一息四至，左寸弦脉，舌淡红。	心气虚	气血三中渚后溪木针行间太冲(B)。	\N	右手拇食指发麻，颈及右肩不痛，左肘好转，右膝恢复，腰痛减轻，睡眠质量好，饮食二便调。	60	2023-02-17 18:24:08	2023-02-23 02:47:31
22	2023-01-20	脉一息四至，左寸无弦脉，舌淡红。	心气虚	气血三中渚后溪木针行间太冲(B)。 栝楼薤白半夏汤，栝楼6薤白2半夏6茯苓2干姜2白术1党参2，服前加一tsp酒x2。	\N	颈及右肩痛，腰痛，右膝恢复，腰痛减轻，饮食二便调。	60	2023-02-17 18:23:13	2023-02-23 02:47:44
21	2023-02-03	脉一息四至，舌淡红，舌尖红。	一点钟属肝	气血三中渚后溪肾源三行间太冲(B)。 酸枣仁汤，酸枣仁5茯苓2知母2灸甘草1川芎2川牛膝2防风2伸筋草2牡蛎3。	\N	过去三天失眠，半夜一点醒来无法再入睡。颈及右肩痛，腰痛，右膝恢复，腰痛减轻，饮食二便调。	60	2023-02-17 18:22:03	2023-02-23 02:47:57
20	2023-02-10	脉一息四至，舌淡红。	太阳病	气血三中渚后溪肾源三行间太冲(B)。 桂枝汤加味：桂枝3白芍3生姜3大枣2炙甘草2葛根4防风2伸筋草2。	\N	颈痛，腰疼	60	2023-02-17 18:21:02	2023-02-23 02:48:09
42	2023-01-14	脉一息四至，左寸弦。舌淡胖。	covid后遗症	银翘散21:连翘10银花10桔梗6薄荷6竹叶4甘草5荆芥4淡豆豉5牛蒡子6。 气血三内关公孙木针行间太冲(B)。	\N	上周患covid，乏力，心悸，	56	2023-02-17 18:45:38	2023-02-23 03:56:54
260	2023-01-12	脉紧一息四至，舌红白苔，寒热错杂。	痺证	气血三中渚后溪肾源三行间太冲(B)。	\N	颈背腰痛，	41	2023-02-18 02:34:08	2023-02-18 02:34:08
63	2023-02-06	脉沉，一息四至。舌胖暗红，伸舌尖偏左	虚劳，腰痛	气血三内关公孙肾源三行间太冲(B)。	\N	右腰腿痛显著减轻，走路已经不瘸。	89	2023-02-17 19:04:44	2023-02-22 02:49:42
64	2023-02-08	脉沉，一息四至。舌胖暗红，伸舌尖偏左	虚劳，腰痛腿痛	气血三内关公孙肾源三行间太冲(B)。	\N	右腰腿痛减轻后随活动增加，又开始痛	89	2023-02-17 19:05:16	2023-02-22 02:49:49
111	2023-01-03	脉一息四至。腰活动受限	肾虚腰痛	气血三中渚后溪肾源三行间太冲(B)。	\N	腰痛减轻，偶发性腰痛。	13	2023-02-17 22:38:55	2023-02-23 02:00:20
65	2023-02-10	脉一息四至。舌胖暗红，	虚劳，腰痛腿痛	气血三中渚后溪肾源三行间太冲(B)。 理中汤合肾着汤，白术3党参3干姜3炙甘草3茯苓3百合3合欢皮3。	\N	右腿痛减轻，仅在站立时感觉痛，伸舌不偏，白日精力充沛	89	2023-02-17 19:05:55	2023-02-22 02:50:09
66	2023-02-14	脉沉一息四至。舌胖暗红，舌尖不偏	虚劳，寒湿腰腿痛	气血三中渚后溪肾源三行间太冲(B)。 肾着汤合芍药甘草汤，茯苓4干姜4白术2炙甘草2白芍6附子2川牛膝2桂枝2三七2(3/4勺)。	\N	治疗后石腿痛减轻，但回家后又开始痛。上周体重减四磅($160)	89	2023-02-17 19:06:39	2023-02-22 02:50:27
56	2023-02-03	脉沉细一息四至，舌暗红	少阴病	气血三中渚后溪木针膝五针行间太冲(B)。 养筋汤加味，白芍3熟地3麦冬3酸枣仁1巴戟天1伸筋草2络石藤2桂枝2川牛膝2三七2	\N	右膝关节疼痛两月，左手肌腱痿缩。	90	2023-02-17 18:59:47	2023-02-22 02:51:55
57	2023-02-06	脉沉细一息四至，舌暗红	少阴病	气血三中渚后溪木针膝五针行间太冲(B)。	\N	右膝关节痛减轻且局限，左手肌腱开始松弛	90	2023-02-17 19:00:22	2023-02-22 02:52:02
58	2023-02-08	脉沉细一息四至，舌暗红	少阴病	气血三中渚后溪木针膝五针行间太冲(B)。	\N	右膝关节痛治疗后一过性加重，后几乎完全消失，左手肌腱开始松弛	90	2023-02-17 19:00:49	2023-02-22 02:52:09
59	2023-02-10	脉沉细一息四至，舌暗红	少阴病	气血三中渚后溪木针膝五针行间太冲(B)。 养筋汤加味，白芍3熟地3麦冬3酸枣仁1巴戟天1伸筋草2络石藤2桂枝2川牛膝2三七2。	\N	右膝关几乎不痛，左手肌腱松解	90	2023-02-17 19:01:20	2023-02-22 02:52:24
60	2023-02-14	脉一息四至，舌暗红	少阴病	气血三中渚后溪木针膝五针行间太冲(B)。	\N	治疗进步明显，右膝关几乎不痛，左手肌腱松解	90	2023-02-17 19:02:00	2023-02-22 02:52:30
61	2023-02-16	脉一息四至，舌暗红	少阴病，骨关节炎。西医诊断房颤	气血三中渚后溪五虎一木针膝五针行间太冲(B)。	\N	右膝关节不痛，左手肌腱松解	90	2023-02-17 19:02:52	2023-02-22 02:52:37
55	2023-02-16	脉沉一息四至，舌边红，白苔。	少阴病，骨关节炎	气血三中渚后溪五虎－木针膝五针行间太冲(B)。 养筋汤合芍药甘草汤：白芍3熟地3麦冬3酸枣仁1巴戟天1炙甘草2川牛膝2桂枝2三七2附子2。	\N	双手食指痛，关节炎。左膝疼，常有无力感，时有响声	76	2023-02-17 18:58:03	2023-02-23 01:29:15
54	2023-01-25	脉一息四至，舌边红，白苔。	少阴病，枢机不利。	气血三内关公孙肾源三行间太冲(B)。 逍遥散加味，柴胡3当归3白芍3白术3 茯苓3炙甘草1.5薄荷1炮姜1牡丹皮1栀子1｡	\N	紧张，夜里醒几次，饮食二便好。想减肥。	76	2023-02-17 18:57:19	2023-02-23 01:29:33
52	2023-02-07	脉浮一息四至，舌淡红	记忆力属心，少阴病	气血三内关公孙木针行间太冲(B)。 孔圣枕中丹，龟板4龙骨4远志4九节菖蒲4当归2党参2砂仁1。	\N	记忆力下降，饮食规律，睡眠质量好，二便调。	96	2023-02-17 18:55:10	2023-02-23 03:37:44
53	2023-02-17	脉浮一息四至，舌淡红	记忆力属心，少阴病	气血三内关公孙木针行间太冲(B)。 孔圣枕中丹，龟板4龙骨4远志4九节菖蒲4当归2党参2砂仁1。	\N	记忆力好转，饮食规律，睡眠质量好，二便调。	96	2023-02-17 18:55:37	2023-02-23 03:37:59
51	2023-02-17	脉沉细一息五至，舌淡红	少阴病	气血三内关公孙木针行间太冲(B)。 猪苓汤：猪苓4茯苓4泽泻4滑石4阿胶4。	\N	尿頻尿急尿痛一周，服抗生素三天但未完全恢复，仍然有症状，无发热身痛	113	2023-02-17 18:54:12	2023-02-23 03:38:40
45	2023-01-06	伸舌轻度偏右，舌质红，白苔，脉两关浮滑，一息四至。	肝气郁结，伏热	桑菊饮加味：杏仁4连翘3薄荷2桑叶6桔梗4甘草2芦根4半夏2陈皮2。两剂。 气血三列却照海金针行间太冲(B)。	\N	头痛，干咳，有痰无法吐出。	28	2023-02-17 18:48:22	2023-02-23 03:47:46
46	2023-01-25	伸舌轻度偏右，舌质淡红，白苔，脉两浮缓，一息四至。	太阳病，咽痛	气血三列却照海金针行间太冲(B)。	\N	刚度假回来，咽痛，皮肤上有数快皮疹，饮食好，睡眠好，二便调，精神饱满。	28	2023-02-17 18:49:27	2023-02-23 03:48:02
47	2023-02-03	伸舌轻度偏右，舌质淡红，白苔，脉浮一息四至。	太阳病，瘀热在表	气血三内关公孙木针行间太冲(B)。 麻黄连翘赤小豆汤，浮萍3连翘2桑白皮3赤小豆10杏仁1大枣2生姜2炙甘草2 (3/4勺)	\N	手上身上及颈部后方出现牛皮癣。	28	2023-02-17 18:50:08	2023-02-23 03:48:16
48	2023-02-10	伸舌轻度偏右，舌质淡红，白苔，脉浮一息四至。	虚劳	气血三内关公孙木针行间太冲(B)。	\N	皮疹好转。	28	2023-02-17 18:50:57	2023-02-23 03:48:27
49	2023-02-13	伸舌轻度偏右，舌红，白苔，脉浮数一息五至。	风热感冒，虚劳	气血三内关公孙木针行间太冲(B)。 银翘散，连翘10银花10桔梗6薄荷6竹叶4荆芥4淡豆豉5牛蒡子6。	\N	昨天感冒，今天发低烧，胸闷，头痛咽痛	28	2023-02-17 18:52:17	2023-02-23 03:48:39
50	2023-02-17	脉浮无力一息四至，伸舌轻度偏右，舌红白苔。	风热感冒，虚劳	气血三内关公孙木针行间太冲(B)。 清气化痰丸21：陈皮2杏仁2枳实2黄芩2瓜蒌子2茯苓2胆南星3夏3。	\N	昨日发烧呕吐，不能饮水进食，未服药。咳嗽有痰。	28	2023-02-17 18:52:58	2023-02-23 03:48:51
43	2023-01-28	脉紧沉一息四至，舌淡胖。	保健	加味逍遥散，柴胡3白芍3白术3当归3茯苓3炮姜2炙甘草1薄荷1栀子1丹皮1。 气血三内关公孙木针行间太冲(B)。	\N	精神紧张缓解，昨晚睡眠质量是数年以来最好的一次。	56	2023-02-17 18:46:21	2023-02-23 03:57:07
44	2023-02-11	脉紧一息四至，舌淡胖。	保健	加味逍遥散，柴胡3白芍3白术3当归3茯苓3炮姜2炙甘草1薄荷1栀子1丹皮1。 气血三内关公孙木针行间太冲(B)。	\N	体重238 Ib，仍然紧张	56	2023-02-17 18:47:02	2023-02-23 03:57:17
262	2023-01-19	脉一息四至，舌暗红薄苔。	痺证	气血三中渚后溪金针行间太冲(B)。	\N	颈痛，腰痛	41	2023-02-18 02:35:16	2023-02-18 02:35:16
391	2022-06-14	Headaches	Acupuncture	97810. 97811	\N	R51.9	100	2023-02-18 15:13:26	2023-02-18 15:13:26
69	2023-01-11	脉沉迟一息四至，舌淡。	少阴病，痿证，膀胱，下肢	气血三内关公孙肾源三足三里行间太冲排寒五针(B)。	\N	膀胱仍无感觉，反而是足感觉变暖。	115	2023-02-17 19:09:27	2023-02-22 01:50:39
70	2023-01-16	脉沉迟一息四至，舌淡。	少阴病，痿证，膀胱，下肢	气血三内关公孙肾源三足三里行间太冲排寒五针(B)。	\N	膀胱开始有感觉，下肢开始感觉有力。	115	2023-02-17 19:10:15	2023-02-22 01:50:51
75	2023-02-07	脉一息四至，舌淡湿苔。	少阴病，痿证，膀胱无力，下肢萎软	气血三内关公孙肾源三足三里行间太冲排寒五针(B)。 猪苓汤加吴茱萸生姜，猪苓2茯苓2泽泻2滑i石2阿胶2吴茱萸3生姜3 +萆藓分清饮5	\N	手足发热，傍晚膀胱排尿，小便混浊仍然需要导尿。	115	2023-02-17 19:14:19	2023-02-22 01:53:18
192	2023-02-13	脉一息四至，舌淡红薄苔	太阴病，腹胀	气血三内关公孙木针行间太冲下腹五(B)。	\N	膀胱仍有刺激。腹不胀	47	2023-02-17 23:54:30	2023-02-23 03:36:28
72	2023-01-24	脉沉一息四至，舌淡湿苔	少阴病，痿证，膀胱无力，下肢萎软，猪苓汤见效。	气血三内关公孙肾源三足三里行间太冲排寒五针(B)。	\N	仍然无尿意，但对膀胱施加压力，尿液容易排出，尿道开始通畅。足寒减轻，麻木针刺感减轻，足部逐渐发热。	115	2023-02-17 19:11:59	2023-02-22 01:51:31
67	2023-02-16	脉沉一息四至。舌胖暗红，舌尖不偏	虚劳，寒湿腰腿痛	气血三中渚后溪行间太冲(B)木针(L)金针 (R)。肝升肺降	\N	右腰腿疼痛减轻，肾着汤合芍药甘草汤起作用。	89	2023-02-17 19:07:17	2023-02-22 02:50:42
74	2023-02-01	脉一息四至，舌淡湿苔。	少阴病，痿证，膀胱无力，下肢萎软	气血三内关公孙肾源三足三里行间太冲排寒五针(B)。	\N	手足发热，膀胱开始有感觉	115	2023-02-17 19:13:43	2023-02-22 01:51:46
73	2023-01-27	脉沉一息四至，舌淡湿苔。足仍寒	少阴病，痿证，膀胱无力，下肢萎软，猪苓汤加吴茱萸生姜	气血三内关公孙肾源三足三里行间太冲排寒五针(B)。 猪苓汤加吴茱萸生姜，猪苓3茯苓3泽泻3滑石3阿胶3吴茱萸3生姜3。	\N	尿道开始通畅，可自己排出一百到二百毫升尿液。足寒减轻，麻木针刺感减轻，足部逐渐发热。	115	2023-02-17 19:12:51	2023-02-22 01:51:59
77	2023-02-14	脉浮一息四至，舌淡湿苔，舌裂多。	少阴病，痿证，膀胱无力，下肢萎软	气血三内关公孙肾源三足三里行间太冲排寒五针(B)。	\N	曾经有一天可以完全自主排尿，后来两天则不行，需要用导尿管	115	2023-02-17 19:15:40	2023-02-22 01:53:38
76	2023-02-10	脉一息四至，舌淡湿苔。	少阴病，痿证，膀胱无力，下肢萎软	气血三内关公孙肾源三足三里行间太冲排寒五针(B)。	\N	手足发热，可自主排空一半的小便	115	2023-02-17 19:15:03	2023-02-22 01:53:45
71	2023-01-19	脉沉迟一息四至，舌淡。	少阴病，痿证，膀胱无力，下肢萎软	气血三内关公孙肾源三足三里行间太冲排寒五针(B)。 猪苓汤，猪苓4茯苓4泽泻4滑石4阿胶4。	\N	两周前前列腺手术，需要每日插导尿管，感觉困难，腰痛减轻，下肢开始感觉有力，发热。	115	2023-02-17 19:10:59	2023-02-22 01:54:46
78	2023-01-02	体重总共减轻12磅，脉沉一息四至，舌胖。开始体重275 Ib。	肾阳虚腰痛，减肥	苓桂姜附阿胶汤合白虎加人参汤：茯苓3桂枝3干姜3附子3甘草2阿胶3+白虎加人参汤4。 气血三中渚后溪肾源三行间太冲(B)。	\N	腰痛，左肩痛两年。治疗后左肩痛好转，腰痛减轻，平卧时间延长，一天半不服止痛片。	12	2023-02-17 19:17:14	2023-02-23 02:38:41
79	2023-01-04	体重总共减轻15磅，脉沉一息四至，舌胖。	肾阳虚腰痛，减肥	气血三中渚后溪肾源三行间太冲(B)。	\N	腰痛减轻，平卧时间延长，昨晚未服止痛片直到今天早上。	12	2023-02-17 19:18:05	2023-02-23 02:38:55
80	2023-01-06	脉紧一息四至，舌质红薄苔。现体重260磅。	肾阳虚腰痛，减肥	气血三中渚后溪肾源三行间太冲束骨(B)百会。	\N	腰痛减轻，服用止痛片间隔延长，平卧使腰痛加重。	12	2023-02-17 19:18:40	2023-02-23 02:39:10
81	2023-01-09	脉紧一息四至，舌质红薄苔。	肾阳虚腰痛，减肥	肾着汤加味：茯苓4干姜4白术2威灵仙2伸筋草2桃仁2红花2乳香2没药2。气血三中渚后溪肾源三行间太冲束骨(B)。	\N	腰痛减轻，肩痛，食欲减退，服用止痛片间隔延长，平卧使腰痛加重。	12	2023-02-17 19:19:16	2023-02-23 02:39:23
82	2023-01-11	脉紧一息四至，舌质红薄苔。kemp+，体重258 Ib，	肾阳虚腰痛，减肥	气血三中渚后溪肾源三行间太冲束骨(B)。	\N	腰痛减轻，肩痛，食欲减退，从昨晚到现在未服止痛片，平卧使腰痛加重。	12	2023-02-17 19:19:58	2023-02-23 02:39:39
83	2023-01-13	脉紧一息四至，舌质红薄苔。现体重255 Ib	肾阳虚腰痛，减肥	气血三中渚后溪肾源三行间太冲(B)。	\N	腰痛，肩痛减轻，食欲减退，从昨晚到现在未服止痛片，平卧使腰痛加重。	12	2023-02-17 19:20:38	2023-02-23 02:39:49
84	2023-01-16	脉紧一息四至，舌质红薄苔。体重又下降1 Ib。	肾阳虚腰痛，减肥	气血三中渚后溪肾源三行间太冲(B)。	\N	现腰痛，早晨服止痛药，肩痛减轻，食欲减退，平卧及久坐腰痛加重。	12	2023-02-17 19:21:15	2023-02-23 02:39:59
85	2023-01-19	脉紧一息四至，舌质红薄苔。体重又下降1 Ib。	肾阳虚腰痛，减肥	气血三中渚后溪肾源三行间太冲(B)。 苓桂姜附阿胶汤合白虎加人参汤，茯苓3桂枝3干姜3附子3甘草2阿胶3+白虎加人参汤4。	\N	早晨服止痛药，食欲减退，平卧及久坐腰痛加重。	12	2023-02-17 19:21:51	2023-02-23 02:40:11
86	2023-01-24	脉紧一息四至，舌质红薄苔。体重又下降1 Ib。	肾阳虚腰痛，减肥	气血三中渚后溪肾源三行间太冲(B)夹脊穴环跳(R)。	\N	一天未服止痛药，现腰痛。食欲减退，平卧及久坐腰痛加重。	12	2023-02-17 19:22:23	2023-02-23 02:40:27
88	2023-01-27	脉紧一息四至，舌质红薄苔。	肾阳虚腰痛，减肥	气血三中渚后溪(B)夹脊穴环跳(R)。 芍药甘草汤合肾着汤，白芍5炙甘草2附子2茯苓3白术1.5干姜3百合2.5合欢皮2。	\N	顽固腰痛。食欲减退，平卧及久坐腰痛加重。	12	2023-02-17 19:24:15	2023-02-23 02:40:39
261	2023-01-16	脉一息四至，舌红白苔。	痺证	桂枝汤加味，桂枝3白芍3生姜3大枣2炙甘草2葛根4防风2伸筋草2。 气血三中渚后溪肾源三行间太冲(B)。	\N	颈痛，	41	2023-02-18 02:34:42	2023-02-23 04:10:01
96	2023-01-16	脉一息四至，舌淡胖白湿苔。	肾阳虚	气血三针内关公孙木针行间太冲，听宫(B)。	\N	面瘫，耳鸣好转，腰痛腿痛减轻，小便频数。	10	2023-02-17 22:22:10	2023-02-22 01:57:53
95	2023-01-13	脉一息四至，舌淡胖白湿苔。	肾阳虚	气血三针内关公孙木针行间太冲(B)。	\N	面瘫，耳鸣，腰痛腿痛减轻，小便频数。	10	2023-02-17 22:21:26	2023-02-22 01:58:03
98	2023-01-05	脉一息四至，舌淡胖白湿胎。	肾阳虚	五淋汤加味：茯苓6白芍4山栀子4当归2甘草2灯心草1荆芥1香附1麦芽1。 气血三针内关公孙肾源三行间太冲(B)。	\N	腰痛，小便频数，无烧烁感。	10	2023-02-17 22:26:41	2023-02-22 01:58:55
93	2023-01-02	脉浮软无力一息四至，舌淡胖白湿胎。	肾阳虚	苓桂姜附阿胶汤加味：茯苓3桂枝3干姜3附子3甘草2阿胶3川牛膝2三七2。 气血三针内关公孙肾源三行间太冲(B)。	\N	面瘫可见显著进步，现在腰痛，耳鸣。	10	2023-02-17 22:19:07	2023-02-22 01:59:09
109	2022-12-28	脉沉紧，一息四至。舌淡，薄苔，舌体胖。ROM受限。	肾虚腰痛	气血三中渚后溪肾源三行间太冲(B)。 苓桂姜附阿胶汤加味，茯苓3桂枝3干姜3附子3甘草2阿胶3伸筋草2当归2。	\N	从小轻度脊柱侧弯，约15岁开始腰痛，生活紧张及两次生孩子均加重腰痛。MRI可见腰椎间盘突出。长期疼痛使腰活动受限。	13	2023-02-17 22:37:17	2023-02-23 01:59:59
110	2022-12-30	脉沉紧，一息四至。舌淡，薄苔，舌体胖。	肾虚腰痛	气血三中渚后溪肾源三行间太冲(B)。	\N	腰痛减轻，活动增加，自述中药口感好，服药后腰痛显著减轻。	13	2023-02-17 22:38:11	2023-02-23 02:00:11
91	2023-01-26	脉滑，一息四至，舌淡红，白薄苔	少阳太阳病，诸风掉眩-皆属于肝	气血三中渚后溪内关公孙木针行间太冲(B)。 小柴胡汤，柴胡8黄芩3半夏2.5党参2生姜2大枣2炙甘草2	\N	头晕六周，右侧坐骨神经痛三月。无头痛，胸胁苦满，无恶心呕吐，寒热往来，饮食二便好，睡眠好手足不寒。右腰活动度尚好。	78	2023-02-17 22:16:34	2023-02-23 02:15:49
92	2023-01-28	脉弦快一息五至，舌红，无苔	少阳太阳病，诸风掉眩-皆属于肝	气血三中渚后溪木针行间太冲(B)。	\N	昨日无头晕，今晨有一过性轻头晕。大腿侧已不痛，前部仍痛。	78	2023-02-17 22:17:35	2023-02-23 02:16:00
105	2023-01-26	脉沉缓有力，一息四至，舌质暗红，薄苔。	太阴病，寒邪侵肌。	气血三中渚后溪肾源三行间太丑(B)。 桂枝汤，桂枝3白芍3生姜3大枣2炙甘草2防风2伸筋草2川牛膝2威灵仙2。	\N	右肩痛三月，右腿外侧痛六月。均由锻炼造成，右肩活动受限。右腿上下楼痛，“二郎腿”痛。	79	2023-02-17 22:34:01	2023-02-23 02:34:17
106	2023-01-28	脉平，一息四至，舌质暗红，薄苔。	太阴病，寒邪侵肌。	气血三中渚后溪肾源三行间太冲(B)。	\N	右肩及大腿均有显著进步，疼痛大减，早晨锻炼时感觉是过去几年最好的一次。	79	2023-02-17 22:34:39	2023-02-23 02:34:27
107	2023-01-30	脉平，一息四至，舌质暗红，薄苔。	太阴病，寒邪侵肌。	气血三中渚后溪肾源三行间太冲(B)。	\N	右肩及腿均进步明显	79	2023-02-17 22:35:09	2023-02-23 02:34:37
108	2023-02-01	脉平，一息四至，舌质暗红，薄苔。	太阴病，寒邪侵肌。	气血三中渚后溪肾源三行间太冲(B)。	\N	右肩已不痛，右腿仍在锻炼后痛	79	2023-02-17 22:35:31	2023-02-23 02:34:49
87	2023-01-31	脉一息四至，舌质红薄苔。	肾阳虚腰痛。服药反应，药弗瞑眩，厥疾弗廖。	气血三中渚后溪(B)夹脊穴环跳(R)。	\N	服药后头晕，皮肤发红、热，腰痛减轻，过去一天未服止痛药。体重250Ib。	12	2023-02-17 19:22:53	2023-02-23 02:40:50
89	2023-02-03	脉一息四至，舌质红薄苔。	肾阳虚腰痛。	气血三中渚后溪(B)夹脊穴环跳(R)。 芍药甘草汤合肾着汤，白芍5炙甘草2附子2茯苓3白术1.5干姜3百合2.5合欢皮2。	\N	腰痛减轻，过去一天未服止痛药。体重又下降1Ib。	12	2023-02-17 19:27:10	2023-02-23 02:41:15
90	2023-02-07	脉浮一息四至，舌质红薄苔。	肾阳虚腰痛。	气血三中渚后溪(B)夹脊穴环跳(R)。	\N	新疗法使腰痛显著减轻，体重降到147磅	12	2023-02-17 19:27:52	2023-02-23 02:41:24
99	2023-01-27	脉沉，但左关浮，舌质暗红，齿痕，薄苔	太阴病，脾胃虚寒，肌肉拉伤。	气血三中渚后溪肾源三行间太冲(B)。 旋复代赭汤合芍药甘草汤，旋复花3党参2生姜5代赭石1半夏3炙甘草2白芍5大枣2川牛膝1。	\N	左腿hamstring痛四天，左腿不能伸直，搬重物导致。胃反酸，进食后，偶有呕吐，大便前干后溏。	81	2023-02-17 22:30:01	2023-02-23 02:53:25
100	2023-01-30	脉沉，舌质暗红，齿痕，薄苔	太阴病，脾胃虚寒，坐骨神经痛	气血三中渚后溪肾源三行间太冲(B)环跳(L)。	\N	左腿有放电感至小腿，坐骨神经受压迫。	81	2023-02-17 22:30:44	2023-02-23 02:53:36
101	2023-02-01	脉沉，脉一息四至，舌质暗红，齿痕，薄苔	太阴病，脾胃虚寒，坐骨神经痛	气血三中渚后溪肾源三行间太冲(B)环跳(L)。	\N	坐骨神经痛下午疲劳时加重	81	2023-02-17 22:31:13	2023-02-23 02:53:45
103	2023-02-09	脉沉，脉一息四至，舌质暗红，齿痕，薄苔	太阴病，脾胃虚寒，坐骨神经痛	气血三中渚后溪肾源三行间太冲(B)环跳(L)。	\N	患者不能休息，还要为公司出差，延缓恢复时间	81	2023-02-17 22:32:14	2023-02-23 02:53:57
104	2023-02-11	脉沉，脉一息四至，舌质暗红，齿痕，薄苔	太阴病，脾胃虚寒，坐骨神经痛	气血三中渚后溪肾源三行间太冲(B)环跳(L)。	\N	左侧坐骨神经痛	81	2023-02-17 22:32:37	2023-02-23 02:54:03
102	2023-02-03	脉沉，脉一息四至，舌质暗红，齿痕，薄苔	太阴病，脾胃虚寒，坐骨神经痛	气血三中渚后溪肾源三行间太冲(B)环跳(L)。 芍药甘草汤加味，白芍7炙甘草2川牛膝2桂枝2三七1吴茉萸2生姜2党参2大枣2	\N	开始感觉腿痛减轻，最痛的时候过去了。	81	2023-02-17 22:31:43	2023-02-23 02:54:16
126	2023-01-25	脉沉紧一息四至，舌淡湿苔。	太阴病，脾阳虚	气血三内关公孙木针行间太冲(B)。	\N	治疗后右臂痛几乎消失，左肘网球肘好转，体力增加，睡眠质量好，二便调。	70	2023-02-17 22:51:07	2023-02-17 22:51:33
128	2023-02-02	脉浮，一息四至，舌稍胖淡红，薄湿苔。	太阴病，脾阳虚	气血三内关公孙木针行间太冲(B)。	\N	验血报告表明血小板从75到114，接近120的正常值。左肘几乎好转。饮食注意增加五谷，睡眠二便佳	70	2023-02-17 22:53:12	2023-02-17 22:53:12
130	2023-02-10	脉一息四至，舌稍胖红，薄湿苔。	太阴病，脾阳虚	气血三内关公孙木针行间太冲(B)。	\N	左肘不痛，睡眠质量好，无稀便	70	2023-02-17 22:54:25	2023-02-17 22:54:25
265	2023-01-23	脉一息四至，舌暗红薄苔。	痺证	气血三中渚后溪金针行间太冲(B)。	\N	尾骨痛，腰痛	41	2023-02-18 02:37:19	2023-02-18 02:37:19
127	2023-01-30	脉不沉，一息四至，舌淡湿苔。	太阴病，脾阳虚	气血三内关公孙木针行间太冲(B)。 附子理中汤合桂枝汤，白术3党参3干姜3炙甘草3桂枝3白芍3附子2大枣2。	\N	右臂不痛，左肘网球肘好转，体力增加，睡眠质量好，二便调。	70	2023-02-17 22:51:23	2023-02-22 02:47:53
129	2023-02-06	脉一息四至，舌稍胖红，薄湿苔。	太阴病，脾阳虚	气血三内关公孙火针行间太冲(B)。 附子理中汤合桂枝汤，白术3党参3干姜3炙甘草3桂枝3白芍3附子2大枣2。	\N	左肘几乎好转。饮食注意增加五谷，睡眠佳，大便稀。	70	2023-02-17 22:53:57	2023-02-22 02:48:07
131	2023-02-13	脉一息四至，舌稍胖红，薄湿苔。	太阴病，脾阳虚	气血三内关公孙木针行间太冲(B)。 附子理中汤合二陈汤，白术3党参3干姜3炙甘草3陈皮3半夏3茯苓3。	\N	自我感觉良好	70	2023-02-17 22:54:52	2023-02-22 02:48:18
120	2023-01-03	脉紧浮有力，一息四至，舌淡红薄苔。	腿痛	芍药甘草汤加味，白芍7炙甘草2川牛膝2伸筋草2三七2川芎2郁金2防风2。 气血三中渚后溪木针行间太冲(B)。	\N	零四年左腿受枪伤，去年8月（5个月前）踢球引起左腿痛，现局部皮肤发红感觉左腿肌肉痒，紧僵，活动受限，足底感觉受影响。	31	2023-02-17 22:46:37	2023-02-23 01:43:45
121	2023-01-06	脉一息四至，舌淡红薄苔。	腿痛	气血三中渚后溪木针行间太冲(B)。	\N	腿痛减轻，肌肉痒减轻，皮肤红斑缩小，足底感觉恢复。	31	2023-02-17 22:47:12	2023-02-23 01:44:00
122	2023-01-09	脉滑一息四至，舌淡红薄苔。	阳明中风。	桂枝汤：桂枝3白芍3生姜3大枣2炙甘草2牛膝2（1/2勺）。 气血三中渚后溪金针行间太冲(B)。	\N	腿痛减轻，肌肉痒，皮肤红斑缩小，足底感觉恢复。	31	2023-02-17 22:47:51	2023-02-23 01:44:15
271	2023-02-16	脉浮，一息四至，舌红，湿苔。	太阳病，湿瘟恢复	气血三中渚后溪肾源三行间太冲(B)。	\N	双足跟痛，颈痛，腰痛	41	2023-02-18 02:42:51	2023-02-18 02:42:51
123	2023-01-11	脉滑一息四至，舌淡红薄苔。	阳明中风。	桂枝汤：桂枝3白芍3生姜3大枣2炙甘草2牛膝2。 气血三中渚后溪金针行间太冲(B)。	\N	服桂枝汤后，腿痛，肌肉痒显著减轻，皮肤红斑色浅，缩小，足底感觉恢复。	31	2023-02-17 22:48:30	2023-02-23 01:44:40
124	2023-01-17	脉浮大一息四至，舌淡红薄苔。	阳明中风。	桂枝汤：桂枝3白芍3生姜3大枣2炙甘草2防风2薏仁2牛膝2黄柏2。 气血三中渚后溪木针行间太冲(B)。	\N	腿痛及痒继续减轻，皮肤红斑色浅，缩小，足底感觉恢复。桂枝汤有效。	31	2023-02-17 22:49:18	2023-02-23 01:44:57
112	2023-01-05	脉一息四至。舌淡红舌体胖。腰活动受限。	肾虚腰痛	苓桂姜附阿胶汤合白虎加人参汤：茯苓3桂枝3干姜3附子3甘草2阿胶3+白虎加人参汤4。气血三中渚后溪肾源三行间太冲(B)。	\N	腰痛减轻，偶发性腰痛,要求减肥。	13	2023-02-17 22:39:34	2023-02-23 02:00:35
113	2023-01-09	脉一四至。舌淡红舌体胖。仰俯腰痛	肾虚腰痛，脾虚。	气血三中渚后溪肾源三行间太冲 (B)。	\N	腰痛减轻，偶发性腰痛, 未量体重，减肥效果不明，但服药后食欲下降。	13	2023-02-17 22:40:21	2023-02-23 02:00:46
114	2023-01-12	脉一息四至。舌淡红舌体胖。	肾虚腰痛	气血三中渚后溪肾源三行间太冲 (B)。	\N	偶发性腰痛, 右侧甚，体重下降，食欲下降。	13	2023-02-17 22:40:34	2023-02-23 02:00:55
115	2023-01-19	脉一息四至。舌淡红舌体胖。	肾虚	气血三中渚后溪肾源三行间太冲 (B)。	\N	腰不痛, 体重不变，食欲下降。	13	2023-02-17 22:41:39	2023-02-23 02:01:03
116	2023-01-26	脉一息四至。舌淡红舌体胖。	太阴病，脾失健运\t	阿胶麻仁汤合白虎加人参汤+百合合欢皮，生地3当归3阿胶3麻仁3+百合2合欢皮2白虎加人参汤5。 气血三支沟照海金针行间太冲(B)。	\N	腰痛消失, 体重下降，食欲下降。	13	2023-02-17 22:42:23	2023-02-23 02:01:20
117	2023-02-02	脉沉一息四至。舌淡红，舌体胖。	太阴病，脾失运化失，理中汤合肉苁蓉汤	气血三支沟照海金针行间太冲(B)。 白术2党参2干姜2炙甘草3肉苁蓉3麻仁3半夏3桂枝3	\N	腰不痛, 体重162Ib，在166和160之间波动，隔天大便，手足寒。	13	2023-02-17 22:43:09	2023-02-23 02:01:37
118	2023-02-09	脉沉弦一息四至。舌淡红，舌体胖。	太阴病，脾失运化失，理中汤合肉苁蓉汤	气血三支沟照海金针行间太冲(B)。白术2党参2干姜2肉苁蓉3麻仁3茯苓3半夏3桂枝3	\N	体重163Ib，一周大便五次，手足寒。无腹胀满不适，食欲减退	13	2023-02-17 22:44:13	2023-02-23 02:02:23
119	2023-02-16	脉滑一息四至。舌淡红，舌体胖。	太阴病，脾失运化失，温胆理中汤	气血三内关公孙行间太冲(B)归脾丸 (L)金针(R)。 白术2党参2干姜2陈皮3半夏3茯苓3炙甘草2竹茹2枳实2。	\N	体重降－磅，大便每日一行，但觉排之不尽，便多粘液	13	2023-02-17 22:45:10	2023-02-23 02:02:38
132	2023-01-11	脉一息四至，舌淡红白薄苔。	心下痞	半夏泻心汤：半夏3黄芩3干姜3党参3黄连1大枣2炙甘草3。 气血三内关公孙归脾丸行间太冲(B)。	\N	昨日恶心呕吐，头痛乏力，大便规律，饮食好，睡眠好。	49	2023-02-17 22:56:02	2023-02-23 02:27:59
133	2023-01-13	脉滑一息四至，舌淡红白薄苔。无浮数之脉，舌不红，无伤寒证。	建议作妊辰实验。	气血三内关公孙归脾丸行间太冲(B)。可以考虑吴茱萸汤。	\N	仍恶心无呕吐，大便规律，饮食好，睡眠好。自四月前生孩子以来，尚无月经。	49	2023-02-17 22:57:56	2023-02-23 02:28:12
134	2023-01-19	脉滑一息四至，舌淡红	踝关节扭伤	气血三内中渚后溪肾源三行间太冲(B)。 黄芪3当归1.5山药1.5川木通1白芍7炙甘草2川牛膝2天花粉2漏芦1	\N	昨日摔跤，左踝受伤。	49	2023-02-17 22:58:47	2023-02-23 02:28:24
137	2023-01-04	脉紧一息四至，舌质暗。	冻肩，腕关节僵硬。	 指迷茯苓丸 8x2/7。 气血三中渚后溪肾源三行间太冲(B)。	\N	左肩活动度增加，痛减轻，左手活动度增加。	22	2023-02-17 23:01:21	2023-02-17 23:01:21
156	2022-12-29	脉一息四至，舌红薄苔。	风寒湿痺	 苓桂姜附阿胶汤加味：茯苓3桂枝3干姜3附子3甘草2阿胶3川牛膝2秦艽2。 气血三中渚后溪肾源三行间太冲(B)。	\N	腰疼持续减轻。	25	2023-02-17 23:16:40	2023-02-17 23:16:40
157	2023-01-02	脉一息四至，舌红薄苔。	风寒湿痺	 气血三中渚后溪肾源三行间太冲(B)	\N	腰痛持续减轻。	25	2023-02-17 23:17:14	2023-02-17 23:17:14
158	2023-01-05	舌淡苔白，脉滑一息四至。	风寒湿痺	考虑肾着汤合芍药甘草汤。 气血三中渚后溪肾源三行间太冲(B)。	\N	腰腿痛阴天加重。	25	2023-02-17 23:17:57	2023-02-17 23:17:57
141	2023-02-10	脉沉弦，一息四至，舌淡，白薄苔。	少阴病，肝家虚火旺，故上眼脸跳动。药后眩瞑	气血三内关公孙木针行间太冲(B)	\N	眼皮跳减缓，次数减少，感觉放松，胸胁苦满口苦咽干减轻，腰痛减轻，但服药后头晕恶心。	97	2023-02-17 23:04:43	2023-02-22 02:00:47
142	2023-02-16	脉沉，一息四至，舌淡，白薄苔。	少阴病	气血三内关公孙行间太冲(B)木针(L)金针(R)。肝升肺降	\N	右眼皮不跳，但仍然感觉紧张。	97	2023-02-17 23:05:22	2023-02-22 02:01:01
145	2023-01-14	脉一息四至，两关浮大硬，中空。舌质暗红薄苔。	肝经湿热，脾气虚	气血三内关公孙木针行间太冲(B)小同步。	\N	眼睛红肿热流泪减轻。对鸡蛋奶类食物过敏，吃鸡蛋后常有腹胀痛，大便次数减少。3、双手指间关节骨关节疼痛减轻，口干。	53	2023-02-17 23:08:49	2023-02-23 02:13:02
146	2023-01-16	脉一息四至。舌质暗红薄苔。	肝经湿热，脾气虚	气血三内关公孙木针行间太冲(B)小同步。	\N	眼睛红肿热流泪减轻。对鸡蛋奶类食物过敏，吃鸡蛋后常有腹胀痛，大便次数减少。3、双手指间关节骨关节疼痛减轻，口干减轻。	53	2023-02-17 23:09:25	2023-02-23 02:13:18
147	2023-01-18	脉浮一息四至，左关浮大。舌质暗红薄苔。	肝经湿热，脾气虚。应从脾论治。理中汤倍白术加天花粉	气血三内关公孙五虎一木针行间太冲(B)。 白术6干姜3炙甘草3党参3天花粉2酸枣仁2石斛2。	\N	眼干减轻。对鸡蛋奶类食物过敏，吃鸡蛋后常有腹胀痛，大便次数减少。3、双手痉挛，口干。	53	2023-02-17 23:10:07	2023-02-23 02:13:35
148	2023-01-20	脉浮一息四至。舌质暗红薄苔。	肝经湿热，脾气虚。	气血三内关公孙火针行间太冲(B)。	\N	眼干减轻，口干减轻，偶有腹胀痛，大便次数减少成型。	53	2023-02-17 23:11:01	2023-02-23 02:13:52
149	2023-01-24	脉浮一息四至。舌质暗红薄苔。	肝经湿热，脾气虚。	气血三内关公孙火针行间太冲(B)。	\N	眼干口干好转，不需使用眼药水，腹胀痛，大便次数仍多。钙代谢障碍，近期计划作甲状旁腺手术。	53	2023-02-17 23:11:35	2023-02-23 02:14:01
150	2023-01-27	脉浮一息四至。舌质暗红薄苔。	肝经湿热，脾气虚。	气血三内关公孙肾源三行间太冲(B)。 白术6干姜3炙甘草3党参3天花粉2酸枣仁2石斛2	\N	眼不干不痒，口不干，不需使用眼药水，腹不胀，大便五次，有形。	53	2023-02-17 23:12:07	2023-02-23 02:14:19
152	2023-02-03	脉浮一息四至。舌质暗红薄苔。	脾气虚。	气血三内关公孙金针行间太冲(B)。 白术6干姜3炙甘草3党参3天花粉2酸枣仁2石斛2	\N	口干，眼不干，腹不胀，大便日一行，成形而软。	53	2023-02-17 23:13:42	2023-02-22 02:44:15
151	2023-02-01	脉浮一息四至。舌质暗红薄苔。	肝经湿热，脾气虚。恢复中。\t	气血三内关公孙金针行间太冲(B)。	\N	眼和口均不干，腹不胀，大便日一行，成形而软。	53	2023-02-17 23:13:02	2023-02-22 02:42:41
153	2023-02-07	脉一息四至。舌质暗，薄苔。	脾气虚。	气血三内关公孙金针行间太冲(B)。	\N	口不干，眼不干，腹不胀，大便日一行，成形而软。试吃鸡蛋仍有腹胀	53	2023-02-17 23:14:19	2023-02-22 02:44:27
135	2023-01-23	脉滑一息四至，舌淡红		气血三内中渚后溪肾源三行间太冲(B)。	\N	左踝恢复，肩颈痛	49	2023-02-17 22:59:12	2023-02-23 02:28:37
154	2023-02-10	脉一息四至。舌质暗，薄苔。	脾气虚。	气血三内关公孙金针行间太冲(B)。	\N	诸证均已改善，建议每周试吃鸡蛋一次	53	2023-02-17 23:14:47	2023-02-22 02:44:45
155	2023-02-13	脉一息四至。舌质暗，薄苔。	脾气虚。	气血三内关公孙肾源三行间太冲(B)。 白术6干姜3炙甘草3党参3天花粉2酸枣仁2石斛2	\N	试吃鸡蛋后腹胀，但腹胀程度显著减轻	53	2023-02-17 23:15:18	2023-02-22 02:44:56
143	2023-01-19	俯身痛加剧，脉一息四至，伸舌偏右	肾虚腰痛，虚痨	苓桂姜附阿胶汤加味：茯苓3桂枝3干姜3附子3甘草2阿胶3当归2党参2。 气血三中渚后溪肾源三行间太冲(B)。	\N	腰痛一周	69	2023-02-17 23:06:45	2023-02-23 01:50:22
144	2023-01-12	脉一息四至，两关浮大硬，中空。舌质暗红苔薄。	肝经湿热，脾气虚	小柴胡汤加味：柴胡8黄芩3半夏2.5党参2生姜2大枣1炙甘草2川芎2山楂2砂仁2白术2茯苓2。 气血三内关公孙木针行间太冲(B)小同步。	\N	1、五年前，白内障手术后眼睛一直红肿热流泪。2、对鸡蛋奶类食物过敏，吃鸡蛋后常有腹胀痛，下利或便秘，现大便每日约三四次，软。3、双手指间关节骨关节炎，右侧为甚。	53	2023-02-17 23:08:09	2023-02-23 02:12:22
136	2023-01-31	脉沉软，一息四至，腹部软，脐周压痛，手足温，舌质暗红，少苔。	太阴病，桂枝加芍药汤	气血三内关公孙金针行间太冲(B)小同步。 桂枝3白芍6生姜3大枣2炙甘草2木香2党参2白术2。（吴茱萸）	\N	腹痛三日，昨日感觉发冷，大便成形，恶心，头痛，无食欲。	49	2023-02-17 22:59:53	2023-02-23 02:28:58
138	2023-02-06	脉浮数无力一息五至，舌红薄苔	风热感冒，阴阳易	气血三内关公孙金针行间太冲 (B)。 银翘散，连翘10银花10桔梗6薄荷6竹叶4甘草5荆芥4淡豆豉5牛蒡子6	\N	丈夫感冒。昨日起咽痛头痛鼻塞乏力，无咳嗽。	93	2023-02-17 23:02:22	2023-02-23 02:35:44
139	2023-02-10	脉一息四至，舌红薄苔	风热感冒，阴阳易	气血三内关公孙肾源三行间太冲(B)。	\N	感冒恢复	93	2023-02-17 23:02:56	2023-02-23 02:36:01
159	2022-12-29	脉沉一息四至，舌质暗，齿痕，白薄苔。	湿热内蕴。	 苓桂姜附阿胶汤加味：茯苓3桂枝3干姜3附子3甘草2阿胶3茵陈2苍术2。 气血三中渚后溪肾源三行间太冲(B)。	\N	腰痛月10天，西医检查发现前列腺略肿大。	21	2023-02-17 23:19:04	2023-02-17 23:19:04
160	2023-01-02	脉一息四至，尺浮，舌质暗有齿痕，白薄苔。		 气血三中渚后溪肾源三行间太冲(B)。	\N	腰痛减轻，右腕痛，左肩痛。	21	2023-02-17 23:19:52	2023-02-17 23:19:52
161	2023-01-04	脉一息四至，尺浮，舌质暗有齿痕，白薄苔。	肾阳虚	 气血三中渚后溪肾源三行间太冲(B)。	\N	腰痛显著减轻，右腕与左肩均已好转。前列腺症状好转，仍尿频。	21	2023-02-17 23:20:32	2023-02-17 23:20:32
162	2023-01-06	脉一息四至，舌淡红白苔。		 气血三中渚后溪肾源三行间太冲。	\N	左肩完全恢复，右腕好转，腰痛偶发。	21	2023-02-17 23:21:10	2023-02-17 23:21:10
163	2023-01-12	脉一息四至，舌淡红白苔。	肩痛腰痛	 苓桂姜附汤加味：茯苓3桂枝3干姜3附子3甘草2阿胶3伸筋草2威灵仙2。 气血三中渚后溪肾源三行间太冲(B)。	\N	左肩完全恢复，右腕好转，腰痛偶发。	21	2023-02-17 23:21:51	2023-02-17 23:21:51
164	2023-02-03	脉一息四至，舌淡红	太阳病，湿热在表	气血三内关公孙金针行间太冲(B)	\N	皮肤湿疹已大部分好转，鼻塞	87	2023-02-17 23:23:07	2023-02-17 23:23:07
174	2023-01-02	脉一息四至，舌质暗。	腰痛	 气血三中诸后溪肾源三行间太冲(B)。	\N	腰痛。	11	2023-02-17 23:42:40	2023-02-17 23:42:40
175	2023-01-04	脉一息四至，舌转红。	腰痛	 气血三中诸后溪肾源三行间太冲(B)。	\N	腰痛。	11	2023-02-17 23:43:00	2023-02-17 23:43:00
180	2023-01-06	脉一息四至。舌质紫红，白苔。	戒烟	 气血三甜味内关公孙木针行间太冲(B)。	\N	已戒烟90天，但昨天开始抽烟，要求戒烟。	26	2023-02-17 23:46:55	2023-02-17 23:46:55
181	2023-01-14	脉一息四至。舌质紫红，白苔。	戒烟	 气血三甜味内关公孙木针行间太冲(B)小同步。	\N	又开始抽烟，要求戒烟。	26	2023-02-17 23:47:21	2023-02-17 23:47:21
166	2023-01-20	脉一息四至，舌淡红薄苔。	感冒恢复	气血三中渚后溪木针行间太冲(B)。	\N	咽痛不痛，颈痛，头痛，失眠质量不好，二便调。昨夜太晚。	118	2023-02-17 23:34:58	2023-02-22 02:39:36
167	2023-01-23	脉一息四至，舌淡红薄苔。	感冒恢复	气血三中渚后溪木针行间太冲(B)。	\N	肩颈痛，失眠质量好，二便调。	118	2023-02-17 23:35:28	2023-02-22 02:39:41
168	2023-01-25	脉一息四至，舌淡红薄苔。	保健，考虑白虎加人参汤	气血三中渚后溪肾源三行间太冲(B)。	\N	肩颈痛，右侧甚，失眠质量好，二便调。每周锻炼六次，但腰围仍增加。	118	2023-02-17 23:36:07	2023-02-22 02:39:47
169	2023-02-15	脉浮数，一息五至，舌红薄苔。	太阳病，风热感冒，肝不升	气血三中渚后溪行间太冲(B)木针(L)金针(R)。 银翘散，金银花10连翘10竹叶4桔梗6薄荷6甘草5荆芥4淡豆豉5牛蒡子6。	\N	四天前感冒，现咽痛左侧甚，身痛，左侧鼻塞流清涕，乏力，出汗发冷	118	2023-02-17 23:36:55	2023-02-22 02:39:58
170	2023-02-17	脉浮，一息四至，舌红薄苔。	太阳病，风热感冒，肝不升	气血三中渚后溪金针行间太冲(B)。 甘草泻心汤：甘草4黄芩3党参3黄连1大枣3半夏3。	\N	感冒症状缓解，仍感乏力。口腔牙龈肿	118	2023-02-17 23:37:39	2023-02-22 02:40:10
171	2023-01-28	脉数，一息五至，舌淡少苔	太阳病，身痛，痔疮。	气血三中渚后溪金针行间太冲 (B)。 桂枝当归赤小豆汤合槐花散，桂枝2白芍2生姜2大枣1炙甘草1当归4赤小豆4槐花3荆芥1地榆1。	\N	右腰和肩痛一周，痔疮一周。同时发作，除嗜食辣味，无明显诱因。年少时作过腰椎手术，活动受限。	82	2023-02-17 23:38:54	2023-02-23 02:33:15
172	2023-01-30	脉浮数，一息五至，舌淡少苔	太阳病，痔疮。防止热入血室。	气血三中渚后溪木针行间太冲(B)下腹五(L)暖宫(R)。	\N	痔疮好转，便软。右肩腰痛减轻，睡眠质量好。	82	2023-02-17 23:39:58	2023-02-23 02:33:25
173	2023-02-03	脉一息四至，舌淡少苔，伸舌偏左	太阳病，痔疮。中风先兆	气血三中渚后溪木针行间太冲(B)。 归脾汤21，黄芪3党参2白术2当归2酸枣红2茯神2龙眼肉2炙甘草1远志0.5白芍1.5。	\N	痔疮好转，便软。右腰痛。	82	2023-02-17 23:40:44	2023-02-23 02:33:37
176	2023-01-02	脉一息四至。	肝风内动	苓桂术甘汤合归脾汤：茯苓4桂枝3白术3甘草2+归脾汤9。 气血三内关公孙木针行间太冲(B)。	\N	仍有轻度耳鸣，伸舌偏右，右手无名指版机指减轻	18	2023-02-17 23:43:58	2023-02-23 03:09:02
177	2023-01-04	脉一息四至左关浮大，舌质暗，舌几乎不偏。	肝风内动	苓桂术甘汤合归脾汤：茯苓4桂枝3白术3甘草2+归脾汤9。 气血三内关公孙木针行间太冲(B)。	\N	头已不晕，现在有migraine，颈僵。	18	2023-02-17 23:44:35	2023-02-23 03:09:09
178	2023-01-07	脉一息四至左关浮大，舌质暗。	肝风内动	气血三内关公孙木针行间太冲(B)。	\N	头晕颈僵，但已可以自己开车，右无名指板机指持续进步。	18	2023-02-17 23:45:04	2023-02-23 03:09:23
179	2023-02-15	脉浮无力，一息四至，舌淡舌尖偏右。	太阳病，头眩，身膶动，振振欲擗地	气血三内关公孙木针行间太冲(B)。 真武汤，白芍4.5生姜4.5茯苓4.5附子4.5白术3。	\N	仍然感觉头晕颈僵，右无名指板机指持续进步，手足寒。	18	2023-02-17 23:45:48	2023-02-23 03:09:34
183	2023-01-10	脉沉，一息四至，舌淡红薄苔。	太阴病，腹胀	厚姜半甘参汤：厚朴8生姜8半夏2党参1炙甘草2。 气血三内关公孙木针行间太冲(B)。	\N	深呼吸有哮呜音，腹胀，轻度反酸，小便频数，无痛，大便好。	47	2023-02-17 23:49:32	2023-02-23 03:34:38
184	2023-01-12	关脉沉数，一息四至，	太阴病，腹胀	气血三内关公孙木针行间太冲(B)小同步。	\N	深呼吸哮呜音减轻，腹胀反酸小便频数好转，大便好。	47	2023-02-17 23:50:07	2023-02-23 03:34:50
182	2023-01-14	脉一息四至，浮，四肢温，舌淡红。	痛经	2x桂枝3当归3白芍3赤芍3艾叶2细辛1炮姜1苏叶2苏梗2川木通1。 气血三中渚后溪木针行间太冲 (B)下腹五(L)暖宫 (R)。	\N	月经应该昨日来临，腰痛，昨日搬重物，中药调理效果好。	57	2023-02-17 23:48:27	2023-02-23 03:55:15
210	2023-01-17	左寸豆状脉，伸舌仍稍偏右，一息四至，舌质暗红。	虚劳	气血三中渚后溪火针行间太冲(B)。	\N	心悸气短偶有发作，心脏科医生检查未见明显异常。腰痛减轻，与活动减少有关。	30	2023-02-18 00:11:17	2023-02-18 00:11:17
199	2023-01-10	舌红少苔，脉一息四至，沉无力。	少阴病，肾虚腰痛	气血三中渚后溪肾源三行间太冲(B)。	\N	腰痛减轻。	16	2023-02-18 00:00:34	2023-02-22 02:11:27
200	2023-01-17	舌红白苔，脉软一息四至。	少阴病，肾虚腰痛	苓桂姜附阿胶汤加味，茯苓3桂枝3干姜3附子3甘草2阿胶3当归2党参2。 气血三中渚后溪肾源三行间太冲(B)。	\N	腰痛减轻。	16	2023-02-18 00:00:59	2023-02-22 02:11:37
201	2023-01-24	舌红白薄苔，脉沉细一息四至。	少阴病，肾虚	气血三中渚后溪肾源三行间太冲(B)。	\N	无腰痛，但动作迟缓，乏力。睡眠好，二便调，口渴	16	2023-02-18 00:01:40	2023-02-22 02:11:45
204	2023-02-14	脉沉一息四至，舌淡薄苔	少阴病，枢机不利	气血三内关公孙木针行间太冲(B)。 逍遥散加味，柴胡3白芍3白术3茯苓3当归3炙甘草1炮姜2薄荷1栀子1丹皮1。	\N	血压正常，感觉放松，心情愉悦，二便饮食睡眠无异常。	16	2023-02-18 00:03:23	2023-02-22 02:12:22
203	2023-02-07	舌红白薄苔，脉弦一息四至。	少阴病，枢机不利	气血三内关公孙肾源三行间太冲(B)。	\N	忧伤引起血压升高，无其他不良症状，现血压170/105。	16	2023-02-18 00:02:54	2023-02-22 02:11:59
202	2023-01-31	舌红白薄苔，脉弦一息四至。	少阴病，枢机不利	气血三内关公孙肾源三行间太冲(B)。 逍遥散加味，柴胡3白芍3白术3茯苓3当归3炙甘草1炮姜2薄荷1栀子1丹皮1。	\N	痛失爱犬，引起血压升高，无其他不良症状。	16	2023-02-18 00:02:27	2023-02-22 02:12:07
197	2023-02-03	脉浮一息四至，关弦。舌淡白苔	厥阴病，肝血虚	气血三内关公孙木针行间太冲(B)小同步。 养筋汤加味，白芍3熟地3麦冬3酸枣仁1巴戟天1川芎2当归2木香2阿胶2党参2	\N	远视弱，近视好。	91	2023-02-17 23:59:00	2023-02-23 02:27:20
194	2023-01-31	脉弦浮，一息四至，舌淡薄苔，胸部腋下未触及包块。	少阳病，大柴胡汤证	气血三内关公孙木针行间太冲(B)。 大柴胡汤，柴胡8黄芩3半夏3生姜2白芍3枳实2大枣1	\N	胸胁苦满，口苦咽干，默默不思饮食，大便排不净一周，之前有严重的事情发生。无头疼恶心	84	2023-02-17 23:56:23	2023-02-23 03:07:55
195	2023-02-03	脉一息四至，舌淡薄苔。	少阳病，大柴胡汤证	气血三内关公孙木针行间太冲(B)。 大柴胡汤，柴胡8黄芩3半夏3生姜2白芍3枳实2大枣1	\N	症状好转，左肩颈痛	84	2023-02-17 23:56:59	2023-02-23 03:08:06
196	2023-02-15	脉一息四至，舌淡薄苔。	太阳病，表实里虚	气血三内关公孙行间太冲(B)木针(L)金针(R)。 阿胶麻仁汤，生地5当归5阿胶5麻仁5，加－勺蜂蜜。	\N	便秘造成胸胁苦满，无食欲，上周未解大手，直到周六解大手十次，右腹胀，肺降不能	84	2023-02-17 23:57:40	2023-02-23 03:08:19
185	2023-01-16	脉沉一息四至，	太阴病，腹胀	厚姜半甘参汤：厚朴8生姜8半夏2党参1炙甘草2。 气血三内关公孙火针行间太冲(B)小同步。	\N	深呼吸哮呜音减轻，腹胀反酸小便频数好转，大便好。	47	2023-02-17 23:50:41	2023-02-23 03:35:02
186	2023-01-18	脉沉一息四至，	太阴病，腹胀	气血三内关公孙木针行间太冲 (B)。 理中汤：党参2白术2干姜2炙甘草2。	\N	深呼吸哮呜音减轻，腹胀影响膀胱造成小便频数减轻。	47	2023-02-17 23:51:09	2023-02-23 03:35:11
187	2023-01-24	脉沉一息四至，	太阴病，腹胀	气血三内关公孙木针行间太冲大敦(B)。 桂枝加芍药汤，桂枝3白芍6生姜3大枣2炙甘草2厚朴3半夏2。	\N	哮呜音消失，腹胀略减轻，小便频数减轻。	47	2023-02-17 23:51:43	2023-02-23 03:35:21
188	2023-01-27	脉一息四至，舌淡红 薄苔	太阴病，腹胀	气血三内关公孙木针行间太冲(B)。	\N	腹胀减轻，小便仍频数，医生认为她有膀胱结石。	47	2023-02-17 23:52:19	2023-02-23 03:35:31
189	2023-01-30	脉一息四至，舌淡红 薄苔	太阴病，腹胀	气血三内关公孙火针行间太冲(B)。 越鞠宝和丸：苍术2抚芎2神曲2香附2栀子1陈皮2半夏2茯苓2 连翘1莱菔子1枳实2白术6黄连2山楂4木香1当归2。	\N	腹胀减轻，膀胱仍有刺激。未付钱。	47	2023-02-17 23:52:48	2023-02-23 03:35:42
190	2023-02-02	脉一息四至，舌淡红薄苔	太阴病，腹胀	气血三内关公孙木针行间太冲(B)。 越鞠宝和丸：苍术2抚芎2神曲2香附2栀子1陈皮2半夏2茯苓2 连翘1莱菔子1枳实2白术6黄连2山楂4木香1当归2。	\N	腹胀减轻，呼吸好转，膀胱刺激减轻。	47	2023-02-17 23:53:32	2023-02-23 03:35:52
191	2023-02-09	脉一息四至，舌淡红薄苔	太阴病，腹胀	气血三内关公孙木针行间太冲 (B)。	\N	无腹胀，无呼吸困难，膀胱仍有刺激。	47	2023-02-17 23:54:01	2023-02-23 03:36:14
193	2023-02-17	脉一息四至，舌淡红薄苔	太阴病	气血三内关公孙木针行间太冲(B)。 越鞠宝和丸：苍术2抚芎2神曲2香附2栀子1陈皮2半夏2茯苓2 连翘1莱菔子1枳实2白术6黄连2山楂4木香1当归2。	\N	精神紧张造成呼吸急促，有呼吸音，腹部无不适	47	2023-02-17 23:55:10	2023-02-23 03:36:40
205	2023-01-02	一息四至，伸舌偏右。	虚劳	炙甘草汤：炙甘草4生姜3党参2生地6桂枝3阿胶2麦冬3麻仁3大枣3(3/4勺)。 气血三内关公孙金火行间太冲(B)。	\N	连续滑雪三天，体力尚好，睡眠质量好，心悸脉结。	30	2023-02-18 00:06:36	2023-02-23 04:06:20
206	2023-01-04	脉结一息四至，左寸豆状脉，伸舌偏右	虚劳	气血三内关公孙金火行间太冲(B)。	\N	心悸，头痛。	30	2023-02-18 00:07:18	2023-02-23 04:06:33
207	2023-01-06	左寸豆状脉，伸舌偏右，一息四至。	虚劳	气血三内关公孙木针针行间太冲(B)	\N	心悸气短，见心脏科医生，检查未见明显异常，只有胆固醇高，窦性心动过缓。	30	2023-02-18 00:07:50	2023-02-23 04:06:47
208	2023-01-10	左寸豆状脉，伸舌偏右，一息四至，舌质暗红。	虚劳	气血三内关公孙木针针行间太冲(B)	\N	心悸气短偶有发作，心脏科医生检查未见明显异常。	30	2023-02-18 00:08:29	2023-02-23 04:06:55
209	2023-01-13	左寸豆状脉消失，伸舌仍偏右，一息四至，舌质暗红。	虚劳	气血三中渚后溪肾源三行间太冲(B)。	\N	心悸气短偶有发作，心脏科医生检查未见明显异常。腰痛	30	2023-02-18 00:09:32	2023-02-23 04:08:18
212	2023-01-27	脉一息四至，豆状脉已不见。伸舌仍稍偏右，舌质暗红。	虚劳	气血三中渚后溪肾源三行间太冲(B)。	\N	心悸发作次数减少。腰痛减轻，与活动减少有关。	30	2023-02-18 00:12:19	2023-02-18 00:12:19
214	2023-02-10	脉一息四至，舌质暗红。	外伤腰腿痛	气血三中渚后溪肾源三行间太冲(B)。	\N	右髂上有一痛点，应该是右腿痛原发点，右髋关节活动受限	30	2023-02-18 00:13:34	2023-02-18 00:13:34
216	2023-01-03	脉一息四至，舌淡白湿胎。	肝风内动	气血三内关公孙木针行间太冲(B)小同步	\N	左耳多年来第一次听见人说话的声音，过去两周无眩晕。	15	2023-02-18 01:54:47	2023-02-23 02:05:44
217	2023-01-06	脉弦一息四至，舌红。	肝风内动	苓桂术甘汤，茯苓8桂枝6白术6炙甘草4。 气血三内关公孙木针行间太冲(B)小同步。	\N	可以听见更多声音，耳鸣更强。	15	2023-02-18 01:55:24	2023-02-23 02:05:55
218	2023-01-09	脉弦一息四至，舌红。不能摇头。	肝风内动	气血三内关公孙木针行间太冲(B)小同步	\N	昨日一过性头晕，发生于运动之后，伴有呕吐，耳鸣。脉弦一息四至，舌红。	15	2023-02-18 01:56:09	2023-02-23 02:06:07
219	2023-01-14	脉一息四至，右关浮大，舌红。	肝风内动	苓桂术甘汤合越橘丸，茯苓4桂枝3白术3炙甘草2香附2川芎2神曲2栀子2苍术2。气血三内关公孙木针足三里行间太冲(B)小同步	\N	仍头晕，耳鸣。脉一息四至，右关浮大，舌红。	15	2023-02-18 01:56:40	2023-02-23 02:06:23
220	2023-01-16	脉一息四至，右关浮大，舌红。	肝风内动	气血三内关公孙木针足三里行间太冲(B)小同步听宫(L)。	\N	仍头晕，耳鸣。昨日打球拉伤右侧hamstring。	15	2023-02-18 01:57:11	2023-02-23 02:06:37
363	2023-02-10	脉一息四至，舌淡红薄苔。	太阳病，劳损至肌腠寒湿	气血三中渚后溪针行间太冲(B)。	\N	颈痛减轻	94	2023-02-18 14:45:47	2023-02-23 02:45:04
223	2023-02-06	脉沉细，一息四至，舌红瘦，白薄苔。	少阴病，头眩身瞤动。振振欲擗地者。属真武汤	气血三中渚后溪肾源三行间太冲(B)。 真武汤，茯苓4.5白芍4.5生姜4.5白术3附子4.5。	\N	本来30天的药他服了一年直到去年八月发现肾衰。现双足水肿，腰膝踝肘痛，头晕恶心易摔跤乏力无汗心悸。二便调，食欲好。	92	2023-02-18 02:00:31	2023-02-23 03:21:43
224	2023-02-08	脉一息四至，舌红薄苔。	少阴病	气血三中渚后溪肾源三行间太冲(B)。	\N	肘腰膝痛减轻，下肢水肿消退一半，踝关节仍紧。	92	2023-02-18 02:01:13	2023-02-23 03:21:53
225	2023-02-11	脉中取有力，一息四至，舌红薄苔。	少阴病，效不更方	气血三中渚后溪肾源三行间太冲(B)。 真武汤，茯苓4.5白芍4.5生姜4.5白术3附子4.5。	\N	肘腰膝已经不痛，下肢水肿未完全消退。	92	2023-02-18 02:02:03	2023-02-23 03:22:04
226	2023-02-13	脉中取有力，一息四至，舌红薄苔。	少阴病，效不更方	气血三中渚后溪肾源三行间太冲(B)。	\N	肘腰膝关节不痛，下肢水肿继续消退。开始感觉口渴欲饮	92	2023-02-18 02:02:31	2023-02-23 03:22:16
221	2023-02-15	脉沉一息四至，舌淡，舌尖偏右	虚劳	气血三中渚后溪木针膝五针行间太冲(B)小同步。 养筋汤合理中汤，白芍3麦冬3熟地3酸枣仁1巴戟天1炙甘草2白术2党参2干姜2茯苓2。	\N	右膝运动后水肿，眼睫出现麦粒肿，左肩痛	106	2023-02-18 01:58:30	2023-02-23 03:54:16
228	2023-01-05	脉一息四至，两关浮弦，舌淡红，白薄苔	少阳病，少阳阳明证，便秘	大柴胡汤，柴胡8黄芩3半夏2.5生姜2白芍2枳实2大黄1厚朴2。 气血三支沟照海后溪木针行间太冲(B)。	\N	腹胀便秘，便硬，下腹痛，头痛，寒热往来。	54	2023-02-18 02:04:24	2023-02-23 03:58:34
229	2023-01-13	脉浮一息四至，舌淡红。	少阳病，腹胀便秘	厚朴七物汤：厚朴8甘草3大枣2枳实5桂枝2大黄3生姜5。 气血三中渚后溪天枢金针行间太冲(B)。	\N	腹胀，大便秘结，腰痛。	54	2023-02-18 02:05:07	2023-02-23 03:58:46
230	2023-01-18	脉浮一息四至，舌淡红。	少阳病，腹胀便秘	气血三支沟照海天枢金针行间太冲(B)。	\N	腹胀，大便秘结。	54	2023-02-18 02:05:41	2023-02-23 03:59:07
231	2023-01-19			厚朴七物汤：厚朴8甘草3大枣2枳实5桂枝2大黄3生姜5。	\N	取药	54	2023-02-18 02:06:16	2023-02-23 03:59:17
232	2023-01-24	脉沉缓，一息四至，舌淡白苔	太阴病。本太阳病，医反下之，因而腹满时痛者，桂枝加芍药汤主之。	桂枝加芍药汤合厚朴三物汤：桂枝3白芍6生姜3大枣2炙甘草2厚朴3枳实2。 气血三列却照海天枢木针行间太冲(B)中渚后溪(B)。	\N	腹胀便秘改善，昨日饮食不节，晚餐过饱，今日腹胀腹痛。咽痛，左踝关节扭伤。	54	2023-02-18 02:06:53	2023-02-23 03:59:32
233	2023-02-02	脉一息四至，舌淡白苔	太阴病。脾虚腹胀，厚姜半甘参汤加味。	厚朴8生姜8半夏6甘草2党参1茯苓2白术2木香2砂仁2麦芽2山楂2神曲2。 气血三内关公孙木针行间太冲(B)。	\N	便秘改善，今日腹胀腹痛。	54	2023-02-18 02:07:38	2023-02-23 03:59:47
234	2023-02-07	脉弦一息四至，舌淡白苔	太阴病。脾虚腹胀，越鞠保和丸。	气血三中渚后溪木针行间太冲(B)。 苍术2川芎2神曲2香附2栀子2陈皮1半夏2茯苓2连翘1莱菔子1枳实2白术6黄连2山楂4木香1当归2 (3/4勺)	\N	周末饮酒，今日腹痛胀气，便秘好转	54	2023-02-18 02:08:31	2023-02-23 04:00:02
213	2023-02-03	脉一息四至，舌质暗红。	虚劳，腰痛	气血三中渚后溪肾源三行间太冲(B)。 养筋汤合肾着汤，白芍3熟地3麦冬3酸枣仁1巴戟天1茯苓2干姜2白术1川牛膝2补骨脂2伸筋草2	\N	伸舌仍偏，右腰腿痛。	30	2023-02-18 00:13:00	2023-02-23 04:07:22
215	2023-02-16	脉一息四至，舌质暗红。舌尖偏左	少阴病，肾着汤证，肺降于右	气血三中渚后溪肾源三行间太冲(B)。 肾着汤：茯苓6干姜6白术3甘草3川牛膝2三七1。	\N	右髋右腰及右腹股沟痛，	30	2023-02-18 00:14:14	2023-02-23 04:07:36
239	2022-12-01	舌淡红，薄苔，脉一息四至，尺沉。	脊柱侧弯	 转骨胶囊 气血三中渚后溪（R）肾源三行间太冲(B)	\N	孩子长个子过快，一年长了一尺，后发现脊柱侧弯向左侧。	116	2023-02-18 02:12:46	2023-02-18 02:12:46
240	2022-12-08	脉浮，一息四至，舌淡红薄苔	脊柱侧弯	 壮骨胶囊 气血三中渚后溪肾源三行间太冲(B)	\N	脊柱活动好，一侧肌肉紧张。	116	2023-02-18 02:13:23	2023-02-18 02:13:23
241	2022-12-14	舌淡红，脉一息四至	脊柱侧弯	 壮骨胶囊 气血三中渚后溪肾源三行间太冲(B)	\N	医生检查脊柱侧弯未见改变。舌淡红，脉一息四至	116	2023-02-18 02:14:02	2023-02-18 02:14:02
242	2022-12-22	舌淡红薄苔，脉一息四至。	脊柱侧弯	 壮骨胶囊 气血三中渚后溪肾源三行间太冲(B)	\N	背痛减轻，活动度增加。	116	2023-02-18 02:14:33	2023-02-18 02:14:33
243	2023-01-05	舌淡红薄苔，脉一息四至。	脊柱侧弯	 壮骨胶囊 气血三中渚后溪肾源三行间太冲(B)	\N	佩戴矫形器可减轻脊柱侧弯。	116	2023-02-18 02:15:08	2023-02-18 02:15:08
247	2023-02-11	脉沉滑，一息四至，舌胖白湿苔，舌裂纹多	太阴病，寒湿困脾。	气血三内关公孙木针行间太冲(B)。	\N	小便好，睡眠质量好	34	2023-02-18 02:18:25	2023-02-23 03:53:28
245	2023-01-14	脉沉滑，一息四至，舌胖白湿苔。	寒湿困脾	五淋汤合理中汤：茯苓3白芍2栀子2当归1.5炙甘草3灯心草1党参3白术3干姜3。 气血三内关公孙木针行间太冲(B)。	\N	体胖，睡眠好，但需要起来小便，小便流量稍慢。	34	2023-02-18 02:17:03	2023-02-23 03:53:16
236	2023-01-24	脉沉紧，一息四至，舌淡红，白湿苔。	风寒内侵，肌肉受寒。	气血三中渚后溪肾源三行间太冲(B)。 桂枝汤加味：桂枝3白芍3生姜3大枣2炙甘草2防风2伸筋草2羌活2姜黄2。	\N	一月六日被按摩后，右肩持续性疼痛。	72	2023-02-18 02:10:31	2023-02-23 02:09:10
238	2023-01-28	脉沉紧，一息四至，舌淡红，白湿苔。	风寒内侵，肌肉受寒。	气血三中渚后溪肾源三行间太冲(B)。	\N	右肩仍痛，腰痛好转。	72	2023-02-18 02:11:25	2023-02-23 02:09:45
253	2023-01-10	脉一息四至，舌淡舌尖红舌苔减少。治疗效果显现。	痰热扰心	三子养亲汤合二陈汤：莱菔子2白芥子2紫苏子2半夏2陈皮3茯苓4炙甘草2生姜3。 气血三内关公孙木针行间太冲(B)小同步。	\N	乏力减轻，思维加速，睡眠质量好转。	42	2023-02-18 02:26:16	2023-02-23 02:31:48
237	2023-01-26	脉沉紧，一息四至，舌淡红，白湿苔。	风寒内侵，肌肉受寒。	气血三中渚后溪肾源三行间太冲(B)。	\N	治疗后，右肩痛无明显好转，腰痛。	72	2023-02-18 02:11:00	2023-02-23 02:09:38
254	2023-01-17	脉一息四至，舌红白苔。治疗效果显现。	痰热扰心	气血三内关公孙木针行间太冲(B)。	\N	郁闷减轻，乏力减轻，睡眠质量好转。	42	2023-02-18 02:26:51	2023-02-23 02:31:58
255	2023-01-24	脉浮滑，一息四至，舌红薄湿苔。	痰热扰心	气血三内关公孙木针行间太冲(B)。 三子养亲汤合二陈汤加黄连：莱菔子2白芥子2紫苏子2半夏2陈皮3茯苓4炙甘草2生姜3黄连1。	\N	郁闷减轻，乏力减轻，记忆力好转，头脑清醒，睡眠质量好转。	42	2023-02-18 02:27:24	2023-02-23 02:32:12
256	2023-02-07	脉浮滑，一息四至，舌红薄湿苔。	痰热扰心，肝气都结	气血三内关公孙木针行间太冲(B)。 苍术2川芎2神曲2香附2栀子2陈皮1半夏2茯苓2连翘1莱菔子1枳实2白术6黄连2山楂4木香1当归2 (3/4勺)	\N	胸胁苦满，口苦咽干，睡眠好饮食规律二便调	42	2023-02-18 02:28:07	2023-02-23 02:32:26
249	2023-02-01	脉沉滑，一息四至，舌胖大红，薄苔。	少阳阳明病，大柴胡汤证，热入血室	气血三中渚后溪肾源三行间太冲(B)下腹五(L)暖宫(R)。	\N	腹胀减轻，大便便秘好转，痔疮仍在。多年月经痛，今天是月经第三天，头痛下腹绞痛。长期弯腰工作，造成颈痛	71	2023-02-18 02:20:26	2023-02-23 03:33:29
248	2023-01-23	脉浮弦滑数，一息五至，舌红，薄苔湿。	少阳阳明病，大柴胡汤证。	气血三支沟照海木针行间太冲(B)。 大柴胡汤，柴胡8黄芩3半夏2.5生姜2白芍3枳实2大黄1。	\N	20年曾被诊为Colitis，已好转，4月前开始便秘，一度造成痔疮，伴有腹胀腹痛，纳差小便频数，头痛，口苦咽干，胸胁苦满，睡眠好，精神紧张。	71	2023-02-18 02:19:39	2023-02-23 03:33:15
250	2023-02-08	脉长浮，一息四至，舌胖大红，薄苔。	少阳阳明病，大柴胡汤证	气血三内关公孙木针行间太冲(B)。 大柴胡汤，柴胡8黄芩3半夏2.5生姜2白芍3枳实2大黄1。	\N	腹胀减轻，便秘好转，颈痛好转。	71	2023-02-18 02:21:13	2023-02-23 03:33:39
251	2023-02-17	脉一息四至，寸关浮，尺沉无力，舌胖大红，薄苔。	少阳阳明病，上热下寒	气血三内关公孙行间太冲(B)木针(L)金针(R)。 厚姜半甘参汤合增液汤：厚朴4生姜4半夏3党参1炙甘草1当归2玄参2麦冬2生地2	\N	颈不痛，腹胀，每天排便但排不尽，四天前尿路感染，服抗生素。	71	2023-02-18 02:22:22	2023-02-23 03:33:54
235	2023-02-14	脉紧滑一息四至，舌淡白苔	太阴病。脾虚腹胀，寒湿	气血三中渚后溪归脾丸行间太冲(B)。 肾着汤合厚朴三物汤：茯苓4干姜4白术2甘草2厚朴4大黄2枳实3。	\N	腹胀便秘，自服便秘药，稀便出，但仍腹胀腰痛重如带重物	54	2023-02-18 02:09:15	2023-02-23 04:00:12
246	2023-02-04	脉沉滑，一息四至，舌胖白湿苔，舌裂纹多	寒湿困脾	气血三内关公孙排寒五针足三里肾源三行间太冲(B)。	\N	减肥10磅，睡眠好，小便流量增加。	34	2023-02-18 02:17:42	2023-02-23 03:52:41
259	2023-01-09	脉一息四至，舌质暗红，淡胖白薄苔。	痺证	气血三中渚后溪肾源三行间太冲(B)。	\N	颈不痛，腰痛，右足跟痛。	41	2023-02-18 02:31:31	2023-02-23 04:10:11
258	2023-01-05	脉一息四至，舌质暗红，淡胖白薄苔。	痺证	肾着汤合芍药甘草汤，茯苓4干姜4白术2白芍7炙甘草2附子2。 气血三中渚后溪肾源三行间太冲(B)。	\N	颈痛，左足痛	41	2023-02-18 02:30:54	2023-02-23 04:10:22
257	2023-01-02	脉一息四至，舌淡胖	痺证	气血三中渚后溪肾源三行间太冲(B)。	\N	颈痛，左足痛	41	2023-02-18 02:30:26	2023-02-23 04:10:34
266	2023-01-30	脉滑，一息四至，舌暗红，白湿苔。	少阴病，风寒湿痺，身体痛。	气血三中渚后溪肾源三行间太冲 (B)。	\N	颈痛随气候变化，寒湿天加重。	41	2023-02-18 02:39:41	2023-02-18 02:39:41
268	2023-02-07	脉浮滑数一息五至，舌红，湿苔。	太阳湿瘟	气血三中渚后溪肾源三行间太冲(B)。	\N	昨日头痛颈痛身痛恶心，	41	2023-02-18 02:41:08	2023-02-18 02:41:08
270	2023-02-13	脉浮，一息四至，舌红，湿苔。	太阳病，湿瘟恢复	气血三中渚后溪肾源三行间太冲(B)。	\N	颈痛	41	2023-02-18 02:42:27	2023-02-18 02:42:27
274	2023-01-18	舌红湿苔，脉浮滑数。口渴，大便调，小便黄数。	少阴病，风湿热，	气血三中渚后溪肾源三行间太冲(B)。	\N	左肘腕关节ROM增加，疼痛减轻。	61	2023-02-18 02:46:28	2023-02-23 01:55:59
275	2023-01-24	舌红湿苔，脉浮滑，一息四至。口渴，大便次数增多，稀，小便数。	少阴病，风湿热，下次考虑附子汤。	气血三中渚后溪肾源三行间太冲(B)。 桂枝汤加味，桂枝3白芍3生姜3大枣2炙甘草2防风2伸筋草2补骨脂2白术2。	\N	左肘腕关节水肿消退，ROM增加，疼痛减轻。阴天下雨关节痛减轻。	61	2023-02-18 02:47:13	2023-02-23 01:56:10
312	2023-01-10	脉一息四至，左关浮弦，舌淡红，白薄苔。	风寒湿痺	气血三中渚后溪肾源三行间太冲(B)。	\N	右肩痛，左肘痛，鼻塞，咽痒。	14	2023-02-18 03:19:33	2023-02-23 02:11:18
272	2023-02-14	脉浮滑一息四至，舌淡白苔	太阳病，寒湿侵肌	气血三中渚后溪肾源三行间太冲(B)。 肾着汤，茯苓6干姜6白术3甘草3川牛膝3。	\N	颈痛，每次紧张都会引起。右腰外侧痛，长期锻练，出汗着风	117	2023-02-18 02:44:29	2023-02-23 03:01:31
277	2023-02-15	脉浮，－息四至，舌淡	更年期	气血三内关公孙木针行间太冲(B)。	\N	治疗后第二天月经停止	98	2023-02-18 02:49:04	2023-02-23 03:07:09
276	2023-02-08	右脉浮弦，－息四至，舌淡	更年期	温经汤，吴茱萸6当归2川芎2白芍2党参2桂枝2阿胶2生姜2丹皮2炙甘草2半夏3麦冬4(3/4勺) 气血三内关公孙木针行间太冲(B)下腹五(L)暖宫(R)。	\N	食后腹胀反酸，月经一周不停	98	2023-02-18 02:48:17	2023-02-23 03:07:21
278	2023-01-02	脉一息四至，舌淡红，白薄苔。	心肾气虚	炙甘草汤，炙甘草4生姜3党参2生地16桂枝3阿胶2麦冬3麻仁3大枣2（1/2勺）。 气血三内关公孙木针行间太冲(B)。	\N	无心悸，睡眠好，小便流量好，无排尿困难，无乏力。脉一息四至，舌淡红，白薄苔。	32	2023-02-18 02:50:24	2023-02-23 03:17:53
279	2023-01-05	脉一息四至，舌淡红薄苔。	肾气虚	气血三内关公孙木针行间太冲 (B)。	\N	感觉好，体力恢复，睡眠好，小便流量好。	32	2023-02-18 02:51:08	2023-02-23 03:18:05
280	2023-01-07	脉一息四至，舌淡红，白薄苔。	肾气虚	气血三内关公孙木针行间太冲排寒五针足三里(B)。	\N	昨夜无心悸，睡眠好，小便流量不好，排尿困难，无乏力。之前心悸与热瑜伽大量出汗有关。	32	2023-02-18 02:51:46	2023-02-23 03:18:19
281	2023-01-10	脉一息四至，舌淡红，白薄苔。	肾气虚	气血三内关公孙木针行间太冲排寒五针足三里(B)。	\N	无心悸，睡眠好，小便流量不好，排尿困难，无乏力。	32	2023-02-18 02:52:08	2023-02-23 03:18:29
282	2023-01-16	脉一息四至，尺浮，舌淡红，白薄苔。	肾气虚	气血三内关公孙木针行间太冲排寒五针足三里(B)。	\N	无心悸，睡眠好，4点醒能再入睡，小便流量尚可，无排尿困难，无乏力。	32	2023-02-18 02:52:40	2023-02-23 03:18:39
283	2023-01-19	脉一息四至，尺浮，舌淡红，白薄苔。	肾气虚	气血三内关公孙木针行间太冲排寒五针足三里 (B)。 加味逍遥散，柴胡2白芍2白术2当归2茯苓2炙甘草1薄荷2炮姜2丹皮2栀子2党参2。	\N	无心悸，睡眠好，无排尿困难，无乏力。焦虑。	32	2023-02-18 02:53:10	2023-02-23 03:18:53
284	2023-01-24	脉一息四至，尺浮，舌质暗红，有齿痕，白薄苔。	太阴病，腹满时痛者，桂枝加芍药汤主之。	气血三内关公孙木针行间太冲排寒五针足三里(B)。 桂枝加芍药汤，桂枝3芍药6生姜3大枣2炙甘草2栝楼2薤白2半夏2。	\N	进食过晚，过饱，过多米饭类晚餐易引起心悸失眠。	32	2023-02-18 02:53:58	2023-02-23 03:19:05
285	2023-01-27	脉一息四至，尺浮，舌质暗红，有齿痕，白薄苔。	少阴病，少阴枢机不畅，加味逍遥散。	气血三内关公孙木针行间太冲(B)。	\N	半夜偶有呼吸窘迫，并不是呼吸道阻塞，应该是里热造成Anxiety。	32	2023-02-18 02:54:38	2023-02-23 03:19:15
286	2023-01-30	脉一息四至，舌质暗红，有齿痕，白薄苔。	太阴病，腹满时痛者，桂枝加芍药汤主之。	气血三内关公孙木针行间太冲(B)。 桂枝加芍药汤，桂枝3芍药6生姜3大枣2炙甘草2栝楼2薤白2半夏2。	\N	停止进食鸡肉后睡眠质量提高	32	2023-02-18 02:55:30	2023-02-23 03:19:26
287	2023-02-03	脉一息四至，舌质暗红，有齿痕，白薄苔。	太阴病，腹满时痛者，桂枝加芍药汤主之。	气血三内关公孙木针行间太冲(B)。 桂枝加芍药汤，桂枝3芍药6生姜3大枣2炙甘草2栝楼2薤白2半夏2。	\N	睡眠质量好，无心悸	32	2023-02-18 02:56:08	2023-02-23 03:19:40
288	2023-02-07	脉沉一息四至，左寸豆状脉见。舌质暗红，有齿痕，白薄苔。	少阴病。	气血三内关公孙火针行间太冲(B)。	\N	睡眠质量好，无心悸	32	2023-02-18 02:56:52	2023-02-23 03:19:56
264	2023-01-26	脉沉滑，一息四至，舌暗红，白湿苔。	少阴病，身体痛。手足寒。骨节痛。脉沉者，附子汤主之	气血三中渚后溪肾源三行间太冲(B)。附子汤，附子5茯苓3党参2白术4白芍3葛根2威灵仙2	\N	颈痛，腰痛，随气候变化，寒湿天加重	41	2023-02-18 02:36:37	2023-02-23 04:10:48
267	2023-02-02	脉滑一息四至，舌暗红，白湿苔。	少阴病，风寒湿痺，身体痛。	气血三中渚后溪肾源三行间太冲(B)。 苓桂姜附阿胶汤合肉苁蓉汤，茯苓3桂枝3干姜3附子3阿胶3甘草2肉苁蓉3麻仁3半夏3。	\N	颈痛腰疼，便秘便干排不尽。	41	2023-02-18 02:40:27	2023-02-23 04:10:59
269	2023-02-10	脉浮，一息四至，舌红，湿苔。	太阳湿瘟恢复	气血三中渚后溪肾源三行间太冲(B)。 香砂六君子汤，党参3白术6茯苓6甘草2陈皮3半夏3砂仁2木香2。	\N	头痛颈痛，饮食二便规律	41	2023-02-18 02:41:47	2023-02-23 04:11:09
292	2023-01-07	脉一息四至，弦沉。舌淡红。	肝气郁结	 逍遥散加味，柴胡3白术3白芍3当归3茯苓3炙甘草1·5炮姜1.5薄荷1山栀1丹皮1。 气血三内关公孙木针行间太冲(B)	\N	21年4月23日车祸，头痛颈痛至今。数月前父亲去世，精神压力大，月经紊乱，经前紧张综合征，月经有血块色黑。睡眠饮食二便尚好	35	2023-02-18 03:00:18	2023-02-18 03:00:18
331	2023-01-10	脉平一息四至，舌淡红。	风寒湿痺	气血三中渚后溪大结节肾源三行间太冲(B)。	\N	手足温，右手功能恢复好，仍然不能握紧拳头指间关节肿胀。	45	2023-02-18 03:34:32	2023-02-23 02:23:16
299	2023-01-11	脉浮紧，尺脉浮大硬，一息四至，舌淡红。	肝气郁结	 泻南补北：黄连3黄芩2阿胶3百合3合欢皮3远志2刺五加2柴胡2。 气血三内关公孙木针行间太冲(B)。	\N	郁闷约二月余，不愿上学，失眠，想自杀。食欲二便好，无恶心，无身痛。	50	2023-02-18 03:09:19	2023-02-18 03:09:19
308	2023-01-04	脉浮大滑，一息四至，舌质暗，舌胎薄。	阳明经热，风寒湿痺。	 苓桂姜附阿胶汤合白虎加人参汤，茯苓3桂枝3干姜3附子3甘草2阿胶3+白虎加人参汤4。 气血三中渚后溪木针行间太冲(B)。	\N	体重过重，左膝痛，上周腰痛。检查认为左膝痛来自腰 L4 撕裂。紧张焦虑，想减肥，现体重290磅。饮食正常，便软日二行，小便频数。	19	2023-02-18 03:16:45	2023-02-18 03:16:45
309	2023-01-06	脉一息四至，舌红湿苔。	风寒湿痺，阳明经热。	 气血三中渚后溪木针行间太冲(B)。	\N	腰痛显著减轻，左膝痛减轻，甚至爬楼梯也不痛，食欲减退，体重下降2磅。	19	2023-02-18 03:17:26	2023-02-18 03:17:26
310	2023-01-13	脉一息四至，舌红湿苔。	风寒湿痺，阳明经热。	 苓桂姜附阿胶汤合白虎加人参汤：茯苓3桂枝3干姜3附子3甘草2阿胶3+白虎加人参汤4。 气血三中渚后溪木针行间太冲(B)。	\N	腰痛显著减轻，左膝痛减轻，食欲减退，体重下降2磅后没有继续减少。	19	2023-02-18 03:17:52	2023-02-18 03:17:52
293	2023-01-18	脉沉紧，一息四至。	岔气	气血三中渚后溪木针行间太冲(B)外关透内关(L)。	\N	六天前搬重物后右胁部痉挛“岔气”，放射至右足外侧。深吸气胸痛。	65	2023-02-18 03:01:29	2023-02-23 01:49:29
311	2023-01-03	脉一息四至，左关浮弦，舌淡红，白薄苔。	风寒湿痺	气血三中渚后溪肾源三行间太冲(B)。	\N	右肩痛，左肘痛。	14	2023-02-18 03:19:01	2023-02-23 02:11:12
294	2023-01-14	脉浮细一息四至，舌质暗淡，薄苔	肺阴虚	理中汤倍白术加天花粉，党参3白术6干姜3炙甘草3天花粉2石斛2生地2。 气血三内关公孙木针行间太冲(B)。	\N	乳腺癌治疗后，口渴，无咳嗽，继续化疗。	59	2023-02-18 03:02:35	2023-02-23 02:29:56
295	2023-02-04	脉沉细一息四至，舌胖，舌质暗淡，薄苔	少阴病，脉沉细，但欲寐，陈寒痼冷。	气血三内关公孙肾源三行间太冲(B)。 当归四逆加吴茱萸生姜汤，当归3桂枝3白芍3细辛3川木通2生姜8大枣2炙甘草2吴茱萸10(1/ 2勺)	\N	继续化疗，乏力，口渴，手足寒，食欲好，睡眠好	59	2023-02-18 03:03:15	2023-02-23 02:30:09
296	2023-01-18	面色谈吐举止无异常，失眠食欲大便正常。脉浮弦数，尺脉无力，一息五至，舌红	肾虚，心肾不交，肾不制水。	补骨脂4益智仁4乌药4+人参养荣汤9。	\N	夜尿频多，常尿床，看过许多医生，采用各种方法均无效。	67	2023-02-18 03:06:58	2023-02-23 02:37:31
297	2023-01-27	食欲大便正常。脉浮数，尺脉无力，一息四至，舌红	肾虚，心肾不交，肾不制水。	补骨脂3益智仁3乌药3党参2白术2干姜2炙甘草2吴茱萸2黄芪2。	\N	夜尿减少，仍尿床。	67	2023-02-18 03:07:30	2023-02-23 02:37:42
298	2023-02-06	脉浮一息四至，舌红	肾虚，心肾不交，肾不制水。	六味合四神丸：熟地3大枣3茯苓3山药3泽泻2丹皮2补骨脂2吴茱萸2肉豆蔻2。 气血三内关公孙肾源三行间太冲(B)小同步。	\N	仍尿床。鼻塞，影响睡眠，疲劳使之无法醒来小便。	67	2023-02-18 03:08:03	2023-02-23 02:37:52
289	2023-02-10	脉一息四至。舌质暗红，有齿痕，白薄苔。	少阴病。少阴枢机不畅，热瘀少阴	气血三内关公孙木针行间太冲(B)。 加味逍遥散，柴胡3白术3白芍3茯苓3当归3薄荷1炮姜2炙甘草1栀子1丹皮1。	\N	饭后感觉心跳	32	2023-02-18 02:57:33	2023-02-23 03:20:08
290	2023-02-13	脉一息四至。舌质暗红，有齿痕，白苔。	少阴病。少阴枢机不畅，热瘀少阴	气血三内关公孙木针行间太冲(B)。	\N	饭后感觉心跳	32	2023-02-18 02:58:05	2023-02-23 03:20:18
291	2023-02-16	脉一息四至。舌质暗红，有齿痕，白苔。	太阳病，受四时不正之气	气血三内关公孙归脾丸行间太冲(B)。 藿香正气散：大腹皮白芷紫苏叶茯苓各3半夏白术陈皮厚朴生姜桔梗炙甘草各6藿香9。	\N	腹痛腹泻，恶心，无呕吐	32	2023-02-18 02:58:35	2023-02-23 03:20:28
300	2023-01-03	脉紧一息四至，舌色淡白苔。	风寒湿痺	肾着汤合养筋汤，茯苓4干姜4白术2白芍3熟地3麦冬3酸枣仁1巴戟天1。 气血三内关公孙木针行间太冲(B)。	\N	腰痛颈痛，僵硬，关节炎。	44	2023-02-18 03:10:23	2023-02-23 03:30:46
301	2023-01-09	脉紧一息四至，舌胖色淡红。ROM受限。	风寒湿痺	气血三内关公孙木针行间太冲(B)。	\N	腰痛好转，但段肩颈仍痛。	44	2023-02-18 03:11:01	2023-02-23 03:30:57
302	2023-01-23	脉浮弦一息四至，舌胖色淡红。ROM受限。左膝痛	少阳病，	气血三内关公孙木针行间太冲(B)。 养筋汤，白芍6熟地6麦冬6酸枣仁2巴戟天2。	\N	全身紧绷	44	2023-02-18 03:11:38	2023-02-23 03:31:21
303	2023-01-26	脉浮一息四至，舌胖色淡红。ROM受限。	少阳病，	气血三内关公孙木针行间太冲(B)。	\N	全身紧绷状态缓解，精神紧张缓解	44	2023-02-18 03:12:20	2023-02-23 03:31:32
304	2023-01-31	脉一息四至，舌淡红。	膝痛，从肝论治。	气血三 中渚 后溪 木针 膝五针 行间 太冲(B)。 养筋汤，白芍3熟地3麦冬3酸枣仁1巴戟天1桂枝2川牛膝2三七2生姜1大枣1炙甘草2。	\N	今日打网球后右膝痛，全身肌肉已不紧张。睡眠饮食二便均无异常。	44	2023-02-18 03:13:07	2023-02-23 03:31:47
305	2023-02-14	脉弦一息四至，舌淡红，舌尖偏右。	腰痛，膝痛，从肝论治。	气血三 中渚 后溪 木针 膝五针 行间 太冲(B)。 养筋汤合肾着汤，白芍3熟地3麦冬3酸枣仁1巴戟天1茯苓4干姜4白术2炙甘草2。	\N	腰痛，活动度受限，膝关节疼痛，有磨损的感觉。	44	2023-02-18 03:13:52	2023-02-23 03:31:59
306	2023-02-17	脉弦一息四至，舌淡红，舌尖偏右。	腰踝从肾论治，膝，从肝。	气血三中渚后溪行间太冲(B)木针(L)肾源三(R)。	\N	膝关节好转，两踝关节痛，腰常有不适	44	2023-02-18 03:14:28	2023-02-23 03:32:09
314	2023-01-10	舌淡红，脉浮一息四至。	风热犯肺	 荆防化疹汤，荆芥2防风2白芷2白鲜皮4牛蒡子2苦参3蝉蜕2地肤子2茯苓1甘草1	\N	寻麻疹数周。	48	2023-02-18 03:21:24	2023-02-18 03:21:24
315	2023-01-05	舌暗红，薄苔湿，舌尖偏右，脉浮弦，左寸关甚，一息四至。	中风先兆	 气血三中渚后溪肾源三行间太冲(B) 苓桂姜附阿胶汤合归脾汤，茯苓3桂枝3干姜3附子3甘草2阿胶3+归脾汤4。	\N	腰痛一天疼痛剧烈，手足寒，三周前患新冠，两年前打过两针疫苗。	24	2023-02-18 03:22:36	2023-02-18 03:22:36
313	2023-01-26	脉一息四至，舌淡红，白薄苔。	风寒湿痺	气血三中渚后溪肾源三行间太冲(B)。	\N	右肩痛，左肘痛。	14	2023-02-18 03:20:03	2023-02-23 02:11:24
330	2023-01-06	脉一息四至，舌淡。	风寒湿痺	气血三中渚后溪大结节肾源三行间太冲 (B)。 桂枝乌头汤加味，桂枝3白芍3大枣2生姜3炙甘草2乌头6茯苓1白术1。	\N	手足温，阴天下雨不痛，但仍不能握紧拳头。	45	2023-02-18 03:33:52	2023-02-23 02:23:02
332	2023-01-13	脉平一息四至，舌淡红。	风寒湿痺	气血三中渚后溪大结节肾源三行间太冲(B)。 桂枝乌头汤：桂枝3白芍3生姜3大枣2炙甘草2川乌4细辛2伸筋草2。	\N	手足温，右手功能恢复好，手已不痛，仍然不能握紧拳头指间关节肿胀。	45	2023-02-18 03:34:59	2023-02-23 02:23:30
333	2023-01-18	脉平一息四至，舌淡红。	风寒湿痺	气血三中渚后溪五虎一金针行间太冲(B)。	\N	手足温，右手几乎可以握拳，手昨天痛。	45	2023-02-18 03:41:44	2023-02-23 02:23:43
336	2023-01-28	脉平一息四至，舌淡红。	风寒湿痺	气血三中渚后溪五虎一金针行间太冲(B)。 桂枝乌头汤：桂枝3白芍3生姜3大枣2炙甘草2川乌2茯苓2白术1伸筋草1补骨脂2。	\N	过去一周滑雪，手痛，关节水肿。	45	2023-02-18 03:42:43	2023-02-23 02:23:57
337	2023-02-04	脉平一息四至，舌淡红。	风寒湿痺	气血三中渚后溪大结节肾源三行间太冲(B)。 桂枝乌头汤：桂枝3白芍3生姜3大枣2炙甘草2川乌2茯苓2白术1伸筋草1补骨脂2。	\N	手指关节水肿减轻，仍然无法握紧拳头。	45	2023-02-18 03:43:16	2023-02-23 02:24:28
338	2023-02-07	脉平一息四至，舌淡红。	风寒湿痺	气血三中渚后溪大结节肾源三行间太冲(B)。	\N	右手无名指关节水肿，无法握紧拳头。血压升高。	45	2023-02-18 03:44:18	2023-02-23 02:24:46
339	2023-02-11	脉平一息四至，舌淡红。	风寒湿痺，停服中药一周	气血三中渚后溪大结节肾源三行间太冲(B)。	\N	右手无名指关节水肿减轻。血压降低。	45	2023-02-18 03:44:49	2023-02-23 02:24:54
340	2023-02-15	脉平一息四至，舌淡红。	风寒湿痺	气血三中渚后溪五虎一肾源三行间太冲(B)。 桂枝汤加味，桂枝3白芍3生姜3大枣2炙甘草2防风2伸筋草2补骨脂2三七2。	\N	右手无名指关节偶尔痛，水肿减轻。	45	2023-02-18 03:45:21	2023-02-23 02:25:21
328	2023-02-13	脉沉细，一息四至，舌质暗，胖软	少阴病，肾虚寒	气血三中渚后溪木针行间太冲(B)膝五针(L)。 获苓甘革干姜白术汤合芍药甘草汤，茯苓3干姜3白术1.5甘草1.5白芍4附子2川牛膝2桂枝2三七2	\N	腰痛二年，注射两针止痛剂，近三月加重左侧甚，前俯困难。左膝痛，右膝巳行置换术。	102	2023-02-18 03:32:02	2023-02-23 02:56:30
316	2023-01-31	脉一息四至，右关浮紧，舌淡薄苔，四肢温。	太阳病，桂枝汤证。	桂枝汤加味，桂枝3白芍3生姜3大枣2炙甘草2防风2伸筋草2吴茱萸3丧气2。 气血三中渚后溪肾源三行间太冲(B)。	\N	颈痛，胃反酸，影响睡眠。饮食二便均好，颈部活动度无异常。	119	2023-02-18 03:23:43	2023-02-23 02:57:53
317	2023-02-03	脉一息四至，舌淡薄苔。	太阳病	气血三中渚后溪肾源三行间太冲(B)。	\N	颈痛，上背痛好转，睡眠质量差，中间醒来。	119	2023-02-18 03:24:20	2023-02-23 02:58:06
318	2023-02-08	脉一息四至，舌淡薄苔。	太阳病	气血三中渚后溪肾源三行间太冲(B)。	\N	颈痛，上背痛好转，睡眠质量差，中间醒来，可重新入睡。	119	2023-02-18 03:25:01	2023-02-23 02:58:12
319	2023-02-13	脉一息四至，右脉浮，舌淡薄苔。	太阳病，失眠为阴阳不入阴	气血三中渚后溪木针行间太冲(B)。 桂枝去芍药加蜀漆龙骨牡蛎汤：桂枝3生姜3大枣2炙甘草2常山3龙骨4牡蛎5。	\N	颈痛，上背痛好转，睡眠质量差，中间醒来，可重新入睡。腹胀	119	2023-02-18 03:25:41	2023-02-23 02:58:21
321	2023-01-02	脉一息四至，舌淡红薄苔。	风寒湿痺	气血三中渚后溪肾源三行间太冲(B)。	\N	腰痛	38	2023-02-18 03:27:55	2023-02-23 03:28:15
322	2023-01-06	脉一息四至，舌淡红。	风寒湿痺	气血三中渚后溪肾源三行间太冲(B)。	\N	腰几乎痊愈	38	2023-02-18 03:28:33	2023-02-23 03:28:22
327	2023-02-17	脉一息四至，舌淡红。	养肝以舒筋	气血三中渚后溪肾源三行间太冲(B)。	\N	身体柔韧度好转	38	2023-02-18 03:30:56	2023-02-23 03:28:39
323	2023-01-12	脉一息四至，舌淡红。	风寒湿痺	气血三中渚后溪肾源三行间太冲(B)。 苓桂姜附阿胶汤：茯苓3桂枝3干姜3附子3甘草2阿胶3伸筋草2威灵仙2。	\N	腰几乎痊愈，腰两侧肌肉仍感觉僵紧，	38	2023-02-18 03:29:00	2023-02-23 03:28:53
324	2023-01-19	脉一息四至，舌淡红。	风寒湿痺	气血三中渚后溪肾源三行间太冲 (B)。 养筋汤合肾着汤，白芍3熟地3麦冬3酸枣仁1巴戟天1茯苓4干姜4白术2。	\N	腰几乎痊愈，要求放松hamstring，曾经在尾骨处手术，两大腿紧张。	38	2023-02-18 03:29:28	2023-02-23 03:29:15
325	2023-02-03	脉一息四至，舌淡红。	养肝以舒筋	气血三中渚后溪肾源三行间太冲(B)。 养筋汤加味，白芍3熟地3麦冬3酸枣仁1巴戟天1川牛膝2伸筋草2当归2党参2络石藤2。	\N	要求放松hamstring，弯腰手指尖到脚面约一尺。	38	2023-02-18 03:30:05	2023-02-23 03:29:26
326	2023-02-10	脉一息四至，舌淡红。	养肝以舒筋	气血三中渚后溪木针行间太冲(B)。 养筋汤加味，白芍3熟地3麦冬3酸枣仁1巴戟天1川牛膝2伸筋草2桂枝2防风2首乌藤2。	\N	hamstring开始放松，弯腰手指尖到脚面约2寸。	38	2023-02-18 03:30:30	2023-02-23 03:29:39
341	2023-01-02	脉弦一息四至，舌淡红。	肝风上扰	 气血三内关公孙木针行间太冲(B)。 中药	\N	头痛，周末加重，全身发冷。	43	2023-02-18 14:07:26	2023-02-18 14:07:26
390	2022-06-09	Headaches	Acupuncture	97810. 97811	\N	R51.9	100	2023-02-18 15:13:18	2023-02-18 15:13:18
365	2023-01-02	脉平，一息四至。	腰痛	 气血三中渚后溪肾源三行间太冲(B)。	\N	腰痛显著减轻，尚未完全愈合。	33	2023-02-18 14:48:11	2023-02-18 14:48:11
366	2023-01-07	脉平一息四至。	治疗结束。	 气血三中渚后溪肾源三行间太冲(B)。	\N	腰已不疼。	33	2023-02-18 14:48:48	2023-02-18 14:48:48
359	2023-01-17	脉一息四至，舌质暗五苔	肺阴虚	辛夷4桑白皮4栀子1枳实2桔梗2白芷2+辛夷清肺阴6。 气血三列却照海归脾丸行间太冲 (B)小同步。	\N	鼻涕返流五十年。常年不断，无咳嗽，无打鼾，五流涕，五头痛。	63	2023-02-18 14:42:03	2023-02-23 01:46:19
353	2023-01-02	脉浮数弦紧一息五至，舌红。	太阳病，风温伤寒，麻杏石甘汤证。	气血三中渚后溪肾源三行间太冲(B)。 苓桂姜附阿胶汤合银翘散：茯苓3桂枝3干姜3附子3甘草2阿胶3+银翘散4	\N	腰痛一周，咽痛颈痛头痛。脉浮数弦紧一息五至，舌红。	20	2023-02-18 14:35:45	2023-02-23 01:52:09
354	2023-01-04	脉已不浮，一息四至，舌淡红。	少阴咽痛，若持续改投半夏散及汤	气血三中渚后溪木针行间太冲(B)。	\N	腰痛显著减轻，流感好转，仍咽痛。	20	2023-02-18 14:36:30	2023-02-23 01:52:20
355	2023-01-06	脉紧一息四至，舌淡红，咽部不红\t	少阴咽痛	气血三中渚后溪木针行间太冲(B)。 维持原方	\N	咽痛80%好转。昨日左腰拉伤，剧痛，难以转侧。	20	2023-02-18 14:37:22	2023-02-23 01:52:34
356	2023-01-09	脉紧一息四至，舌淡红	太阳阳明病，大柴胡汤证	气血三中渚后溪木针行间太冲(B)。 大柴胡汤：柴胡8黄芩3半夏2.5白芍3枳实3大黄2。	\N	咽痛好转。腰痛减轻，便秘，隔天一行。	20	2023-02-18 14:38:08	2023-02-23 01:52:57
357	2023-01-18	脉弦一息四至，舌红薄苔，咽红。	太阳阳明病，大柴胡汤证	气血三支沟列缺天枢照海金针行间太冲(B)。 大柴胡汤：柴胡8黄芩3半夏2.5白芍3枳实3大黄2。	\N	咽又痛，腰痛痊愈，便秘，状如羊矢，隔天一行。	20	2023-02-18 14:38:48	2023-02-23 01:53:11
358	2023-01-20	脉弦一息四至，舌红薄苔。	热入血室，少阳病，小柴胡汤证，停服大柴胡汤	气血三支内关公孙木针行间太冲(B)。 小柴胡汤：柴胡8黄芩3半夏2.5党参2生姜2大枣2炙甘草2。	\N	无便秘，反下利，另月经来临，伴PMS，热入血室。	20	2023-02-18 14:39:44	2023-02-23 01:53:25
379	2023-01-20	脉沉一息四至，舌质淡，白薄苔。	风寒湿痺	气血三中渚后溪肾源三行间太冲(B)。 桂枝乌头汤加味，桂枝3白芍3生姜3大枣2炙甘草2乌头3葛根3补骨脂2。	\N	右颈痛减轻，不剧痛，但酸痛。ROM增加。手指关节炎严重。	55	2023-02-18 14:59:27	2023-02-23 01:57:45
361	2023-02-07	脉浮紧，右脉弦，一息五至，舌淡红薄苔。	太阳病，劳损至肌腠寒湿，腑气受损	气血三中渚后溪针行间太冲(B)。 桂枝汤加味，桂枝3白芍3生姜3大枣2炙甘草2防风2伸筋草2葛根4。	\N	颈痛四天，腹疼一月诊断为胃炎，月经一周后来临。平时精神紧张，无恶心，睡眠好二便调食欲可。平时以计算机前工作	94	2023-02-18 14:44:21	2023-02-23 02:44:47
362	2023-02-08	脉浮，一息四至，舌淡红薄苔。	太阳病，劳损至肌腠寒湿	气血三中渚后溪针行间太冲(B)。	\N	今天颈痛加重，同时月经临，加上去纽约劳累	94	2023-02-18 14:45:13	2023-02-23 02:44:58
364	2023-02-13	脉沉，一息四至	太阴病脾不运化	气血三内关公孙木针行间太冲(B)。 理中汤合二陈汤，炙甘草3白术3党参3干姜3陈皮3半夏3茯苓3。	\N	年青时曾患Harshmodo, 常腹胀腹泻便秘，足寒，体重不减，精神紧张，睡眠不足，饮食正常。	103	2023-02-18 14:47:02	2023-02-23 02:55:11
342	2023-01-03	脉沉无力，一息四至。舌质暗淡，白薄苔。	气虚，肝血虚。	气血三内关公孙金针行间太冲(B)。	\N	睡眠好转，乏力，常感到紧张焦虑。	27	2023-02-18 14:08:56	2023-02-23 03:02:37
343	2023-01-05	脉沉无力，一息四至。	肝血虚。	气血三内关公孙肾源三行间太冲(B)。	\N	体力恢复，早晨5:00感到紧张焦虑，醒后不能再入睡。	27	2023-02-18 14:09:57	2023-02-23 03:02:47
344	2023-01-09	脉缓有力，一息四至，舌质暗红	气虚，肝血虚	气血三内关公孙木针行间太冲(B)。 加味逍遥散，柴胡3当归3白芍3白术3茯苓3炙甘草1炮姜1薄荷1丹皮1.5栀子1.5。	\N	体力恢复，仍在早晨5:00醒，感到紧张焦虑，醒后不能再入睡。	27	2023-02-18 14:11:12	2023-02-23 03:02:59
345	2023-01-12	脉缓有力，一息四至，舌质暗红	气虚，肝血虚	气血三内关公孙木针行间太冲(B)。 加味逍遥散，柴胡3当归3白芍3白术3茯苓3炙甘草1炮姜1薄荷1丹皮1.5栀子1.5。	\N	仍在早晨5:00醒，醒后不能再入睡。体力恢复，可以自己开车，头脑清醒，眼睛里有漂浮物。	27	2023-02-18 14:11:43	2023-02-23 03:03:11
346	2023-01-16	脉缓有力，一息四至，舌质暗红	血虚	气血三内关公孙木针行间太冲(B)。	\N	仍在早晨5:00醒，醒后不能再入睡。体力恢复，嗓音洪亮，恢复工作，头脑清醒，眼睛里有漂浮物减少，快速站起来头晕。	27	2023-02-18 14:12:47	2023-02-23 03:03:30
347	2023-01-23	脉缓有力，一息四至，舌质暗红	血虚	气血三内关公孙木针行间太冲(B)。 人参养荣汤，白芍18当归6陈皮6黄芪6肉桂6党参6白术6茯苓4.5远志4生姜6大枣6。	\N	仍在早晨5:00醒，体力恢复，嗓音洪亮，恢复工作，头脑清醒，容易疲劳。	27	2023-02-18 14:31:03	2023-02-23 03:03:43
348	2023-01-31	脉一息四至，舌质暗红。	骨折	气血三中渚后溪肾源三行间太冲 (B)。 芍药甘草汤，白芍7炙甘草2附子2补骨脂2骨碎补2三七2川牛膝2桂枝2。	\N	三日前滑雪摔伤右腿，X光看见Tibia骨折。	27	2023-02-18 14:32:00	2023-02-23 03:03:56
349	2023-02-03	脉一息四至，舌质暗红。	骨折	气血三中渚后溪木针行间太冲(B)。	\N	右腿不能负重	27	2023-02-18 14:32:33	2023-02-23 03:04:12
350	2023-02-06	脉一息四至，舌质暗红。	骨折	气血三中渚后溪木针行间太冲(B)。	\N	腿疼不明显，右腿不能负重	27	2023-02-18 14:33:02	2023-02-23 03:04:19
351	2023-02-10	脉一息四至，舌质暗红。	骨折	气血三中渚后溪木针膝五针行间太冲(B)。 芍药甘草汤，白芍7炙甘草2附子2补骨脂2骨碎补2三七2川牛膝2桂枝2。	\N	右腿不能负重，仍然需要拐杖	27	2023-02-18 14:33:32	2023-02-23 03:04:31
352	2023-02-15	脉一息四至，舌质暗红。	骨折，前交叉韧带撕脫	气血三中渚后溪木针行间太冲(B)。	\N	MRI诊断ACL完全撕脱，需手术治疗。	27	2023-02-18 14:34:16	2023-02-23 03:04:43
387	2022-12-28	脉滑一息四至，舌淡胖，湿粘苔。\t风热感冒后期。	风热感冒后期。	 气血三内关公孙归脾丸行间太冲(B)。 银翘散合清气化痰丸，银翘散11+ 清气化痰丸10。	\N	感冒10日，咳嗽，有“气管炎”，黄痰，舌头痛。	29	2023-02-18 15:09:43	2023-02-18 15:09:43
388	2022-12-30	脉一息四至。舌淡胖，粘苔薄	咳嗽	 气血三内关公孙金针行间太冲(B)。	\N	咳嗽减轻，黄痰减少，舌痛减轻。	29	2023-02-18 15:10:25	2023-02-18 15:10:25
389	2023-01-06	舌不痛舌质暗纹理多。脉一息四至。	伤寒咳嗽	 气血三内关公孙金针行间太冲(B)。 香砂六君子汤收工，党参3白术6茯苓6甘草2陈皮3半夏3砂仁2木香2。	\N	感冒恢复，干咳无痰。	29	2023-02-18 15:11:13	2023-02-18 15:11:13
392	2022-07-06	Headaches	Acupuncture	97810. 97811	\N	R51.9	100	2023-02-18 15:13:36	2023-02-18 15:13:36
393	2022-07-25	Headaches	Acupuncture	97810. 97811	\N	R51.9	100	2023-02-18 15:13:44	2023-02-18 15:13:44
394	2022-08-09	Headaches	Acupuncture	97810. 97811	\N	R51.9	100	2023-02-18 15:13:52	2023-02-18 15:13:52
395	2022-08-11	Headaches	Acupuncture	97810. 97811	\N	R51.9	100	2023-02-18 15:13:59	2023-02-18 15:13:59
396	2022-09-02	Headaches	Acupuncture	97810. 97811	\N	R51.9	100	2023-02-18 15:14:09	2023-02-18 15:14:09
368	2023-02-07	脉一息四至，舌淡红	太阳病，寒凝肌肉	气血三中渚后溪肾源三行间太冲(B)。 	\N	左大腿痛减轻，腰痛好转	88	2023-02-18 14:50:39	2023-02-22 02:21:52
369	2023-02-09	脉一息四至，舌淡红	太阳病，寒凝肌肉	气血三中渚后溪肾源三行间太冲(B)。 	\N	左大腿 hamstring紧张，外侧仍有一压痛点。	88	2023-02-18 14:51:05	2023-02-22 02:22:01
370	2023-02-13	脉一息四至，舌淡红	太阳病，寒凝肌肉	气血三中渚后溪肾源三行间太冲(B)。 	\N	腰腿痛基本好转	88	2023-02-18 14:51:23	2023-02-22 02:22:07
371	2023-02-15	脉浮，一息四至，舌淡红	太阳病，寒凝肌肉	气血三中渚后溪肾源三行间太冲(B)。 	\N	Hamstring拉伸尚有不适，颈僵	88	2023-02-18 14:51:52	2023-02-22 02:22:15
486	2023-02-20	脉浮，一息四至，舌红薄苔。	太阳病，风热感冒，肝不升	气血三中渚后溪行间太冲(B)木针(L)金针(R)。	\N	感冒症状，口腔牙龈肿均缓解	118	2023-02-20 23:19:25	2023-02-22 02:40:19
383	2023-01-24	脉浮滑，一息是至，舌淡红，薄湿苔。	少阳病，肝风内动	气血三内关公孙木针行间太冲(B)小同步。 苓桂术甘汤，茯苓8桂枝6白术6炙甘草4。	\N	头晕三日，起床时发生，伴恶心，无呕吐，睡眠好，饮食二便好，右耳听力受影响。	73	2023-02-18 15:03:50	2023-02-23 01:55:09
376	2023-01-14	脉一息四至，左寸弦，舌质暗淡，白薄苔。	颈痛	桂枝汤加减，桂枝3白芍3生姜3大枣2炙甘草2葛根4防风2伸筋草2。 气血三中渚后溪肾源三行间太冲(B)。	\N	右颈痛一月余，转侧困难。无放射性感觉到上肢。	55	2023-02-18 14:57:00	2023-02-23 01:57:03
377	2023-01-16	脉一息四至，舌质淡，白薄苔。	颈痛	气血三中渚后溪肾源三行间太冲(B)。	\N	右颈痛减轻，活动增加	55	2023-02-18 14:58:07	2023-02-23 01:57:16
378	2023-01-18	脉沉一息四至，舌质淡，白薄苔。	风寒湿痺	气血三中渚后溪大结节肾源三行间太冲(B)。	\N	右颈痛减轻，但昨晚加重，今晨减轻。ROM增加	55	2023-02-18 14:58:54	2023-02-23 01:57:34
380	2023-01-23	脉沉一息四至，舌质淡，白薄苔。	少阴病，风寒湿痺	气血三中渚后溪大结节肾源三行间太冲(B)。	\N	右颈痛减轻。ROM增加。手指关节炎严重。右手食指中指不能弯曲。	55	2023-02-18 15:00:42	2023-02-23 01:57:58
381	2023-01-25	脉沉一息四至，舌质淡，白薄苔。	少阴病，风寒湿痺	气血三中渚后溪大结节肾源三行间太冲(B)。 桂枝乌头汤加味，桂枝3白芍3生姜3大枣2炙甘草2乌头3葛根3补骨脂2。	\N	颈痛减轻，天气变化，阴冷疼痛加重，右手食指中指可以弯曲活动。	55	2023-02-18 15:01:16	2023-02-23 01:58:11
384	2023-02-13	脉沉细无力，一息四至，舌质暗红，舌体薄，湿薄苔	少阴病	气血三内关公孙木针行间太冲(B)。 真武汤加味，茯苓3白芍3生姜3附子3白术2党参2炙甘草2黄芪2防已2。	\N	Lyme disease两年，腰痛，足麻水肿，睡眠差，尤其是入睡、中间醒。心悸，平衡障碍，手抖，口渴不欲饮。曾经长期用抗生素	104	2023-02-18 15:04:53	2023-02-23 02:55:52
386	2023-02-14	脉略沉一息四至，舌淡白苔	太阳病，寒湿侵肌	气血三中渚后溪肾源三行间太冲(B)。 桂枝3白芍3生姜3大枣2炙甘草2防风2伸筋草2三七2鸡血藤2。	\N	右肩颈痛四月余，睡眠二便饮食均无异常。	105	2023-02-18 15:08:33	2023-02-23 03:00:57
385	2023-02-17	脉浮一息四至，舌淡，舌边有齿痕薄苔	太阳病，风寒湿	气血三中渚后溪肾源三行间太冲(B)。 桂枝3白芍3生姜3大枣2炙甘草2防风2伸筋草2羌活2三七2	\N	左肩痛一年，作过PT，注射过激素，现ROM无影响，只在边界痛。二便饮食可，睡眠好。	114	2023-02-18 15:07:27	2023-02-23 03:25:38
375	2023-02-17	脉一息四至，舌淡红湿软	太阴病，脾不运化	气血三内关公孙木针行间太冲(B)。	\N	睡眠好转，醒来次数减少，体重降低 2Ib，现在是141磅	101	2023-02-18 14:55:42	2023-02-23 03:26:14
374	2023-02-13	脉沉大无力，一息四至，舌淡湿软	太阴病，脾不运化	气血三内关公孙木针行间太冲(B)。 理中汤合二陈汤，白术3党参3干姜3炙甘草3木香1砂仁1陈皮2半夏2茯苓3	\N	腹胀，体重不减，饮食二便好，锻炼规律，睡眠中断。	101	2023-02-18 14:55:01	2023-02-23 03:26:28
372	2023-02-07	脉浮弦一息四至，舌淡红	少阳病	气血三内关公孙木针行间太冲(B)。 桂枝去芍药加蜀漆龙蛎汤桂枝3生姜3大枣2炙甘草2常山3牡蛎5龙骨4。	\N	长期睡眠中断数次，手足汗出，口苦咽干，西医检查胆固醇升高，饮食二便调	95	2023-02-18 14:53:01	2023-02-23 03:27:26
373	2023-02-17			桂枝去芍药加蜀漆龙蛎汤桂枝3生姜3大枣2炙甘草2常山3牡蛎5龙骨4。	\N	睡眠质量好转，拿药	95	2023-02-18 14:53:39	2023-02-23 03:27:35
382	2023-01-14	脉一息四至，舌暗淡白苔	虚痨	气血三中渚后溪肾源三行间太冲(B)。 2x补中益气汤21，黄芪6当归3党参3白术3炙甘草1.5陈皮1.5升麻1柴胡1生姜3大枣3。	\N	乏力身痛减轻，无打鼾。	58	2023-02-18 15:02:31	2023-02-23 03:50:26
418	2023-01-16	脉一息四至，舌淡胖。	减肥	气血三内关公孙火针行间太冲(B)。	\N	食欲减退，体重略有下降。口渴，二便调。	51	2023-02-18 15:33:31	2023-02-23 02:43:40
419	2023-01-27	脉一息四至，舌淡胖。	减肥，加入百合合欢皮，戒鸡肉	气血三内关公孙火针行间太冲(B)。	\N	食欲减退，体重略有下降，现255Ib，口渴，二便调。	51	2023-02-18 15:34:23	2023-02-23 02:43:47
402	2023-01-17	脉浮无力，一息四至，舌淡薄苔	虚痨，太阴脾虚，下利。	理中汤加味，白术3党参3干姜3炙甘草3附子2肉桂1砂仁2茯苓2黄芪2。 气血三中渚后溪火针行间太冲(B)。	\N	疲劳二月余，曾经感冒，下利日二行。失眠差，无食欲，小便黄，鼻涕返流。轻咳嗽，痰清稀	62	2023-02-18 15:20:41	2023-02-23 03:13:02
403	2023-01-19	脉浮无力，一息四至，舌淡薄苔	虚痨，太阴脾虚，下利。	气血三中渚后溪火针行间太冲(B)。	\N	疲劳缓解，下利减轻。失眠仍差，食欲增加。	62	2023-02-18 15:21:12	2023-02-23 03:13:15
405	2023-01-31	脉浮，一息四至，舌淡薄苔。	虚痨，太阴脾虚。维持原方一周。	气血三中渚后溪火针行间太冲(B)。	\N	腹痛下利时好时坏，逐渐减轻，手足温，精神恢复，食欲睡眠好。	62	2023-02-18 15:22:48	2023-02-23 03:13:28
404	2023-01-26	脉浮，一息四至，舌淡薄苔。	虚痨，太阴脾虚。维持原方一周。	气血三内关公孙木针行间太冲(B)。 理中汤加味，白术3党参3干姜3炙甘草3附子2肉桂1砂仁2茯苓2黄芪2。	\N	疲劳缓解，下利几乎消失。失眠好，食欲增加。	62	2023-02-18 15:21:59	2023-02-23 03:13:59
406	2023-02-03	脉浮一息四至，舌淡薄苔。	虚痨，太阴脾虚	气血三内关公孙火木针行间太冲(B)。	\N	腹痛下利逐渐减轻，手足温，精神体力恢复，食欲睡眠好。	62	2023-02-18 15:23:31	2023-02-23 03:14:24
408	2023-02-13	脉浮一息四至，舌淡薄苔。	太阴病虚痨，太阴脾虚	气血三内关公孙火木针行间太冲(B)。	\N	下腹痛缓解，大便成形，手足温，半夜盗汗	62	2023-02-18 15:24:54	2023-02-23 03:14:44
407	2023-02-10	脉沉无力一息四至，舌淡薄苔。	太阴病虚痨，太阴脾虚	气血三内关公孙火木针行间太冲(B)。 理中汤加味：党参3白术3炙甘草3干姜3木香1砂仁2陈皮2半夏 2茯苓2。	\N	下腹部压痛，腹软。大便时稀，手足温	62	2023-02-18 15:24:20	2023-02-23 03:15:01
409	2023-02-16	脉浮弦，一息四至，舌淡薄苔。	少阳病，枢机不利。 肝升肺降，交通心肾\t	气血三列缺照海行间太冲(B)肾源三木针(L)火针金针(R)。	\N	连续两天晩上连连做梦，鼻塞左甚，下腹痛缓解，大便成形，手足温，盗汗停止	62	2023-02-18 15:25:38	2023-02-23 03:15:13
397	2023-01-03	脉弦一息四至，舌红，湿苔。	热入血室，小柴胡汤证。	气血三内关公孙木针行间太冲。 小柴胡汤原方，柴胡8黄芩3半夏2.5党参3生姜3大枣3炙甘草3。	\N	预计月经两三日后来临，今日头疼目眩恶心。	17	2023-02-18 15:15:44	2023-02-23 03:16:11
398	2023-01-06	脉一息四至，右脉弦，舌淡红薄苔。	热入血室	气血三内关公孙木针行间太冲。 继续服小柴胡汤	\N	月经今日早晨3:00来临，一过性痛经，无头痛。	17	2023-02-18 15:16:25	2023-02-23 03:16:26
399	2023-01-07	脉一息四至，右脉弦，舌淡红薄苔。	热入血室	气血三内关公孙木针行间太冲 小柴胡汤原方，柴胡8黄芩3半夏2.5党参3生姜3大枣3炙甘草3	\N	月经期间，昨夜凌晨四点回家，休息不好，头痛剧烈。	17	2023-02-18 15:16:53	2023-02-23 03:16:40
400	2023-02-11	脉一息四至，右脉弦，舌淡红薄苔。	热入血室	气血三内关公孙木针行间太冲 小柴胡汤原方，柴胡8黄芩3半夏2.5党参3生姜3大枣3炙甘草3	\N	月经过期三日，轻绞痛，但仍有胸胁胀满，口苦咽干，黑黑不思饮食，乱发脾气	17	2023-02-18 15:17:18	2023-02-23 03:16:49
401	2023-02-16	脉浮数，一息五至，舌淡红薄苔。	食谷欲呕，属阳明也，吴茱萸汤主之。得汤反剧者，属上焦也。吴茱萸汤。	气血三内关公孙行间太冲(B)木针(L)归脾丸(R)。肝升胃降。 吳茱萸汤，吴茱萸5党参3生姜6大枣1山楂2麦芽2神曲2	\N	昨晚歺吃鱼后头痛，恶心，呕吐剧列，夜不能寐，今天继续呕吐，手足寒，出汗口渴，二便可\t	17	2023-02-18 15:18:23	2023-02-23 03:17:03
410	2023-01-26	脉滑一息四至，舌尖红，白湿苔。皮疹下有水泡，皮肤红。	太阴病，脾失健运，脾主四肢，里寒外热。	气血三中渚后溪木针行间太冲 (B)。 理中汤加味，白术3干姜3炙甘草3党参3茯苓2连翘2赤小豆3薏苡仁2。	\N	自少儿时期常有皮肤病。六年前开始肘窝手掌有湿疹，不间断巨痒，只有擦激素类药物才能缓解。睡眠好，手足寒，嗜食生冷，腹胀下利，食物，精神紧张与湿疹无关。右腰痛。饮水多。	77	2023-02-18 15:27:05	2023-02-23 03:23:29
411	2023-01-30	脉滑一息四至，舌尖不红，舌伸偏左，薄白湿苔。	太阴病，脾失健运，脾主四肢，里寒外热。	气血三中渚后溪木针行间太冲(B)。	\N	手和皮肤湿疹无明显变化，但腹胀减轻，感觉全身舒服。	77	2023-02-18 15:27:14	2023-02-23 03:23:42
413	2023-02-07	脉浮数一息五至，舌尖红，薄白湿苔。	太阴病，脾失健运，脾主四肢。	气血三中渚后溪木针行间太冲(B)。	\N	手足发热，手指尖轻微发痒，皮肤湿疹点减少，腹胀减轻。	77	2023-02-18 15:29:21	2023-02-23 03:23:50
415	2023-02-13	脉一息五至，舌淡红，薄白湿苔。	太阴病。	气血三中渚后溪木针行间太冲(B)。	\N	腰痛好转	77	2023-02-18 15:30:35	2023-02-23 03:23:57
412	2023-02-02	脉滑一息四至，舌尖不红，舌伸偏左，薄白湿苔。	太阴病，脾失健运，脾主四肢。	气血三内关公孙木针行间太冲(B)。 理中汤加味，白术3干姜3炙甘草3党参3茯苓2连翘2桂枝2桑白皮1浮萍2。	\N	手足发热，皮肤湿疹点减少，腹胀减轻，偶有稀便。	77	2023-02-18 15:28:45	2023-02-23 03:24:13
414	2023-02-11	脉浮数一息五至，舌尖红，薄白湿苔。	太阴病。	气血三内关公孙肾源三行间太冲(B)。 苓桂姜附阿胶汤，茯苓3桂枝3干姜3附子3甘草2阿胶3三七2伸筋草2。	\N	昨日腰痛，湿疹未见明显好转，故停止治疗皮肤，转入腰。	77	2023-02-18 15:30:00	2023-02-23 03:24:25
416	2023-02-17	脉一息四至，舌尖红，舌淡红，薄白湿苔。	太阳病。心肾不交	气血三内关公孙行间太冲(B)肾源三 (L)火针(R)。	\N	腰痛好转，活动度仍未完全恢复	77	2023-02-18 15:31:20	2023-02-23 03:24:36
422	2023-01-08	脉弦数一息四至，舌红。	痛经	气血三内关公孙木针行间太冲(B)下腹五(R)暖宫(L)。 桂枝3当归3赤芍3白芍3艾叶2细辛1炮姜1苏叶2苏梗2木通1。	\N	十天前早晨醒来腰痛，三天后月经来临，小腹绞痛，血块排出，色黑，与过去感觉一样。	66	2023-02-18 15:37:14	2023-02-23 01:47:18
423	2023-01-25	脉沉紧一息四至，舌淡，白湿苔。\t	少阴病，里寒痛经	气血三内关公孙木针行间太冲(B)下腹五(L)暖宫(R)。 桂枝3当归2赤芍1白芍3艾叶2细辛1炮姜2苏叶2苏梗2木通1附子2。	\N	月经已过，腰痛不止，服药无缓解，但手足已开始发热，睡眠好，饮食好，二便调。	66	2023-02-18 15:38:19	2023-02-23 01:47:33
424	2023-02-01	脉仍沉，一息四至，舌淡，白湿苔。	少阴病，热入血室	气血三内关公孙木针行间太冲 (B)下腹五(R)暖宫(L)。 桂枝3当归2赤芍1白芍3艾叶2细辛1炮姜2苏叶2苏梗2木通1附子2。	\N	服中药后腰痛逐渐消失，手足发热，睡眠好，饮食好，二便调。	66	2023-02-18 15:39:20	2023-02-23 01:47:47
425	2023-02-08	脉弦沉，一息四至，舌淡，湿苔。	少阴病，热入血室	气血三内关公孙木针行间太冲(B)下腹五(R)暖宫(L)。 桂枝3当归2赤芍1白芍3艾叶2细辛1炮姜2苏叶2苏梗2木通1附子2。	\N	月经应该三曰后来，但已经有痉挛性腹痛和腰腿痛，手足温。	66	2023-02-18 15:40:05	2023-02-23 01:48:02
426	2023-02-15	脉沉，一息四至，舌淡，湿苔。	少阴病，热入血室	气血三内关公孙木针行间太冲(B)下腹五(R)暖宫(L)。 桂枝3当归2赤芍1白芍3艾叶2细辛1炮姜2苏叶2苏梗2木通1附子2。	\N	月经两日前来临，但第二天晚上才感觉下腹疼痛，考虑不注意保暖引起。	66	2023-02-18 15:40:47	2023-02-23 01:48:21
433	2023-01-24	脉沉细，一息四至，舌淡白苔。无但欲寐，然而却不能寐	少阴病，身体痛，手足寒，骨节痛，脉沉者，附子汤主之。	气血三中渚后溪肾源三行间太冲(B)。 附子汤：附子5茯苓3党参2白术4白芍3补骨脂2地龙1全蝎1。	\N	长期颈痛。今日引起头痛，经常引起手指麻。身痛，手足寒，失眠，食欲佳，二便调。	74	2023-02-18 15:50:53	2023-02-23 01:54:24
463	2023-01-27	脉浮一息四至，舌淡红。	外伤腰痛	气血三中渚后溪肾源三行间太冲(B)。	\N	腰痛减轻，活动自如	68	2023-02-18 16:14:49	2023-02-23 02:08:20
431	2023-01-30	脉浮数紧，一息四至，舌质暗红，齿痕，薄苔。	太阳病，风热感冒，内有郁热。	气血三内关公孙金针行间太冲 (B)小同步。 银翘散，连翘10银花10桔梗6薄荷6竹叶4甘草5荆芥4淡豆豉5牛蒡子6。	\N	受凉感冒一天。昨天从迈阿密回纽约受凉感冒，头痛鼻塞流清鼻涕，打喷嚏。无身痛食欲二便无影响。	83	2023-02-18 15:48:23	2023-02-23 02:26:27
432	2023-02-01	脉大浮数紧，一息四至，舌质暗红，齿痕，薄苔。	太阳病，风热感冒，内有郁热，脉大则正气足	气血三列缺照海金针行间太冲(B)小同步。	\N	症状减轻，昨晚感觉最好，鼻塞减轻，流清涕减少，身痛头痛减轻。	83	2023-02-18 15:49:17	2023-02-23 02:26:38
420	2023-02-10	脉弦一息四至，舌有齿痕，色淡薄苔。	里热气虚，热深厥深	气血三内关公孙木针行间太冲 (B)下腹五(L)暖宫(R)。 加味逍遥散，柴胡3白芍3白术3当归3茯苓3薄荷1炙甘草1炮姜2栀子1丹皮1。	\N	自开始治疗以来体重下降缓慢，食欲好，疲劳，睡眠质量好。大便正常，月经规律，无痛经及丘块。无恶心口苦咽干。手足寒。	51	2023-02-18 15:35:10	2023-02-23 02:44:01
439	2023-01-02	脉一息四至，舌淡红。	虚痨，嗅觉味觉丧失，隆胸术后。	气血三内关公孙木针行间太冲(B)。\r\n归脾汤 21（12/30/22）	\N	味觉嗅觉缓慢恢复，现每天都有感觉。胸部手术后疼痛减轻。	40	2023-02-18 15:55:28	2023-02-23 02:51:11
448	2023-02-11	脉沉一息四至，舌淡。	虚痨，风寒湿痺，颈肩痛。	气血三中渚后溪肾源三行间太冲(B)。	\N	右肩与左肩好转，上背痛。耳鸣无变化。	39	2023-02-18 16:02:16	2023-02-23 02:50:17
434	2023-02-02	脉浮缓有力，一息四至，舌红黄薄苔	太阳病，颈部神经压迫。中风先兆？	气血三中渚后溪肾源三行间太冲(B)。 桂枝汤加味，桂枝3白芍3生姜3大枣2炙甘草2防风2葛根4伸筋草2。	\N	患者是一按摩师，最近工作繁忙，双手发麻，颈部活动度受限。睡眠饮食二便好，口渴无异常出汗	86	2023-02-18 15:51:59	2023-02-23 02:59:28
435	2023-02-04	脉浮缓有力，一息四至，左寸浮。舌红薄苔	太阳病，颈部神经压迫。中风先兆？	气血三中渚后溪肾源三行间太冲(B)。	\N	颈肩部放松，但右上肢肌肉酸痛有硬结。睡眠质量差，左 hamstring痛	86	2023-02-18 15:52:38	2023-02-23 02:59:38
436	2023-02-06	脉浮缓有力，一息四至，左寸浮。舌红薄苔	太阳病，颈部神经压迫。中风先兆？	气血三中渚后溪肾源三行间太冲(B)。	\N	右上肢肌肉酸痛有硬结放松，左 hamstring痛减轻	86	2023-02-18 15:53:00	2023-02-23 02:59:45
438	2023-02-14	脉浮缓有力，一息四至，左寸浮。舌红薄苔	太阳病，肌肉劳损	气血三中渚后溪肾源三行间太冲(B)。	\N	右手有烧灼感，左腿放松	86	2023-02-18 15:54:18	2023-02-23 02:59:55
437	2023-02-11	脉浮缓有力，一息四至，左寸浮。舌红薄苔	太阳病，颈部神经压迫。中风先兆？	气血三中渚后溪肾源三行间太冲(B)。 桂枝汤加味，桂枝3白芍3生姜3大枣2炙甘草2防风2川牛膝2三七2伸筋草2。	\N	右手肌肉放松，左 hamstring痛减轻	86	2023-02-18 15:53:34	2023-02-23 03:00:07
427	2023-02-09	脉浮数无力，一息五至，舌胖，白干苔	太阳病，风瘟伤寒，俗称大头瘟	气血三后溪内关公孙金针行间太冲(B)小同步。 普济消毒饮子，黄芩15黄连15橘红6玄参6甘草6连翘3牛蒡子3板兰根3马勃3僵蚕2.1升麻2.1柴胡6桔梗6	\N	咋日傍晚忽然面部发热红肿，伴恶风鼻塞头痛，口渴欲饮，小便徽微黄，大便正常，失眠。颈左膝右踝痛数周	99	2023-02-18 15:42:46	2023-02-23 03:10:57
428	2023-02-11	脉浮数无力，一息五至，舌胖，白干苔	太阳病，风瘟伤寒	气血三后溪内关公孙金针行间太冲耳尖放血(B)。	\N	面部仍肿，呼吸无障碍	99	2023-02-18 15:43:30	2023-02-23 03:11:13
429	2023-02-14	脉紧，一息五至，舌胖，白干苔	太阳病，风瘟伤寒	气血三后溪中渚木针膝五针行间太冲(B)小同步。	\N	面部大部分消肿，色黑	99	2023-02-18 15:44:07	2023-02-23 03:11:26
430	2023-02-16	脉紧，一息五至，舌胖，白干苔	太阳病，风瘟伤寒	气血三后溪中渚行间太冲(B)木针(L)金针 (R)小同步。	\N	面部大部分消肿，色黑，右足跟痛左膝痛	99	2023-02-18 15:44:34	2023-02-23 03:11:57
450	2023-01-02	脉浮数一息五至，舌红薄苔。	风温伤寒，武汉病毒阴性。	 气血三内关公孙后溪金针行间太冲(B)。 银翘散，金银花10连翘10桔梗6薄荷6竹叶4甘草4荆芥4淡豆豉4牛蒡子6。	\N	三日前得流感发烧，昨夜温度102度，乏力，身痛头痛颈痛咽痛，无咳嗽。	23	2023-02-18 16:04:32	2023-02-18 16:04:32
451	2023-01-04	脉不浮数，一息四至，舌淡红。	风温伤寒	 气血三内关公孙金针行间太冲(B)。 维持原方。	\N	烧已退，无咽痛，无身痛头痛颈痛。鼻塞轻，轻咳嗽，无痰。	23	2023-02-18 16:05:19	2023-02-18 16:05:19
452	2023-01-07	脉不浮数，一息四至，舌淡红。	风温伤寒	 气血三内关公孙金针行间太冲(B)。 维持原方。	\N	无咽痛，颈肩痛。鼻塞轻，脉不浮数，一息四至，舌淡红。	23	2023-02-18 16:06:04	2023-02-18 16:06:04
453	2023-01-10	脉一息四至，舌淡红。	风温伤寒风温伤寒，恢复。	 气血三内关公孙肾源三行间太冲(B)。 香砂六君子汤21收工：党参3白术6获苓6甘草2陈皮3半夏3砂仁2木香2。	\N	无咽痛，鼻塞轻，精神恢复。	23	2023-02-18 16:07:02	2023-02-18 16:07:02
454	2023-01-07	脉浮弦，一息四至，舌淡红薄苔。	肝气郁结，心气虚。	 气血三内关公孙木针行间太冲(B)。 加味逍遥散，柴胡3白术3白芍3当归3茯苓3炙甘草1.5炮姜1.5薄荷1山栀1丹皮1。	\N	昨天发脾气，睡眠好饮食好，但血糖不稳定，时有心悸。	36	2023-02-18 16:08:21	2023-02-18 16:08:21
198	2023-01-03	舌红少苔，脉一息四至，沉无力。	少阴病，肾虚腰痛	苓桂姜附阿胶汤加味，茯苓3桂枝3干姜3附子3甘草2阿胶3当归2党参2。 气血三中渚后溪肾源三行间太冲 (B)。	\N	腰痛减轻。	16	2023-02-18 00:00:14	2023-02-22 02:11:20
456	2023-02-15	脉浮紧弦一息四至，舌淡红薄苔。	太阳病，肝气郁结	气血三中渚后溪木针行间太冲，屏尖放血(B)。 加味逍遥散，柴胡2当归2白芍2白术2茯苓2甘草1薄荷1炮姜2栀子2丹皮2川芎1酸枣仁1麦冬1。	\N	长期工作紧张，每周头痛两次，胆固醇高，血压正常	108	2023-02-18 16:10:25	2023-02-22 02:25:28
457	2023-01-10	脉一息四至，左尺浮硬。	外伤腰痛	气血三中渚后溪肾源三行间太冲(B)。 患者拒服中药。	\N	长期腰痛，一周前腰痛发作，不能转侧俯仰。	68	2023-02-18 16:11:37	2023-02-23 02:07:26
458	2023-01-13	脉一息四至，左尺浮。	外伤腰痛	气血三中渚后溪肾源三行间太冲(B)。 患者拒服中药。	\N	腰痛减轻，现左侧腰痛甚于右侧，开始可以转侧俯仰。	68	2023-02-18 16:12:07	2023-02-23 02:07:36
459	2023-01-16	脉一息四至，左尺浮，舌淡红。	外伤腰痛	气血三中渚后溪肾源三行间太冲(B)。 苓桂姜附阿胶汤加味：茯苓3桂枝3干姜3附子3甘草2阿胶3威灵仙2川牛膝2。	\N	腰痛，现腰痛甚于右侧，开始可以转侧俯仰。今日要求服中药。	68	2023-02-18 16:12:56	2023-02-23 02:07:52
460	2023-01-18	脉一息四至，舌淡红。	外伤腰痛	气血三中渚后溪肾源三行间太冲(B)。	\N	服中药后，昨日腰痛显著减轻，可以转侧俯仰。	68	2023-02-18 16:13:40	2023-02-23 02:08:00
461	2023-01-20	脉浮一息四至，舌淡红。	外伤腰痛	气血三中渚后溪肾源三行间太冲(B)。	\N	腰痛继续减轻，但不能坐立时间长	68	2023-02-18 16:14:10	2023-02-23 02:08:07
462	2023-01-23	脉浮一息四至，舌淡红。	外伤腰痛	气血三中渚后溪肾源三行间太冲(B)。	\N	腰痛继续减轻，活动自如	68	2023-02-18 16:14:31	2023-02-23 02:08:15
444	2023-01-02	脉沉一息四至，舌淡。	虚痨，风寒湿痺，肩颈痛，耳鸣	气血三中渚后溪肾源三行间太冲(B)。 桂枝汤加味，桂枝3白芍3生姜3大枣2炙甘草2防风2伸筋草2葛根4	\N	右肩颈痛，耳鸣多年。	39	2023-02-18 15:59:29	2023-02-23 02:49:24
445	2023-01-11	脉沉一息四至，舌淡。	虚痨，风寒湿痺，颈肩痛。	气血三中渚后溪肾源三行间太冲(B)。	\N	右肩显著好转，过去弹钢琴15分钟左右肩痛，现在一小时，颈痛完全缓解。耳鸣无变化。	39	2023-02-18 16:00:18	2023-02-23 02:49:38
446	2023-01-18	脉沉一息四至，舌淡。	虚痨，风寒湿痺，颈肩痛。	气血三中渚后溪肾源三行间太冲(B)。 桂枝汤加味，桂枝3白芍3生姜3大枣2炙甘草2防风2伸筋草2补骨脂2羌活2。	\N	右肩好转，左肩痛，颈痛完全缓解。耳鸣无变化。	39	2023-02-18 16:00:47	2023-02-23 02:49:48
447	2023-01-28	脉沉一息四至，舌淡。	虚痨，风寒湿痺，颈肩痛。	气血三中渚后溪肾源木针太冲耳门(B)。	\N	疼痛减轻，右肩好转，左肩好转，颈痛完全缓解。耳鸣无变化。	39	2023-02-18 16:01:21	2023-02-23 02:50:07
440	2023-01-11	脉一息四至，舌淡红。	虚痨，嗅觉味觉丧失，隆胸术后。	气血三内关公孙木针行间太冲(B)小同步。 越菊丸：川芎3苍术3神曲3香附3栀子3半夏2瓜蒌2槟榔2。	\N	味觉嗅觉缓慢恢复，感觉anxiety。胸部手术后疼痛减轻。	40	2023-02-18 15:56:01	2023-02-23 02:51:42
441	2023-01-18	脉一息四至，舌淡红。	虚痨，嗅觉味觉丧失，隆胸术后，腰痛膝痛	气血三中渚后溪木针膝五针行间太冲(B)小同步。	\N	味觉嗅觉缓慢恢复，胸部手术后疼痛减轻。腰及左膝痛	40	2023-02-18 15:56:38	2023-02-23 02:51:55
442	2023-01-28	脉一息四至，舌淡红。	虚痨，嗅觉味觉丧失，隆胸术后，腰痛膝痛	气血三中渚后溪木针膝五针行间太冲(B)小同步。 养筋汤加味，白芍3熟地3麦冬3酸枣仁1巴戟天1桂枝2川牛膝2三七2当归2党参2。	\N	味觉嗅觉缓慢恢复，胸部手术后疼痛减轻。锻炼造成腰及左膝痛。	40	2023-02-18 15:57:13	2023-02-23 02:52:11
443	2023-02-11	脉浮一息四至，舌淡红。	虚痨，嗅觉味觉丧失，隆胸术后	气血三内关公孙木针膝五针行间太冲(B)小同步。 丽泽通气汤，黄芪4苍术3羌活3独活3升麻3葛根3防风3炙甘草2川椒1浮萍1白芷1生姜3大枣2葱白2(3/4勺)	\N	味觉嗅觉恢复缓慢，需要改变治疗方向。胸手术部位不痛	40	2023-02-18 15:58:00	2023-02-23 02:52:23
449	2023-02-16	脉浮，一息四至，舌淡胖，白粘苔，舌尖偏左。	太阳中风	气血三中渚后溪肾源三行间太冲(B)。 桂枝汤加味：桂枝3白芍3生姜3大枣2炙甘草2防风2伸筋草2当归2羌活2。	\N	去年十月三十日在左肩注射流感疫苗，一周后左肩痛，引起左臂左颈左上背痛，麻木感放射到左小指。睡眠受影响，饮食二便可。	111	2023-02-18 16:03:29	2023-02-23 03:10:15
484	2023-02-20	脉一息四至，舌红，薄湿苔。	太阴病，脾阳虚	气血三内关公孙木针行间太冲(B)。	\N	自我感觉良好，等待血检	70	2023-02-20 23:17:27	2023-02-20 23:17:27
470	2023-02-18	脉浮，一息四至，舌红白苔	太阳病，风瘟	气血三内关公孙行间太冲(B)木针(L)金针 (R)。	\N	咳嗽减轻	110	2023-02-18 16:56:37	2023-02-22 02:19:28
474	2023-02-18	脉一息四至。舌质暗，薄苔。	脾气虚。	气血三内关公孙金针行间太冲(B)。	\N	过去脱发严重，皮肤科医生在发际线注射激素以减轻炎症。腹胀腹泻好转后加上饮食改变，增加五谷，现脱发现象改变。	53	2023-02-18 17:13:03	2023-02-22 02:45:09
485	2023-02-20	脉一息四至。舌质暗，薄苔。	脾气虚。	气血三内关公孙金针行间太冲(B) 。白术6干姜3炙甘草3党参3天花粉2酸枣仁2石斛2。	\N	脱发停止，进食鸡蛋后无腹胀，但是排便次数增加，便硬	53	2023-02-20 23:18:20	2023-02-22 02:45:21
483	2023-02-20	脉沉一息四至。舌胖暗红，舌尖不偏	虚劳，寒湿腰腿痛	气血三中渚后溪行间太冲(B)木针(L)金针 (R)。肝升肺降 肾着汤，茯苓7干姜7白术3.5甘草3.5。	\N	右腰腿疼痛减轻，但疼痛仍在，用肾着汤原方，附子升提，妨碍肺降？	89	2023-02-20 23:16:21	2023-02-22 02:51:03
481	2023-02-20	脉一息四至，舌淡红。	太阳病	气血三中渚后溪行间太冲(B)木针 (L)金针(R)。 桂枝汤加味：桂枝3白芍3生姜3大枣2炙甘草2葛根2防风2伸筋草2三七2。	\N	右颈痛，麻木感放射到手。腰疼。	60	2023-02-20 23:14:15	2023-02-22 02:54:06
469	2023-02-18	脉紧，一息四至，舌胖湿苔，舌裂纹多齿痕	太阴病，寒湿困脾。	气血三内关公孙排寒五针足三里肾源三行间太冲(B)。	\N	出差多，疲劳，腹胀	34	2023-02-18 16:51:23	2023-02-23 03:52:56
464	2023-02-17	脉细，一息四至，舌红无苔	少阴病，滋肾阴，抑虚火，泻南补北	气血三内关公孙行间太冲(B)木针(L)金针(R)。 黄连3黄芩2阿胶3白芍2百合2合欢皮2麦冬3沙参2当归2	\N	失眠两年，入睡困难，口干津少，不能安寐，饮水多则小便频。饮食二便可	120	2023-02-18 16:16:55	2023-02-23 01:39:20
320	2023-01-26	脉一息四至，舌淡红薄苔	太阳病，太阳中风。	气血三中渚后溪肾源三行间太冲(B)。	\N	腰痛一周，几乎无活动受限	80	2023-02-18 03:26:47	2023-02-23 02:10:26
335	2023-01-31	脉平一息四至，舌淡红。	风寒湿痺	气血三中渚后溪五虎一金针行间太冲(B)。	\N	天气变化对右手影响不大。手指关节水肿减轻。	45	2023-02-18 03:42:35	2023-02-23 02:24:20
471	2023-02-18	脉平一息四至，舌淡红。	风寒湿痺	气血三中渚后溪大结节肾源三行间太冲(B)。	\N	右手无名指关节疼痛减轻，水肿减轻。	45	2023-02-18 16:57:40	2023-02-23 02:25:08
480	2023-02-18	脉沉一息四至，舌胖，舌质暗淡，薄苔	太阴病，脾运化不良。	气血三内关公孙行间太冲(B)木针(L)金针(R)。 理中汤合阿胶麻仁汤：炙甘草3白术3党参3干姜3阿胶2麻仁2当归3生地2。	\N	口干，饮一溲一，消渴。偶尔腹胀，便硬成块，每日一行。手足寒，食欲好，睡眠好，化疗继续	59	2023-02-18 17:31:33	2023-02-23 02:30:22
476	2023-02-02	脉沉弦滑，一息四至，舌质淡嫩，胖，白薄苔。	太阴病，脾不运化，陈寒痼冷	气血三内关公孙木针行间太冲 (B)。 当归四逆加吴茱萸生姜汤加味，当归3桂枝3白芍3细辛3川木通2炙甘草2吴茱萸10生姜8大枣2郁金2合欢花2远志2（1/2勺）	\N	哮喘，呼吸困难无好转，早晨咳嗽有痰，便稀，失去爱犬，情绪低沉，肢冷	75	2023-02-18 17:25:02	2023-02-23 03:05:34
477	2023-02-06	脉弦滑，一息四至，舌质淡嫩，胖，白薄苔。	太阴病，脾不运化，陈寒痼冷	气血三内关公孙木针行间太冲(B)。	\N	呼吸好转，早晨咳嗽有痰，便稀减轻，情绪低沉，手足发热	75	2023-02-18 17:25:39	2023-02-23 03:05:47
478	2023-02-09	脉浮滑，一息四至，舌质淡嫩，胖，白薄苔。	太阴病，开始热化，换方	气血三内关公孙木针行间太冲(B)。 越鞠丸加味，苍术3川芎3香附3栀子3神曲3半夏2瓜萎2郁金2。	\N	自我感觉良好，故今晨出去跑步，但很快便呼吸困难，大便成形，粘液增加，小便黄，手足开始发热	75	2023-02-18 17:26:18	2023-02-23 03:05:57
479	2023-02-15	脉沉，一息四至，舌质淡，白苔减少。	太阴病，理中四逆辈	气血三内关公孙火针行间太冲(B)。 理中汤合焦三仙，白术3干姜3党参3炙甘草3山楂2神曲2麦芽2木香2砂仁1。	\N	手足寒以指头为甚，大便偶有下利，腹部满胀	75	2023-02-18 17:27:03	2023-02-23 03:06:08
473	2023-02-18	脉沉无力，一息四至，舌尖偏右，舌淡	虚劳便秘，肾虚腰痛	气血三中渚后溪行间太冲(B)木针(L)金针(R)。 阿胶3麻仁3当归3茯苓3桂枝3干姜3附子1甘草2。	\N	腰痛，前倾十多年不能伸直。便秘多年，每周一行。	121	2023-02-18 17:03:47	2023-02-23 03:49:50
472	2023-02-18	脉一息四至，舌淡薄苔，舌尖偏左\t	虚痨	气血三中渚后溪肾源三行间太冲(B)。 2x补中益气汤21，黄芪6当归3党参3白术3炙甘草1.5陈皮1.5升麻1柴胡1生姜3大枣3。	\N	打鼾减轻，膝踝关节不痛，不需要戴护膝护踝，腰痛早晨甚。	58	2023-02-18 17:02:15	2023-02-23 03:50:33
468	2023-02-18	脉沉一息四至，舌淡，舌尖偏右	虚劳，肝升肺降	气血三中渚后溪行间太冲(B)木针(L)金针 (R)。	\N	右膝运动后水肿，左眼睫麦粒肿，左肩痛	106	2023-02-18 16:50:15	2023-02-23 03:54:29
467	2023-02-18			2x桂枝3当归3白芍3赤芍3艾叶2细辛1炮姜1苏叶2苏梗2川木通1。	\N	取药	57	2023-02-18 16:49:05	2023-02-23 03:55:46
466	2023-02-18	脉紧一息四至，舌淡红胖。舌尖偏左	保健	气血三内关公孙木针行间太冲(B)。	\N	过去一周旅行出差，疲劳，睡眠尚可	56	2023-02-18 16:47:57	2023-02-23 03:57:27
489	2023-02-20	脉沉细，一息四至，舌淡白苔	少阴病，肺不降	气血三中渚后溪行间太冲(B)木针五虎四五(L)金针(R)。 肾着汤加味：茯苓4干姜4白术2甘草2 川牛膝2桂枝2三七2补骨脂2细辛1	\N	十日前右足跟痛，早晨严重	122	2023-02-20 23:25:18	2023-02-20 23:25:18
491	2023-02-20	脉弦浮，一息四至，舌瘦淡白苔	少阳病，肝气郁结	气血三内关公孙木针行间大冲 (B)。小柴胡汤：柴胡8黄芩3半夏3生姜2大枣2党参2炙甘草2	\N	去南美一月一日返回，鼻寒，影响睡眠，恶心自汗盗汗，食欲减退，口苦咽干，胸胁苦满，精神紧张。	124	2023-02-20 23:32:34	2023-02-20 23:32:34
490	2023-02-20	脉沉弦，一息四至，舌尖边红，白薄苔	太阴病，枢机不畅	气血三内关公孙行间太冲(B)木针(L)金针(R)小同步。 逍遙散加味：柴胡3白芍3白术3当归3茯苓3薄荷1甘草1炮姜2山栀1丹皮1。	\N	一月份得流感后，鼻塞，胸胁胀满，口苦咽干，大便排不尽，无食欲，头晕目眩。	123	2023-02-20 23:29:47	2023-02-20 23:34:54
493	2023-02-21	脉紧弦一息四至，舌淡红薄苔。	太阳病，肝气郁结	气血三中渚后溪木针行间太冲(B)。	\N	腰疼颈疼头痛，治疗后好转。胆固醇高	108	2023-02-22 01:37:04	2023-02-22 01:37:04
494	2023-02-21	脉沉，一息四至，舌尖偏右，舌淡白苔	虚劳，少阴里寒	气血三中渚后溪肾源三行间太冲(B)。	\N	治疗后颈痛减轻，鼻塞，睡眠饮食二便可	107	2023-02-22 01:39:29	2023-02-22 01:39:29
222	2023-02-16	脉一息四至，关脉浮滑大，舌淡红薄苔	阳明病，脾虚胃实	气血三中渚后溪五虎一行间太冲(B)归脾丸(L)金针 (R) （脾升肺降）。 厚朴七物汤：厚朴8甘草3大黄3大枣1枳实5桂枝2生姜5(3/4勺)。	\N	便秘，靠泻药方便十年，常前硬后溏，腹胀屁多。饮食二便可，小便黄。颈痛僵硬，右中指 tiger finger	109	2023-02-18 01:59:29	2023-02-22 01:41:58
496	2023-02-21	脉浮一息四至，舌淡湿苔。	少阴病，痿证，膀胱无力，下肢萎软	气血三内关公孙肾源三足三里行间太冲排寒五针(B)后溪(L)。	\N	可以自行排尿，但膀胱无感觉，右肘痛。	115	2023-02-22 01:47:35	2023-02-22 01:47:35
465	2023-02-17	脉浮一息四至，舌淡湿苔，舌裂多。	少阴病，痿证，膀胱无力，下肢萎软	气血三内关公孙肾源三足三里行间太冲排寒五针(B)。 猪苓汤加吴茱萸生姜，猪苓3茯苓3泽泻3滑石3阿胶3吴茱萸3生姜3	\N	排尿困难未见改变，手足寒	115	2023-02-18 16:43:05	2023-02-22 01:48:16
68	2023-01-09	脉沉缓无力一息四至，舌淡。	少阴病，痿证，膀胱无力，下肢无力	五淋汤加味：茯苓6白芍4栀子4当归3甘草3灯心草1荆芥1香附1麦芽1。 气血三内关公孙肾源三足三里行间太冲排寒五针(B)。	\N	膀胱无力，尿失禁，诊断为前列腺增生。腰痛，足末梢神经炎多年。2022年12月29日在西奈山医院作了前列腺手术无帮助。	115	2023-02-17 19:08:34	2023-02-22 01:50:13
97	2023-02-21	脉紧弦一息四至，舌淡胖白湿苔。\t	肾阳虚	气血三针中渚后溪肾源三行间太冲(B)。 肾着汤合芍药甘草汤：茯苓4干姜4白术2炙甘草2白芍7附子2。	\N	腰痛向双腿放射，右侧重	10	2023-02-17 22:22:54	2023-02-22 01:57:10
497	2023-02-06	脉沉一息四至，舌淡胖白湿苔。	肾阳虚	气血三针中渚后溪肾源三行间太冲(B)小同步。 苓桂姜附阿胶汤加味：茯苓3桂枝3干姜3附子3甘草2阿胶3川牛膝2三七2。	\N	面瘫加重，耳鸣，腰痛腿痛，小便频数。	10	2023-02-22 01:56:15	2023-02-22 01:57:35
94	2023-01-10	脉一息四至，舌淡胖白湿胎。	肾阳虚	1、苓桂姜附阿胶汤加味：茯苓3桂枝3干姜3附子3甘草2阿胶3川牛膝2三七2。2、五淋汤加味：茯苓6白芍4山栀子4当归2甘草2灯心草1荆芥1香附1麦芽1。气血三针内关公孙排寒五针肾源三行间太冲(B)。	\N	腰痛腿痛减轻，小便频数好转，	10	2023-02-17 22:20:48	2023-02-22 01:58:27
140	2023-02-08	脉沉细，一息四至，舌淡，白薄苔。	少阴病，肝家虚火旺，故上眼脸跳动。逍遥散开少阴之枢，泄虚火于外	气血三内关公孙木针行间太冲(B)。 加味逍遥散，柴期3白术3白芍3当归3茯苓3炙甘草1.5炮姜1.5薄荷1丹皮1栀子1	\N	2016年面瘫。当时生孩子面临生活压力。现面部右侧皱纹浅，影响最大的是右上眼脸不白主跳动。长期睡眠不足，常腰痛，声音嘶哑，手足寒饮食二便规律。	97	2023-02-17 23:04:03	2023-02-22 02:00:38
499	2023-02-21	脉沉弦一息四至，舌淡边红白苔	少阴病，枢机不畅	气血三中渚后溪行间太冲(B)木针(L)金针(R)。 加味逍遥散：柴胡3当归3白芍3白术3茯苓3炮姜2薄荷1甘草1栀子1丹皮1。	\N	数月前家人诊断为肺癌，精神压力大，左肩右背痛，长期睡眠不足，饮食二便可	125	2023-02-22 02:03:56	2023-02-22 02:03:56
500	2023-02-21	脉浮一息四至，舌面布满短且深之裂纹，舌淡胖	太阴病，脾虚	气血三中渚后溪肾源三行间太冲 (B)。 桂枝加芍药汤加味：桂枝3白芍6生姜3大枣2炙甘草2防风2三七2伸筋草2。	\N	右腕痛两周，过去曾经受伤，以肌腱为甚，左腰痛，食欲差，不吃早餐，减肥困难。睡眠二便可。	126	2023-02-22 02:06:59	2023-02-22 02:06:59
501	2023-02-21	脉沉弦一息四至，舌淡白薄苔，舌红边齿痕	少阴病，枢机不畅，肺气不降	气血三内关公孙行间太冲(B)木针(L)金针(R)小同步。肝升肺降。 加味逍遥散，柴期3白术3白芍3当归3茯苓3炙甘草1.5炮姜1.5薄荷1丹皮1栀子1。	\N	过去三天囗苦咽干，头痛，右侧鼻塞，胸胁苦满，嘿嘿不思饮食，睡眠不足，二便可	127	2023-02-22 02:10:33	2023-02-22 02:10:33
487	2023-02-20	脉一息四至，关脉浮滑大，舌淡红薄苔	阳明病，脾虚胃实，不可以虎狼药攻之，不可再用大黄。	气血三支沟照海行间太冲(B)针(L)金针 (R) （脾升肺降）。 蜜煎导	\N	便秘，治疗后未排便，腹不胀。饮食二便可，小便清。颈痛僵硬，右中指 tiger finger	109	2023-02-20 23:20:54	2023-02-25 02:36:37
495	2023-02-21	脉沉，一息四至，舌暗红。	少阴病，肝不养筋	养筋汤加味：白芍3熟地3麦冬3酸枣仁1巴戟天1桂枝2川牛膝2三七2补骨脂2独活2。 气血三内关公孙木针膝五针行间太冲(B)。	\N	膝关节痛，饮食规律，二便调。补肝养筋不宜与疏肝同用。	46	2023-02-22 01:46:11	2023-02-23 01:40:18
488	2023-02-20	脉沉一息四至，舌淡薄苔	太阴病。腹满时痛	气血三中渚后溪行间太冲(B)木针(L)金针(R)。 桂枝加芍药汤，桂枝3白芍6生姜3大枣2炙甘草2瓜蒌子2麻仁2当归2。	\N	腹胀腰痛重如带重物，便秘略好转。	54	2023-02-20 23:22:07	2023-02-23 04:00:32
502	2023-02-21	脉沉一息四至，舌淡薄苔	少阴病，枢机不利	气血三内关公孙木针行间太冲(B)。	\N	血压正常，右手抖无力，但近期未加重，二便饮食睡眠无异常。	16	2023-02-22 02:13:01	2023-02-22 02:13:01
504	2023-02-21	脉浮，一息四至，舌红白苔	太阳病，风瘟	气血三内关公孙行间太冲(B)木针(L)金针(R)。	\N	嗅觉味觉消失。鼻不闻香臭者可用丽泽通气汤。	110	2023-02-22 02:19:01	2023-02-22 02:19:01
307	2023-02-16	脉浮数紧，一息五至，舌红黄厚苔	太阳病，风瘟	气血三内关公孙金针行间太冲(B)。 清气化痰丸：陈皮2杏仁2枳实2黄芩2瓜蒌子2茯苓2胆南星3半夏3。	\N	感冒四天，昨天晚上咳嗽，吐黄痰，口渴，睡眠差二便可	110	2023-02-18 03:15:37	2023-02-22 02:19:19
505	2023-02-16	脉浮一息四至，舌淡薄苔	太阳病，寒湿阻络\t	气血三中渚后溪肾源三行间太冲 (B)。 精枝汤加味：桂枝3白芍3生姜3大枣2炙甘草2防风2伸筋草2当归2三七2。	\N	左肩颈痛二月余。精神压力大，睡眠质量差，饮食二便可	112	2023-02-22 02:20:19	2023-02-22 02:20:19
360	2023-02-21	脉一息四至，舌淡薄苔	太阳病，寒湿阻络\t	气血三中渚后溪行间太冲(B)木针(L)金针(R)。	\N	左肩痛减轻，肝气不升	112	2023-02-18 14:43:21	2023-02-22 02:21:01
367	2023-02-03	脉一息四至，舌淡红	太阳病，寒凝肌肉	气血三中渚后溪肾源三行间太冲(B)。 茯苓4干姜4白术2川牛膝2威灵仙2防风2伸筋草2当归3。	\N	三周前摔跤，左大腿受伤，现有腰痛。	88	2023-02-18 14:50:15	2023-02-22 02:21:44
506	2023-02-21	脉浮，一息四至，舌淡红	太阳病，寒凝肌肉	气血三中渚后溪肾源三行间太冲(B)。 白芍7炙甘草2附子2川牛膝2三七2伸筋草2防风2独活2。	\N	左Hamstring仍痛	88	2023-02-22 02:22:43	2023-02-22 02:22:43
507	2023-02-21	脉紧，一息五至，舌胖，白干苔	太阳病，肝气不升肺气不降	气血三后溪中渚行间太冲(B)木针(L)金针 (R)。 加味逍遥散：柴胡3当归3白芍3白术3茯苓3炮姜2甘草1薄荷1栀子1丹皮1。	\N	面部消肿，右足跟痛左膝痛	99	2023-02-22 02:24:04	2023-02-22 02:24:04
455	2023-02-15	脉沉，一息四至，舌尖偏右，舌淡白苔	虚劳，少阴里寒	气血三中渚后溪肾源三行间太冲(B)。桂枝汤加味：桂枝3白芍3生姜3大枣2炙甘草2防风2伸筋草2葛根4	\N	颈痛四年，牙医工作使他长期处于疲劳状态，睡眠饮食二便可	107	2023-02-18 16:09:27	2023-02-22 02:24:53
165	2023-01-18	阳脉浮弦数，一息五至，咽红，舌红薄苔。	风热感冒	气血三中渚后溪列缺照海木针行间太冲(B)。 银翘散21，连翘10银花10桔梗6薄荷6竹叶4甘草5荆芥4淡豆豉5牛蒡子6。	\N	咽痛三天，颈痛，头痛，失眠质量好，二便调。昨夜出汗。	118	2023-02-17 23:33:54	2023-02-22 02:39:30
125	2023-01-23	脉沉紧一息四至，舌淡湿苔。	太阴病，脾阳虚	气血三内关公孙木针行间太冲(B)。 附子理中汤合桂枝汤，白术3党参3干姜3炙甘草3桂枝3白芍3附子2伸筋草2。	\N	过去三年血小板量每年递减，便稀，纳差，腹胀，手足寒，乏力。一年前月经量大，经期准。两月前诊断为免疫性血小板减少症 immune Thrombocytopenia 左肘右上臂痛一周。	70	2023-02-17 22:50:41	2023-02-22 02:47:33
62	2023-02-03	脉沉，一息四至。舌胖暗红，伸舌尖偏左	虚劳，腰痛	气血三内关公孙肾源三行间太冲(B)。 理中汤合肾着汤，白术3党参3干姜3炙甘草3茯苓3百合3合欢皮3	\N	右腰腿痛两年，服西药减肥，伸舌偏左	89	2023-02-17 19:04:03	2023-02-22 02:49:27
508	2023-02-22	脉浮一息四至，舌边红，白苔。	术后恢复	气血三中渚后溪金针行间太冲(B)。 理中汤加味：党参3炙甘草3白术3干姜3白芷2桔梗2当归2三七2	\N	今天做了根管治疗	76	2023-02-23 01:28:46	2023-02-23 01:28:46
509	2023-02-22	脉一息四至，舌红薄苔。	太阳病，风热感冒，肝不升	气血三中渚后溪內关公孙行间太冲(B)木针(L)金针(R)。 辨证录加味逍遥散：柴胡2当归3白术2陈皮0.5甘草1黄芩1茯苓2白芍3白芷1桔梗3半夏1。	\N	流感恢复，现只有左侧鼻道不通，颈痛。	118	2023-02-23 01:30:45	2023-02-23 01:30:45
510	2023-02-22	脉沉细，一息四至，舌淡白苔	少阴病，肾虚，补肾助肝益心	气血三中渚后溪肾源三行间太冲(B)木针(L)火针(R)。	\N	右足跟疼痛减轻	122	2023-02-23 01:31:53	2023-02-23 01:31:53
511	2023-02-22	脉浮滑，一息四至，舌淡红薄苔	太阳病，腰痛	气血三中渚后溪肾源三行间太冲(B)木针(L)火针(R)。 苓桂姜附阿胶汤：茯苓3干姜3桂枝3附子3甘草2阿胶3白术2当归2。	\N	腰痛多年，现在警校训练，运动加剧疼痛，睡眠食欲二便可。	128	2023-02-23 01:34:15	2023-02-23 01:34:15
512	2023-02-22	脉浮滑，一息四至，舌淡裂纹多	太阳病，癃闭，宣肺导热下行	气血三内关公孙肾源三足三里排寒五行间太冲(B)。 苏叶2杏仁3淡豆豉4栀子2党参2茯苓3黄芪3白术2。	\N	二十一天前右膝手术造成无法排尿，现靠导尿管维持。呼吸短促，咽干口燥，口渴欲饮	129	2023-02-23 01:37:44	2023-02-23 01:37:44
513	2023-02-22	脉细，一息四至，舌红无苔	少阴病，滋肾阴	气血三内关公孙金针行间太冲(B)。	\N	睡眠好转，精神好转，体力好	120	2023-02-23 01:38:50	2023-02-23 01:38:50
492	2023-02-20	脉细，一息四至，舌红无苔	少阴病，滋肾阴	气血三内关公孙木针行间太冲(B)。	\N	第二天开始睡眠好转	120	2023-02-20 23:34:10	2023-02-23 01:39:07
39	2023-01-10	脉沉缓有力，一息四至，舌暗红。	郁热于内，阳气不能外达，还可用四逆散。	养筋汤加味：白芍3熟地3麦冬3酸枣仁1巴戟天1补骨脂2杜仲1芡实1白术2肉苁蓉2附子2。 气血三内关公孙木针膝五针行间太冲 (B)。	\N	患者2021年3月20号以左膝痛，四末不温，性功能障碍为主要为主诉开始治疗。经这段时间治疗，现均有好转。	46	2023-02-17 18:42:06	2023-02-23 01:41:11
421	2023-01-04	ROM好，脉弦一息四至，舌淡红薄苔。	血瘀腰痛	气血三中渚后溪木针行间太冲(B)。 苓桂姜附阿胶汤+活血化淤，茯苓3桂枝3干姜3附子3甘草2阿胶3桃仁1红花1川芎1丹参1。	\N	腰痛显著减轻，过去不能久站久坐，现仅在傍晚感觉腰痛。	66	2023-02-18 15:36:22	2023-02-23 01:47:05
273	2023-01-16	左肘腕关节红肿热痛，活动受限，舌红黄湿苔，脉浮滑数无力。口渴，大便调，小便黄数。	少阴病，风湿热，	桂枝汤加味，桂枝3白芍3生姜3大枣2炙甘草2防风2伸筋草2羌活2白术2。 气血三中渚后溪肾源三行间太冲 (B)。	\N	左肘腕关节炎十余年。读书的时候曾在地下室住过数年，开始是右上肢，后发展到左上肢，现右侧好。	61	2023-02-18 02:45:42	2023-02-23 01:55:48
329	2023-01-02	脉一息四至，舌淡红。	风寒湿痺	气血三中渚后溪大结节肾源三行间太冲(B)。	\N	喜爱钓鱼，双手常暴露在湿冷环境中，久之患指间关节炎，右手甚。经治疗现手足温，关节痛减轻，消肿，阴天关节痛加重。	45	2023-02-18 03:33:23	2023-02-23 02:22:47
252	2023-01-02	脉一息四至，舌淡舌尖红舌苔减少。	痰热扰心	三子养亲汤合二陈汤（12/26），莱菔子2白芥子2紫苏子2半夏2陈皮3茯苓4炙甘草2生姜3。气血三内关公孙木针行间太冲(B)小同步。	\N	乏力减轻，思维加速，睡眠质量好转。脉一息四至，舌淡舌尖红舌苔减少。	42	2023-02-18 02:25:39	2023-02-23 02:31:29
417	2023-01-12	脉一息四至，舌淡胖。	减肥	白虎加人参汤21，石膏16知母6甘草2粳米10党参3。 气血三内关公孙归脾丸行间太冲(B)。	\N	生孩子之前体重140磅，现体重175磅左右，想减肥35到40磅，	51	2023-02-18 15:32:58	2023-02-23 02:43:27
475	2023-01-25	脉浮滑，一息四至，舌质淡嫩，白薄苔。	太阳病，喘，湿寒痰。喘家作桂枝汤，加厚朴杏子佳。	桂枝加厚朴杏子汤，桂枝3白芍3生姜3大枣2炙甘草2厚朴2杏仁1.5茯苓2.5白术2。 气血三内关公孙归脾丸行间太冲(B)。生姜可换成干姜。	\N	一月前家里装修，尘土飞扬。一度出现半夜哮喘，经过清洁尘土，半夜喘消失，但现在锻炼就会喘，血氧饱和度85%。无咳嗽，无感冒。睡眠饮食二遍均无异常。	75	2023-02-18 17:24:16	2023-02-23 03:05:24
244	2023-01-07	脉沉滑，一息四至，舌胖白苔。	寒湿困脾	气血三内关公孙排寒五针足三里肾源三行间太冲(B)。	\N	体胖，睡眠好，但需要起来小便，小便，流量稍慢。	34	2023-02-18 02:16:24	2023-02-23 03:52:15
514	2023-02-23	脉浮弦细，一息四至，舌暗淡，湿苔	少阳病，肝胆湿热下注	气血三木针行间太冲(B)归脾丸(L)火针(R)。 龙胆泻肝汤：龙胆2车前子3川木通3黄芩3栀子3当归1生地3泽泻4柴胡2甘草2。	\N	阴道烧灼感，小便急，白色分泌物渗出，无发热口渴，头痛腹痛，食欲减退，睡眠好	130	2023-02-24 04:03:22	2023-02-24 04:03:22
515	2023-02-24	脉浮一息四至，舌淡湿苔。	少阴病，痿证，膀胱无力，下肢萎软	气血三内关公孙肾源三足三里行间太冲排寒五针(B)后溪(L)。	\N	可以自行排尿至少一半，但仍无尿意，右肘痛。	115	2023-02-25 02:03:24	2023-02-25 02:03:24
516	2023-02-24	脉一息四至，舌淡，白薄苔。	少阳病，补肝助火益脾。	气血三木针行间太冲(B)归脾丸(L)火针(R)。	\N	右眼皮仍跳，但已经放松	97	2023-02-25 02:04:49	2023-02-25 02:04:49
498	2023-02-21	脉沉，一息四至，舌淡，白薄苔。	少阴病	气血三内关公孙行间太冲(B)木针(L)金针(R)。 加味逍遥散：柴期3白术3白芍3当归3茯苓3炙甘草1.5炮姜1.5薄荷1丹皮1栀子1。	\N	右眼皮跳减轻，但仍然感觉眼皮紧张。精种紧张	97	2023-02-22 02:01:34	2023-02-25 02:05:23
517	2023-02-24	脉长一息四至。舌质淡，薄苔。	太阳病，脾气虚。	气血三支沟照海天枢行间太冲(B)肾源三 (L)金针 (R)。 蜜煎导	\N	两天前食用鸡蛋，现便秘	53	2023-02-25 02:06:53	2023-02-25 02:06:53
518	2023-02-24	脉一息四至，舌面布满短且深之裂纹，舌淡胖	太阴病，脾虚，补肝助脾益心。	气血三中渚后溪木针行间太冲(B)归脾丸 (L)火针(R)。	\N	右腕痛显著减轻，腰痛仅在锻炼时，	126	2023-02-25 02:08:42	2023-02-25 02:08:42
519	2023-02-24	脉浮紧，一息四至，舌淡白苔	太阳病，风湿相博，身体疼烦，不能自转侧，补肾助肝益心	气血三中渚后溪肾源三行间太冲(B)木针(L)火针(R)。 桂枝附子汤：桂枝4附子5干姜3大枣2炙甘草2茯苓3白术2。Avoid picking up weights	\N	剧烈腰痛一天，不能平卧，颈痛，腰背肌肉痉挛，转侧不能，	131	2023-02-25 02:11:28	2023-02-25 02:11:28
520	2023-02-24	脉紧，一息四至，舌淡红薄苔	少阳病，补肝助心益脾。	气血三内关公孙木针行间太冲(B)归脾丸(L)火针(R)。 越鞠宝和丸：苍术2抚芎2神曲2香附2栀子1陈皮2半夏2茯苓2 连翘1莱菔子1枳实2白术6黄连2山楂4木香1当归2。	\N	精神紧张，腹痛和膀胱刺激，睡眠尚可，饮食二便好。	47	2023-02-25 02:12:40	2023-02-25 02:12:40
521	2023-02-24	脉一息四至，舌质暗红。舌尖偏左	少阴病，肾着汤证，补肾助肝益心	气血三中渚后溪肾源三行间太冲(B)木针(L)火针 (R)。	\N	右腰痛，颈痛，但运动成绩提高	30	2023-02-25 02:14:41	2023-02-25 02:14:41
211	2023-01-20	左寸豆状脉，伸舌仍稍偏右，一息四至，舌质暗红。	虚劳	气血三中渚后溪火针行间太冲(B)。 炙甘草汤，炙甘草4生姜3党参2生地6桂枝3阿胶2麦冬3麻仁3大枣3(3/4勺)。	\N	昨日心悸发作数次。腰痛减轻，与活动减少有关。	30	2023-02-18 00:11:43	2023-02-25 02:15:41
522	2023-02-24	脉浮，一息四至，舌瘦红薄白苔。	少阴病，补肾助肝益心	气血三肾源三行间太冲(B)木针(L)火针(R)。	\N	下肢水肿渐退，口渴欲饮，甚至夜里饮水3-4次，小便多	92	2023-02-25 02:17:17	2023-02-25 02:17:17
503	2023-02-21	脉不沉有力，一息四至，舌红薄苔。	少阴病，效不更方	气血三内关公孙行间太冲(B)肾源三 (L)火针(R)。 真武汤合二陈汤：茯苓3白芍3生姜3白术2附子3半夏3陈皮3苍术1。	\N	下肢水肿继续消退。口渴欲饮	92	2023-02-22 02:17:39	2023-02-25 02:17:52
227	2023-02-16	脉沉有力，一息四至，舌红薄苔。	少阴病，效不更方	气血三内关公孙行间太冲(B)肾源三 (L)火针(R)。	\N	下肢水肿继续消退。口渴欲饮	92	2023-02-18 02:03:07	2023-02-25 02:18:11
523	2023-02-24	脉沉细，一息四至，舌淡白苔	少阴病，肾虚，补肾助肝益心	气血三肾源三行间太冲(B)木针(L)火针(R)。	\N	右足跟疼痛减轻，起床后足跟无痛	122	2023-02-25 02:19:47	2023-02-25 02:19:47
524	2023-02-24	脉浮，一息四至，舌淡红薄苔	太阳病，腰痛，补肾助肝益心	气血三中渚后溪肾源三行间太冲(B)木针(L)火针(R)。	\N	腰痛减轻	128	2023-02-25 02:21:03	2023-02-25 02:21:03
525	2023-02-24	脉浮滑，一息四至，舌红薄湿苔。	痰热扰心，补心助脾益肺	气血三内关公孙火针行间太冲(B)归脾丸(L)金针(R)。 苍术2川芎2神曲2香附2栀子2陈皮1半夏2茯苓2连翘1莱菔子1枳实2白术6黄连2山楂4木香1当归2 (3/4勺)	\N	无头痛，但仍胸胁苦满，口苦咽干，睡眠好饮食规律二便调	42	2023-02-25 02:22:18	2023-02-25 02:22:18
526	2023-02-24	脉沉细紧，尺脉浮，一息四至，舌胖淡，白苔。	少阴病，补肾助肝益心	气血三中渚后溪学源三行间太冲(B)木针(L)火针(R)。 当归四逆合吴茱萸生姜汤：当归3桂枝3白芍3细辛1炙甘草2川木通2大枣2吴茱萸3生姜2。	\N	去年11月睾丸癌术后化疗造成双足N炎，现双脚趾痛，同时紧张郁闷，影响睡眠饮食，便稀，小便色淡量多。手足寒。	132	2023-02-25 02:25:11	2023-02-25 02:25:11
527	2023-02-24	脉浮数，一息五至，舌红白苔	太阳病，风瘟，补脾助肺益肾。	气血三归脾丸行间太冲(B)肾源三．(L)金针(R)。银翘散11+清气化痰丸10：连翘3银花3桔梗2薄荷2竹叶1甘草2荆芥1淡豆豉2牛榜子2陈皮2杏仁2枳实2黄芩2瓜蒌子2茯苓2南星3半夏3。	\N	咳嗽，早上有黄脓痰，嗅觉味觉均失。	110	2023-02-25 02:26:24	2023-02-25 02:26:24
528	2023-02-24	脉细，一息四至，舌红无苔	少阴病，滋肾阴，补心助脾益肺	气血三火针行间太冲(B)归脾丸(L)金针(R)。	\N	睡眠好转，虽然有时有反复。精神好转，体力好	120	2023-02-25 02:27:30	2023-02-25 02:27:30
529	2023-02-23	脉浮，一息四至，舌暗红薄苔	少阴病，骨关节炎。西医诊断房颤	气血三中渚后溪木针膝五针行间太冲(B)五虎1、2(R)。	\N	右膝关节无痛，左手小指肌腱开始松解	90	2023-02-25 02:31:02	2023-02-25 02:31:02
482	2023-02-20	脉一息四至，舌暗红	少阴病，骨关节炎。西医诊断房颤	气血三中渚后溪木针膝五针行间太冲(B)五虎1、2(R)。 养筋汤：白芍3熟地3麦冬3酸枣仁1巴戟天1桂枝3川牛膝3三七2伸筋草2。	\N	右膝关节偶尔痛，左手肌腱开始松解	90	2023-02-20 23:15:23	2023-02-25 02:31:29
530	2023-02-23	脉滑长，一息四至。舌淡红，舌体胖。	太阴病，脾失运化，泄热通便去腑实	气血三内关公孙归脾丸行间太冲(B)肾源三(L)金针(R)。 竹叶1瓜蒌10薄荷1栀子3黄芩3枳实2大黄1玄明粉1+白虎加人参汤7(3/4勺)。	\N	便秘，三天末解大手，体重不降，食欲好。	13	2023-02-25 02:33:02	2023-02-25 02:33:02
531	2023-02-23	脉一息四至，舌淡边红白苔	少阴病，枢机不畅	气血三木针行间太冲(B)归脾丸(L)金针(R)。	\N	身体放松，睡眠好转，饮食二便可	125	2023-02-25 02:34:22	2023-02-25 02:34:22
532	2023-02-23	脉沉细一息四至，舌淡，舌尖偏右	虚劳，肝虚	气血三木针行间太冲大敦(B)火针(L)归脾丸膝五针(R)。 当归赤豆散合养筋汤：当归4赤小豆4白芍3熟地3麥冬3酸枣仁1巴戟天1菊花1川芎1。	\N	右膝运动后水肿，左眼睫麦粒肿，痔疮。左肩好转。	106	2023-02-25 02:35:30	2023-02-25 02:35:30
533	2023-02-23	脉沉一息四至，关脉滑，舌红少苔	阳明病，养血育阴，润燥通便	气血三支沟照海归脾丸行间太冲(B)肾源三(L)金针(R)。 生地3熟地3当归3赤芍3白芍3肉苁蓉3麻仁3阿胶3桑寄生5(3/4勺)。	\N	已有两次大便，右中指 tiger finger好转，睡眠饮食好	109	2023-02-25 02:36:29	2023-02-25 02:36:29
534	2023-02-23	脉弦，细，一息四至，舌淡胖薄苔	积聚，聚为主，肝气郁滞，缓痛散聚	气血三内关合孙木针行间太冲(B)归脾丸 (L)金针(R)。 柴胡2当归3白芍4木瓜3茯苓3川楝子3青皮3陈皮3炙甘草1牡蛎6石决明6生地3(1/2勺)。	\N	右胁痛，进食后腹胀，无食欲，大便成形，偶有下利，口苦咽干，口渴欲饮，睡眠可	133	2023-02-25 02:39:33	2023-02-25 02:39:33
535	2023-02-23	脉浮，一息四至，舌红，湿苔。	太阳病，骨节痛	气血三中渚后溪肾源三行间太冲(B)木针(L)火针(R)。 芍药甘草汤合肾着汤：白芍7炙甘草2附子2茯苓4干姜4白术2。	\N	足跟痛，颈痛，腰痛	41	2023-02-25 02:40:37	2023-02-25 02:40:37
536	2023-02-23	脉浮，一息四至，舌淡红	太阳病，寒凝肌肉	气血三中渚后溪肾源三行间太冲(B)木针(L)火针(R)。	\N	右大腿痛减轻	88	2023-02-25 02:41:57	2023-02-25 02:41:57
537	2023-02-25	脉浮一息四至，舌边红，白苔。	术后恢复	气血三中渚后溪归脾丸行间太冲(B)肾源三(L)金针(R)。	\N	昨日呕吐清水，牙痛	76	2023-02-26 01:14:23	2023-02-26 01:14:23
538	2023-02-25	脉浮，一息四至，舌暗淡，湿苔	太阳病，肝胆湿热下注，补肝助脾益心。	气血三列缺照海木针行间太冲(B)归脾丸(L)火针(R)。	\N	局部症状改善，烧灼感减轻，白带减少。	130	2023-02-26 01:15:43	2023-02-26 01:15:43
539	2023-02-25	脉浮紧，一息四至，舌胖湿苔	太阴病，湿热困脾。补脾助肺益肾	气血三归脾丸行间太冲(B)肾源三(L)金针 (R)。	\N	腹胀减轻	34	2023-02-26 01:16:13	2023-02-26 01:17:09
540	2023-02-25	脉一息四至，关沉，舌淡红舌尖偏左	虚劳，补肝助脾益心	气血三中渚后溪木针行间太冲(B)归脾丸 (L)火针(R)。 四逆散合理中汤：枳实3白芍3炙甘草3柴胡3党参2白术2干姜2郁金2砂仁1。	\N	痛经腰酸，早晨乏力，情绪低落，大便前干后溏，睡眠饮食好。	134	2023-02-26 01:19:17	2023-02-26 01:19:17
541	2023-02-25	脉沉无力，一息四至，舌尖偏右，舌淡	虚劳便秘，肾虚腰痛，补肾助肝益心	气血三中渚后溪肾源三行间太冲(B)木针(L)金针(R)。 阿胶3麻仁3当归3茯苓3桂枝3干姜3附子1甘草2。	\N	腰仍痛但开始伸直。便秘好转。每周二行。	121	2023-02-26 01:21:55	2023-02-26 01:21:55
542	2023-02-25	脉浮一息四至，舌淡边有齿痕白薄苔	太阳病，风寒湿，补肾助肝益心	气血三中渚后溪肾源三行间太冲(B)木针(L)火针(R)。	\N	左肩仍痛	114	2023-02-26 01:23:03	2023-02-26 01:23:03
\.


--
-- Data for Name: filings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filings (id, describe, regi_id, created_at, updated_at) FROM stdin;
3	Test	60	2023-02-18 23:09:51	2023-02-18 23:09:51
\.


--
-- Data for Name: patients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.patients (id, v_date, m_stat, weight, height, street, city, state, zip, cell, home, work, email, referred, com1, com2, com3, pain_scale, d_lost, d_restd, c_onset, better, worse, o_drs, o_drs_when, pcp_name, hosp, h_when, diag_given, diag_where, aq_b4, aqrist, aq_where, di_list, string, o_dis, inj_surg, med_taken, alcohol, tobacco, last_prd, preg, preg_wks, regi_id, created_at, updated_at, d_onset) FROM stdin;
16	2022-12-20	Single	275.0	5.0	16 Maric Dr	Seymour 	CT	06483	203-449-8256					Lower back pain 	Cramps in feet 	Type II diabetes 	8	\N	\N				No	\N		No	\N			No			{Diabetes,Back/Lower_Back_Pain}	{}						\N	NA	\N	12	2023-02-19 20:19:17	2023-02-19 20:19:17	2021-01-11
17	2023-01-03	Married	165.0	5.0	38 Davis Rd	Fairfield 	CT	06825	646-733-7213					Lower back pain 			8	\N	\N				Yes	\N		No	\N			No			{}	{}						2022-12-19	No	\N	13	2023-02-19 20:23:41	2023-02-19 20:23:41	2010-12-03
18	2023-01-03	Married	231.0	\N	15 Born Hill Rd	Monroe	CT	06468						Right shoulder pain 			8	\N	\N				No	\N		No	\N			No			{}	{}						\N	NA	\N	14	2023-02-19 20:27:19	2023-02-19 20:27:19	\N
19	2023-01-10		\N	\N	58 Lantern Cir	Stamford 	CT	06905		312-622-7055				Lower back pain 				\N	\N				No	\N		No	\N			No			{Back/Lower_Back_Pain}	{}						\N	NA	\N	68	2023-02-20 23:38:43	2023-02-20 23:38:43	\N
20	2023-01-02	Married	118.0	5.5	47 Chatham Dr	Trumbull 	CT	06611	203-258-2460					Dizziness 	Nausea	Tinnitus 		\N	\N				No	\N		No	\N			No			{}	{}						\N	NA	\N	18	2023-02-20 23:41:14	2023-02-20 23:41:14	\N
21	2023-01-11	Married	150.0	5.5	73 Mariam Rd	Fairfield 	CT	06825	617-413-6039					Nausea, vomit 1 day				\N	\N				No	\N		No	\N			No			{Anxiety_Disorder}	{}						\N	NA	\N	49	2023-02-20 23:45:46	2023-02-20 23:45:46	2023-01-10
22	2023-01-11		116.0	5.7	4 Musket Ridge Rd	Wilton 	CT	06897		203-822-3306				Depression 	Suicidal thoughts 		10	\N	\N				No	\N		No	\N			No			{Major_Depression}	{}						\N	NA	\N	50	2023-02-20 23:48:27	2023-02-20 23:48:27	2022-09-22
23	2023-01-10		\N	\N	21 Sandnopper Trail	Westport 	CT	06880		917-239-0547				Skin Rashes 				\N	\N				No	\N		No	\N			No			{}	{}						\N	NA	\N	48	2023-02-20 23:50:42	2023-02-20 23:50:42	\N
24	2023-01-10	Married	119.0	5.5	57 Hickory Dr	New Canaan	CT	06840		203-921-9899	203-323-3060			Lower back pain 				\N	\N				No	\N		No	\N			No			{}	{}						\N	NA	\N	47	2023-02-20 23:53:49	2023-02-20 23:53:49	\N
25	2023-01-10	Married	180.0	5.0	225 Ridgefield Rd	Wilton 	CT	06897		203-834-2565	203-247-1220			R. Knee pain				\N	\N				No	\N		No	\N			No			{Seizure}	{}						\N	NA	\N	46	2023-02-20 23:56:39	2023-02-20 23:56:39	\N
26	2023-01-02		168.0	\N	214 Mans Field Ave	Darien	CT	06820	917-825-2219				Leslie Nolte	Arthritis in fingers 				\N	\N				No	\N	Dr Dorf	No	\N			No			{Cancer}	{}						\N	NA	\N	45	2023-02-20 23:58:45	2023-02-20 23:59:07	\N
27	2023-01-09		172.0	\N	36 Willow Dr	Briarcliff Manest	NY	10510	914-843-5650					Bladder	Neuropathy 			\N	\N				No	\N		No	\N			No			{}	{}						\N	NA	\N	115	2023-02-21 00:01:34	2023-02-21 00:01:34	\N
28	2023-01-04	Married	\N	\N	58 Greenly Rd	New Canaan	CT	06840	203-615-1038	203-966-1878			Pam Wescott	Overall tightness muscles 	Stiffness  neck and shoulders 	Right knee pain 		\N	\N				No	\N		No	\N			No			{Neck_Stiffness,Back/Lower_Back_Pain}	{}						\N	NA	\N	44	2023-02-21 00:03:58	2023-02-21 00:03:58	\N
29	2023-01-02	Married	125.0	\N	5 Red Oak Lane	Norwalk 	CT	06850		203-845-0911				Migraine 	Stomach pain 	Anxiety 		\N	\N				No	\N		No	\N			No			{Neck_Stiffness}	{}						\N	NA	\N	43	2023-02-21 00:06:17	2023-02-21 00:06:17	\N
30	2023-01-02	Single	\N	\N	23 Reservoir Ave	Norwalk 	CT	06850						Back pain 	Neck pain 			\N	\N				No	\N		No	\N			No			{}	{}						\N	NA	\N	41	2023-02-21 00:08:16	2023-02-21 00:08:16	\N
31	2023-01-02	Single	117.0	\N	100 Sunset Rd	Cheshire	CT	06401	914-629-8524					No taste, no smell 	Back pain 			\N	\N				No	\N		No	\N			No			{Neck_Stiffness,Back/Lower_Back_Pain,Major_Depression}	{}				2/week	10/day	\N	No	\N	40	2023-02-21 00:11:02	2023-02-21 00:11:20	2022-11-20
32	2023-01-02	Single	199.0	\N	23 Reservoir Ave 	Norwalk 	CT	06850		203-807-1859				Lower back pain 	Fatigue 			\N	\N				No	\N		No	\N			No			{}	{}						\N	NA	\N	42	2023-02-21 00:13:21	2023-02-21 00:13:21	\N
33	2023-01-02		155.0	\N	33 Maple Dr	New Milford	CT	06776	860-353-2333					Pain in right shoulder 				\N	\N	Years			No	\N		No	\N			No			{Neck_Stiffness,Anxiety_Disorder,Bypolar_Disorder}	{}						\N	NA	\N	39	2023-02-21 00:15:24	2023-02-21 00:15:24	\N
34	2023-01-04	Married	165.0	\N	4 Hilltop Rd	Weston 	CT	06880	203-984-9165					Hypertension , high cholesterol 	Bipolar			\N	\N				No	\N		No	\N			No			{Hypertension,Neck_Stiffness,Back/Lower_Back_Pain,Bypolar_Disorder}	{}						\N	NA	\N	37	2023-02-21 00:22:55	2023-02-21 00:22:55	\N
15	2023-01-01	Married	125.4	5.5	12 main st	Greenwich 	CT	06840	(203)850-1234	(203)456-7890		paulabrown@gmai.com		Bell’s pulsy	Tinnitus 			\N	\N				No	\N		No	\N			No			{Hepatitis,Heart_Disease}	{}						\N	No	\N	10	2023-02-19 20:15:19	2023-02-21 00:24:35	2022-10-14
35	2023-01-07		\N	\N	4 Buena Vista Dr	Westport 	CT	06880						Hypoglycemia 				\N	\N				No	\N		No	\N			No			{}	{}						\N	NA	\N	36	2023-02-21 01:05:06	2023-02-21 01:05:31	\N
36	2023-01-07	Single	150.0	\N	5 Benanto Dr	Derby 	CT	06418	203-915-9537					Headaches 				\N	\N				No	\N		No	\N	Post Concussion whiplash 		No			{Seizure}	{}						\N	No	\N	35	2023-02-21 01:07:51	2023-02-21 01:07:51	\N
37	2023-01-07		\N	\N	386 Sturges Ridge	Wilton 	CT	06897	917-742-2110					Prostate enlarged urine flow slow 				\N	\N				No	\N		No	\N			No			{}	{}						\N	NA	\N	34	2023-02-21 01:19:33	2023-02-21 01:19:33	\N
38	2022-12-27	Single	170.0	\N	173 Ingleside Dr	Stamford	CT	06903		203-329-3719				Back pain 				\N	\N				No	\N		No	\N			No			{}	{}						\N	NA	\N	33	2023-02-21 01:21:33	2023-02-21 01:21:33	\N
39	2023-01-02		\N	\N	Back pain 	Back pain 	CT	06614	203-803-5670					Back pain 				\N	\N				No	\N		No	\N			No			{}	{}						\N	NA	\N	32	2023-02-21 01:23:16	2023-02-21 01:23:16	\N
40	2023-01-03	Divorced	\N	\N	5 Caroline St	Trumbull	CT	06611		203-805-4274				L. Leg pain 				\N	\N				No	\N		No	\N			No			{}	{}						\N	NA	\N	31	2023-02-21 01:24:53	2023-02-21 01:25:14	\N
41	2022-08-25	Married	115.0	\N	18 Pachoug Rd	Trumbull 	CT	06611						Neck pain 	Lower back pain 			\N	\N				No	\N		No	\N			No			{}	{}						\N	NA	\N	30	2023-02-21 01:26:56	2023-02-21 01:26:56	\N
42	2022-12-28	Married	153.0	\N	60 Black haul Rd	Easton	CT	06880		475-449-5746				Coughing with yellow phlegm 				\N	\N				No	\N		No	\N			No			{}	{}						\N	NA	\N	29	2023-02-21 01:28:53	2023-02-21 01:28:53	\N
43	2022-11-01	Married	138.0	\N	4 Hilltop Rd	Weston 	CT	06883			203-984-6020			注射疫苗两周后疲劳。				\N	\N				No	\N		No	\N			No			{}	{}						\N	NA	\N	28	2023-02-21 01:30:37	2023-02-21 01:30:37	\N
44	2022-12-10		180.0	\N	16 Canaan Circle	South Salem	NY	10590		914-533-7391				2周前突发高烧, 头痛				\N	\N				No	\N		Yes	\N			No			{}	{}						\N	NA	\N	27	2023-02-21 01:32:23	2023-02-21 01:32:23	\N
45	2023-01-06		225.0	\N	2A Stonypoint Rd	Westport 	CT	06880	917-880-2867					Smoking 				\N	\N				No	\N		No	\N			No			{}	{}						\N	NA	\N	26	2023-02-21 01:34:03	2023-02-21 01:34:03	\N
46	2022-12-13		144.0	\N	850 Pacific St	Stamford 	CT	06902		203-982-5414				Sciatica 	Neck pain 	Lower back pain 	10	\N	\N		Sitting	Walking	Yes	\N		No	\N			No			{Heart_Disease,Neck_Stiffness,Back/Lower_Back_Pain}	{}						\N	NA	\N	25	2023-02-21 01:36:36	2023-02-21 01:36:36	2023-01-05
47	2022-12-01		\N	\N	17 Hilldale	New Fairfield 	CT	06812		203-273-3872				Scoliosis 				\N	\N				Yes	\N		No	\N			No			{}	{}						\N	NA	\N	116	2023-02-21 01:38:38	2023-02-21 01:38:38	\N
48	2023-01-05		150.0	\N	24 Starlight Dr	Norwalk 	CT	06851		203-984-7933				Lower back pain 			8	\N	\N				No	\N		No	\N			No			{Constipation,Back/Lower_Back_Pain}	{}						\N	No	\N	24	2023-02-21 01:41:46	2023-02-21 01:41:46	2023-01-04
49	2023-01-02	Married	110.0	\N	15 Greens Farm Hollow	Westport 	CT	06880		917-690-0724			Monika Hudonogov	Flu three days 				\N	\N				No	\N		No	\N			No			{Back/Lower_Back_Pain}	{}						\N	NA	\N	23	2023-02-21 01:44:16	2023-02-21 01:44:16	\N
50	\N	Single	210.0	6.0	88 Old Rd	Westport 	CT	06880		203-254-7986			Virginia Dean	Ischemia L hand	L shoulder frozen 		10	\N	\N				Yes	\N		No	\N			No			{Cancer}	{}						\N	NA	\N	22	2023-02-21 01:47:07	2023-02-21 01:47:07	2022-07-06
51	2022-12-29		\N	\N	17 Lords Highway 	Western 	CT							Lower back pain 				\N	\N				No	\N		No	\N			No			{Hypertension,Back/Lower_Back_Pain,Major_Depression}	{}						\N	NA	\N	21	2023-02-21 01:49:00	2023-02-21 01:49:00	\N
52	2023-01-02	Married	122.0	\N	136 parsonaoe Rd	Greenwich 	CT	06830	917-371-8511					Migraine 	Lower back pain 	IBS		\N	\N				No	\N		No	\N			No			{Back/Lower_Back_Pain,Major_Depression}	{}						\N	No	\N	20	2023-02-21 01:51:13	2023-02-21 01:51:13	2022-12-27
53	2023-01-04	Married	290.0	6.0	3 Chelsea Ct	Westport 	CT	06880	408-313-3718					L knee pain 	Lower back pain L4 tearing	Anxiety/weight		\N	\N				No	\N		No	\N			No			{Back/Lower_Back_Pain}	{}				2/week		\N	NA	\N	19	2023-02-21 01:53:43	2023-02-21 01:53:43	\N
54	2023-01-03	Single	116.0	\N					646-775-1657					Constipation 	Fatigue 			\N	\N				No	\N		No	\N			No			{}	{}						\N	NA	\N	17	2023-02-21 01:55:44	2023-02-21 01:55:44	\N
55	2023-01-03	Single	\N	\N	43 Chatham Dr	Norwalk	CT	06854	203-524-4469				Debbie Bloom 	Right knee pain 				\N	\N				No	\N		No	\N			No			{}	{}						\N	NA	\N	16	2023-02-21 01:57:57	2023-02-21 01:57:57	\N
56	2023-01-03	Married	170.0	6.0	177 Compo Rd S.	Westport 	CT	06880	203-222-2956					眩晕				\N	\N				No	\N		No	\N			No			{}	{}						\N	NA	\N	15	2023-02-21 02:00:08	2023-02-21 02:00:08	\N
\.


--
-- Data for Name: regis; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.regis (id, last_name, first_name, init, gender, dob, created_at, updated_at) FROM stdin;
10	Brown	Paula		Female	1944-07-14	2023-02-17 16:18:28	2023-02-17 16:18:28
11	DiDonato	Debra	A	Female	1960-12-08	2023-02-17 16:40:15	2023-02-17 16:40:15
12	Brown	David		Male	1960-11-02	2023-02-17 16:40:49	2023-02-17 16:40:49
13	Case Tremaglio	Julie	E	Female	1979-06-18	2023-02-17 16:41:43	2023-02-17 16:41:43
14	Morgenthaler	Al		Male	1970-02-14	2023-02-17 16:42:36	2023-02-17 16:42:36
15	Heiser	Ken	C	Male	1968-03-31	2023-02-17 16:43:28	2023-02-17 16:43:28
16	Guzman	Maria	M	Female	1954-03-08	2023-02-17 16:44:33	2023-02-17 16:44:33
17	Sitaras	Kally		Female	1981-09-26	2023-02-17 16:45:10	2023-02-17 16:45:10
18	Dineley	Johnna	M	Female	1963-05-28	2023-02-17 16:45:48	2023-02-17 16:45:48
20	Penson	Eva		Female	1976-04-07	2023-02-17 16:46:56	2023-02-17 16:46:56
21	Davies	Darren	K	Male	1964-09-24	2023-02-17 16:47:40	2023-02-17 16:47:40
22	Coci	Joseph		Male	1951-11-17	2023-02-17 16:48:21	2023-02-17 16:48:21
23	Wood	Monica		Female	1973-09-20	2023-02-17 16:48:53	2023-02-17 16:48:53
24	Mulligan	Caitlin		Female	1986-04-28	2023-02-17 16:49:29	2023-02-17 16:49:29
25	Cramer	Deborah	A	Female	1949-11-09	2023-02-17 16:50:37	2023-02-17 16:50:37
26	Ellis	Ian	P	Male	1963-07-28	2023-02-17 16:51:36	2023-02-17 16:51:36
27	Peckham	Russell	C	Male	1960-09-04	2023-02-17 16:52:31	2023-02-17 16:52:31
28	Bavido	Gianna	F	Female	1962-05-25	2023-02-17 16:53:06	2023-02-17 16:53:06
29	Simonetti	Judith	L	Female	1971-03-30	2023-02-17 16:53:59	2023-02-17 16:53:59
30	Hart	Sean	P	Male	1962-09-30	2023-02-17 16:54:37	2023-02-17 16:54:37
31	Castonguay	Eric	T	Male	1974-07-29	2023-02-17 16:55:10	2023-02-17 16:55:10
32	Luongo	Matthew		Male	1968-07-04	2023-02-17 16:55:45	2023-02-17 16:55:45
33	Riordan	Joan		Female	1964-09-23	2023-02-17 16:56:31	2023-02-17 16:56:31
34	Kreloff	Shawn		Male	1963-02-11	2023-02-17 16:57:21	2023-02-17 16:57:21
35	McKenna	Angelina	M	Female	2006-11-07	2023-02-17 16:58:13	2023-02-17 16:58:13
36	Yacenda	Merri		Female	1967-04-13	2023-02-17 16:58:43	2023-02-17 16:58:43
37	Allen	Lloyd		Male	1951-04-06	2023-02-17 16:59:16	2023-02-17 16:59:16
38	Nelson	Justin	D	Male	1976-02-05	2023-02-17 16:59:59	2023-02-17 16:59:59
39	Westlake	Warren	L	Male	1952-09-06	2023-02-17 17:00:38	2023-02-17 17:00:38
40	Westlake	Emily	R	Female	1990-05-03	2023-02-17 17:01:59	2023-02-17 17:01:59
41	Labraga	Edgar	S	Male	1962-11-19	2023-02-17 17:02:44	2023-02-17 17:02:44
42	Labraga	Joseph	L	Male	1959-01-09	2023-02-17 17:03:27	2023-02-17 17:03:27
43	Panagiotidis	Tina		Female	1981-08-05	2023-02-17 17:04:16	2023-02-17 17:04:16
44	Mitchell	Janet		Female	1966-06-06	2023-02-17 17:05:19	2023-02-17 17:05:19
45	Nolte	Henry	R	Male	1955-04-14	2023-02-17 17:14:37	2023-02-17 17:14:37
46	Anspach	David	R	Male	1956-01-14	2023-02-17 17:15:13	2023-02-17 17:15:13
47	Friday	Sharen	B	Female	1963-05-10	2023-02-17 17:16:01	2023-02-17 17:16:01
48	Moynihan	Gavin	G	Male	2011-12-23	2023-02-17 17:16:49	2023-02-17 17:16:49
49	Coassin	Jennifer	R	Female	1989-07-04	2023-02-17 17:17:34	2023-02-17 17:17:34
50	Minozzi	Quinn		Male	2007-05-04	2023-02-17 17:18:13	2023-02-17 17:18:13
51	Sved	Sara	K	Female	1981-08-24	2023-02-17 17:18:54	2023-02-17 17:18:54
52	Adair	Sarah		Female	1971-04-03	2023-02-17 17:19:31	2023-02-17 17:19:31
53	Cooper	Debra	G	Female	1939-06-23	2023-02-17 17:20:09	2023-02-17 17:20:09
54	Hutchison	Summer	L	Female	2000-09-27	2023-02-17 17:20:47	2023-02-17 17:20:47
55	Scholl	Robin		Female	1951-09-18	2023-02-17 17:21:51	2023-02-17 17:21:51
56	Banks	Thomas	R	Male	1972-09-05	2023-02-17 17:22:24	2023-02-17 17:22:24
57	Fijakowska	Agnieszka	M	Female	1973-03-23	2023-02-17 17:22:59	2023-02-17 17:22:59
58	Senecal	Paul	R	Male	1962-06-07	2023-02-17 17:23:33	2023-02-17 17:23:33
59	Menke	Elizabeth		Female	1968-09-20	2023-02-17 17:24:07	2023-02-17 17:24:07
60	Abolt	Craig	D	Male	1960-12-09	2023-02-17 17:24:50	2023-02-17 17:24:50
61	Luan	Fu-Hsiang		Male	1989-02-01	2023-02-17 17:25:36	2023-02-17 17:25:36
62	Soumelidis	Amanda	E	Female	1984-05-26	2023-02-17 17:26:11	2023-02-17 17:26:11
63	Pianka	Ben	W	Male	1949-03-28	2023-02-17 17:26:47	2023-02-17 17:26:47
64	Adetona	Mukhail		Male	1962-08-22	2023-02-17 17:27:20	2023-02-17 17:27:20
65	Medrano	Yony		Male	1997-09-28	2023-02-17 17:27:56	2023-02-17 17:27:56
66	Tolliver	Andrea	B	Female	1980-04-28	2023-02-17 17:28:34	2023-02-17 17:28:34
67	Meunier-Skornichi	Julien			2011-08-30	2023-02-17 17:29:14	2023-02-17 17:29:14
68	Yu	Meiyun		Female	1959-04-15	2023-02-17 17:29:44	2023-02-17 17:29:44
69	Cooke	Diana		Female	1985-09-26	2023-02-17 17:30:21	2023-02-17 17:30:21
70	Cho	Sunyoung		Female	1977-07-07	2023-02-17 17:30:51	2023-02-17 17:30:51
71	Kudish	Allie			1983-06-20	2023-02-17 17:31:20	2023-02-17 17:31:20
72	Jacobsen	Cynthia	L	Female	1968-12-12	2023-02-17 17:32:06	2023-02-17 17:32:06
73	Sherman	Sara	W	Female	1956-09-13	2023-02-17 17:32:40	2023-02-17 17:32:40
74	Vasco	Marjorie		Female	1976-06-08	2023-02-17 17:33:13	2023-02-17 17:33:13
75	Mitchell	Lisa	E	Female	1976-05-13	2023-02-17 17:33:52	2023-02-17 17:33:52
76	Bloom	Debbie	L	Female	1956-12-05	2023-02-17 17:34:34	2023-02-17 17:34:34
77	Stanhope	Casey	J	Female	1985-05-22	2023-02-17 17:35:10	2023-02-17 17:35:10
78	Brown	Liz		Female	1975-09-26	2023-02-17 17:35:38	2023-02-17 17:35:38
79	Cantatone	Frank		Male	1960-08-03	2023-02-17 17:36:10	2023-02-17 17:36:10
80	Nally	Jennie		Female	1972-11-09	2023-02-17 17:36:44	2023-02-17 17:36:44
83	VanGeyzel	Barbara		Female	1953-02-25	2023-02-17 17:38:23	2023-02-17 17:38:23
84	Gomez	Alina	G	Female	1981-03-30	2023-02-17 17:38:59	2023-02-17 17:38:59
85	Agler	Michele	L	Female	1952-09-18	2023-02-17 17:39:47	2023-02-17 17:39:47
86	Westcott	Pam	A	Female	1963-04-24	2023-02-17 17:40:23	2023-02-17 17:40:23
87	Dean	Virginia		Female	1955-10-20	2023-02-17 17:40:53	2023-02-17 17:40:53
88	Sabol	Elizabeth	L	Female	1974-08-13	2023-02-17 17:41:29	2023-02-17 17:41:29
89	Brenner	Joy	A	Female	1950-05-19	2023-02-17 17:42:00	2023-02-17 17:42:00
90	Brenner	David	H	Male	1952-01-20	2023-02-17 17:42:39	2023-02-17 17:42:39
91	Gomez	Sofia		Female	2010-11-23	2023-02-17 17:43:18	2023-02-17 17:43:18
92	Hunt	Thomas	J	Male	1953-10-11	2023-02-17 17:43:52	2023-02-17 17:43:52
93	Coffin	Stacy	M	Female	1968-03-15	2023-02-17 17:44:39	2023-02-17 17:44:39
94	Reyes	Klaudia		Female	1978-08-25	2023-02-17 17:45:15	2023-02-17 17:45:15
95	Scanlon	Brian	P	Male	1979-07-14	2023-02-17 17:45:55	2023-02-17 17:45:55
96	Bischoff	Ingrid	C	Female	1963-06-05	2023-02-17 17:46:30	2023-02-17 17:46:30
97	Collins	Amy		Female	1985-03-26	2023-02-17 17:47:09	2023-02-17 17:47:09
98	Luongo	Jodie		Female	1969-04-20	2023-02-17 17:47:43	2023-02-17 17:47:43
99	Tulsyan	Jaya		Female	1971-01-26	2023-02-17 17:48:21	2023-02-17 17:48:21
100	Sitaras	Kalliope		Female	1981-09-26	2023-02-17 17:48:54	2023-02-17 17:48:54
101	Scanlon	Jenelle	R	Female	1979-03-31	2023-02-17 17:49:34	2023-02-17 17:49:34
102	Nemeth	Frank		Male	1943-06-17	2023-02-17 17:50:10	2023-02-17 17:50:10
104	Sherr	Nancy		Female	1948-06-08	2023-02-17 17:51:12	2023-02-17 17:51:12
105	Simon	Jeremy		Male	1978-10-06	2023-02-17 17:51:54	2023-02-17 17:51:54
106	Hudonogov	Marinka		Female	1969-11-14	2023-02-17 17:52:33	2023-02-17 17:52:33
107	Yossefi	Elad		Male	1988-08-04	2023-02-17 17:53:02	2023-02-17 17:53:02
108	Yossefi	Tal		Male	1977-02-27	2023-02-17 17:53:37	2023-02-17 17:53:37
103	Ricci	Jeanie	M	Female	1978-12-30	2023-02-17 17:50:45	2023-02-17 17:57:46
81	Bunkoci	Lisa	M	Female	1972-09-14	2023-02-17 17:37:16	2023-02-17 22:28:55
82	DeSantis	Stephanie	N	Female	1987-07-25	2023-02-17 17:37:50	2023-02-17 23:41:29
109	Hunt	Karen	E	Female	1958-08-04	2023-02-17 17:54:11	2023-02-17 17:54:11
110	Money	Mary		Female	1950-09-30	2023-02-17 17:54:39	2023-02-17 17:54:39
112	Quiran	Eduordo	R	Male	1972-01-17	2023-02-17 17:55:55	2023-02-17 17:55:55
19	Morgan-Hunter	Wendy	R	Female	1968-10-27	2023-02-17 16:46:20	2023-02-17 17:57:05
111	Wofsy	Scott	D	Male	1967-12-07	2023-02-17 17:55:18	2023-02-17 17:58:15
113	Berg	Kelly	O	Female	1975-07-11	2023-02-17 18:00:46	2023-02-17 18:00:46
115	Briskin	Efrem		Male	1948-05-13	2023-02-17 18:04:05	2023-02-17 18:04:05
116	Jarosz	Clara		Female	2011-09-18	2023-02-17 18:07:50	2023-02-17 18:07:50
117	Lorenz	Rhodie		Female	1973-01-21	2023-02-17 18:09:36	2023-02-17 18:09:36
118	DeRosa	Meredith	H	Female	1976-07-23	2023-02-17 18:14:28	2023-02-17 18:14:28
119	Nachman	Briana	A	Female	1982-10-10	2023-02-17 18:17:24	2023-02-17 18:17:24
114	Signorile	Melissa	B	Female	1972-01-20	2023-02-17 18:01:24	2023-02-18 15:06:20
120	Zinn	Renee		Female	1942-04-10	2023-02-18 16:16:05	2023-02-18 16:16:05
121	Senecel	Barbara	M	Female	1938-11-11	2023-02-18 16:18:47	2023-02-18 16:46:11
122	Kann	Wendy	M	Female	1960-01-05	2023-02-20 23:24:05	2023-02-20 23:24:05
123	Kulangi	Angela		Female	1966-12-17	2023-02-20 23:28:24	2023-02-20 23:28:24
124	Wald	Julie		Female	1972-11-04	2023-02-20 23:31:33	2023-02-20 23:31:33
125	Crossfield	Andrew	M	Male	1961-11-06	2023-02-22 02:03:01	2023-02-22 02:04:49
126	Dos Santos	Ebener	A	Male	1992-10-10	2023-02-22 02:06:01	2023-02-22 02:08:01
127	Guevara	Jennifer		Female	1979-09-27	2023-02-22 02:08:49	2023-02-22 02:09:36
128	Kapra	Melinda		Female	1976-05-24	2023-02-23 01:33:09	2023-02-23 01:33:09
129	Markowitz	Dan		Male	1960-07-07	2023-02-23 01:36:09	2023-02-23 01:36:09
130	Bloom	Jeanne		Female	1989-11-10	2023-02-24 04:02:04	2023-02-24 04:02:04
131	Ferrera	Blanca		Female	1984-07-10	2023-02-25 02:10:20	2023-02-25 02:10:20
132	Mola	Michael	B	Male	1984-09-24	2023-02-25 02:24:05	2023-02-25 02:24:05
133	Kiriakidis	Vasilios	B	Male	1983-07-13	2023-02-25 02:38:35	2023-02-25 02:38:35
134	Robbins	Valerie	R	Female	1986-02-12	2023-02-26 01:18:18	2023-02-26 01:20:31
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20230118214835
20221212163628
20221212163804
20221212163939
20221212180226
20221212181440
20221213005159
20221213142453
20230110183607
20230110183632
20230115221119
20230115224721
20230115225026
20230115225432
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, role) FROM stdin;
6	dc20433@hotmail.com	$2a$12$5HJoLeO2QC6Z5qN42fZZ5ukgG9bsGkSwDgnpEaVLRWzGT8aUb.hgG	\N	\N	\N	8	2023-02-14 15:29:01	2023-02-11 22:43:51	::1	::1	2023-02-08 15:45:10	2023-02-14 15:29:01	0
7	binzhangct@gmail.com	$2a$12$viqOrWa5DdCF3w52KWDYoOMg9mrsDrxU1MFDENOMUTteax3qobRTe	\N	\N	\N	1	2023-02-17 16:04:44	2023-02-17 16:04:44	::1	::1	2023-02-17 16:04:44	2023-02-17 16:06:33	1
8	cindyzhangct@gmail.com	$2a$12$61p/.pE4zjUUNzozvI2Llet8k8XjNsHfsTNTxAsqzh2byVPey6VdC	\N	\N	\N	1	2023-02-17 16:05:30	2023-02-17 16:05:30	::1	::1	2023-02-17 16:05:30	2023-02-17 16:06:40	1
9	patient1@test.com	$2a$12$JX7ljhLy//n2ppweYvmGu.bf5CBJS7PyRH9vOOIxP97mWvJK4YZqK	\N	\N	\N	1	2023-02-17 16:05:55	2023-02-17 16:05:55	::1	::1	2023-02-17 16:05:55	2023-02-17 16:06:49	2
10	patient2@test.com	$2a$12$IVPad/UaB1ORr7AmqRTZVu5CteKfc22GLlMIscolCEAGRfq.P1HZ2	\N	\N	\N	1	2023-02-17 16:06:16	2023-02-17 16:06:16	::1	::1	2023-02-17 16:06:16	2023-02-17 16:06:58	2
1	jz2043@yahoo.com	$2a$12$DlRrm2JC9eWLEQOmGUjO8O1Y/5sq2beb3/ehYowO8.fnaNMn.Q7UW	\N	\N	\N	16	2023-02-19 13:32:11	2023-02-18 23:09:11	::1	::1	2023-01-27 16:29:29	2023-02-19 13:32:11	0
4	dc20433@yahoo.com	$2a$12$URQ1jmDdF7yPdL6521S0G.7S6NnsrDuvlekK4nCvLcVhvGkqHEpIC	\N	\N	\N	16	2023-02-20 23:10:06	2023-02-19 14:23:20	::1	::1	2023-01-28 18:40:01	2023-02-21 01:02:39	0
3	dc20433@gmail.com	$2a$12$CMsbIQK7wUskaPlEx5DX5.hM9hV4O5oRBSPZjtqXTo2YTdXrMhPrW	\N	\N	2023-02-24 14:56:05	13	2023-02-24 14:56:05	2023-02-20 16:56:21	::1	::1	2023-01-28 18:39:11	2023-02-24 14:56:05	0
5	dc20433@aol.com	$2a$12$o2tW6ZdasbIT95S1kPPhe.pyKpfrnJRRAZ9J1B5AZ9jRXtkOPtxs2	\N	\N	2023-02-26 01:11:51	40	2023-02-26 01:11:51	2023-02-24 21:29:42	::1	::1	2023-01-28 18:40:56	2023-02-26 01:11:51	0
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 3, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 3, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);


--
-- Name: charts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.charts_id_seq', 542, true);


--
-- Name: filings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filings_id_seq', 3, true);


--
-- Name: patients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.patients_id_seq', 56, true);


--
-- Name: regis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.regis_id_seq', 134, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 10, true);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: charts charts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charts
    ADD CONSTRAINT charts_pkey PRIMARY KEY (id);


--
-- Name: filings filings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filings
    ADD CONSTRAINT filings_pkey PRIMARY KEY (id);


--
-- Name: patients patients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_pkey PRIMARY KEY (id);


--
-- Name: regis regis_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regis
    ADD CONSTRAINT regis_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_charts_on_regi_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_charts_on_regi_id ON public.charts USING btree (regi_id);


--
-- Name: index_filings_on_regi_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_filings_on_regi_id ON public.filings USING btree (regi_id);


--
-- Name: index_patients_on_regi_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_patients_on_regi_id ON public.patients USING btree (regi_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: charts fk_rails_89fcde0ec1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charts
    ADD CONSTRAINT fk_rails_89fcde0ec1 FOREIGN KEY (regi_id) REFERENCES public.regis(id);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: filings fk_rails_9abd4b7898; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filings
    ADD CONSTRAINT fk_rails_9abd4b7898 FOREIGN KEY (regi_id) REFERENCES public.regis(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: patients fk_rails_faa6e0fcc2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patients
    ADD CONSTRAINT fk_rails_faa6e0fcc2 FOREIGN KEY (regi_id) REFERENCES public.regis(id);


--
-- PostgreSQL database dump complete
--

