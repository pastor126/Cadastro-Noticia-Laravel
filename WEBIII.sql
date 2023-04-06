--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7
-- Dumped by pg_dump version 14.7

-- Started on 2023-04-06 16:26:15

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 214 (class 1259 OID 43613)
-- Name: autor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.autor (
    id integer NOT NULL,
    nome character varying(50),
    cpf character varying(20),
    updated_at timestamp with time zone,
    created_at timestamp with time zone
);


ALTER TABLE public.autor OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 43612)
-- Name: autor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.autor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.autor_id_seq OWNER TO postgres;

--
-- TOC entry 3379 (class 0 OID 0)
-- Dependencies: 213
-- Name: autor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.autor_id_seq OWNED BY public.autor.id;


--
-- TOC entry 212 (class 1259 OID 43511)
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    id integer NOT NULL,
    categoria character varying(100) NOT NULL,
    updated_at timestamp with time zone,
    created_at timestamp with time zone
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 43510)
-- Name: categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categoria_id_seq OWNER TO postgres;

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 211
-- Name: categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;


--
-- TOC entry 219 (class 1259 OID 43790)
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 43789)
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO postgres;

--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 218
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- TOC entry 209 (class 1259 OID 43470)
-- Name: noticia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.noticia (
    id integer NOT NULL,
    titulo character varying(100) NOT NULL,
    texto text NOT NULL,
    data date NOT NULL,
    categoria_id integer,
    autor_id integer,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.noticia OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 43473)
-- Name: noticia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.noticia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.noticia_id_seq OWNER TO postgres;

--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 210
-- Name: noticia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.noticia_id_seq OWNED BY public.noticia.id;


--
-- TOC entry 217 (class 1259 OID 43782)
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 43802)
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 43801)
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_access_tokens_id_seq OWNER TO postgres;

--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 220
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- TOC entry 216 (class 1259 OID 43772)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 43771)
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
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 215
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3195 (class 2604 OID 43616)
-- Name: autor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.autor ALTER COLUMN id SET DEFAULT nextval('public.autor_id_seq'::regclass);


--
-- TOC entry 3194 (class 2604 OID 43514)
-- Name: categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);


--
-- TOC entry 3197 (class 2604 OID 43793)
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- TOC entry 3193 (class 2604 OID 43474)
-- Name: noticia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noticia ALTER COLUMN id SET DEFAULT nextval('public.noticia_id_seq'::regclass);


--
-- TOC entry 3199 (class 2604 OID 43805)
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- TOC entry 3196 (class 2604 OID 43775)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3366 (class 0 OID 43613)
-- Dependencies: 214
-- Data for Name: autor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.autor VALUES (5, 'Fulano da Silva', '16276711832', '2023-03-31 22:51:30-04', '2023-03-31 22:51:30-04');
INSERT INTO public.autor VALUES (6, 'Beltrano de Souza', '77799933344', '2023-03-31 22:51:42-04', '2023-03-31 22:51:42-04');


--
-- TOC entry 3364 (class 0 OID 43511)
-- Dependencies: 212
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categoria VALUES (9, 'ESPORTE', '2023-03-31 22:35:43-04', '2023-03-31 22:35:43-04');
INSERT INTO public.categoria VALUES (10, 'ATUALIDADES', '2023-03-31 22:35:54-04', '2023-03-31 22:35:54-04');
INSERT INTO public.categoria VALUES (11, 'CULINÁRIA', '2023-03-31 22:45:06-04', '2023-03-31 22:36:01-04');


--
-- TOC entry 3371 (class 0 OID 43790)
-- Dependencies: 219
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3361 (class 0 OID 43470)
-- Dependencies: 209
-- Data for Name: noticia; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.noticia VALUES (8, 'Campeão Sempre', 'ppppppppppppppppppppppppppppp', '2023-04-04', 9, 5, '2023-04-06 14:15:01-04', '2023-04-06 19:47:19-04');
INSERT INTO public.noticia VALUES (9, 'Caldo Verde', 'ajhdjjbfb jrknruijc 4jhiojmvnv  ckjmtv5vb
rkrtjvijybmklkun.frrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr  ,,mgkjitjiitjiot', '2023-03-27', 11, 5, '2023-04-06 20:12:09-04', '2023-04-06 20:12:09-04');


--
-- TOC entry 3369 (class 0 OID 43782)
-- Dependencies: 217
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3373 (class 0 OID 43802)
-- Dependencies: 221
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3368 (class 0 OID 43772)
-- Dependencies: 216
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 213
-- Name: autor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.autor_id_seq', 6, true);


--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 211
-- Name: categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_id_seq', 12, true);


--
-- TOC entry 3387 (class 0 OID 0)
-- Dependencies: 218
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- TOC entry 3388 (class 0 OID 0)
-- Dependencies: 210
-- Name: noticia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.noticia_id_seq', 9, true);


--
-- TOC entry 3389 (class 0 OID 0)
-- Dependencies: 220
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- TOC entry 3390 (class 0 OID 0)
-- Dependencies: 215
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 3205 (class 2606 OID 43618)
-- Name: autor autor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.autor
    ADD CONSTRAINT autor_pkey PRIMARY KEY (id);


--
-- TOC entry 3203 (class 2606 OID 43516)
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);


--
-- TOC entry 3213 (class 2606 OID 43798)
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3215 (class 2606 OID 43800)
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- TOC entry 3201 (class 2606 OID 43479)
-- Name: noticia noticia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noticia
    ADD CONSTRAINT noticia_pkey PRIMARY KEY (id);


--
-- TOC entry 3211 (class 2606 OID 43788)
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- TOC entry 3217 (class 2606 OID 43809)
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 3219 (class 2606 OID 43812)
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- TOC entry 3207 (class 2606 OID 43781)
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- TOC entry 3209 (class 2606 OID 43779)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3220 (class 1259 OID 43810)
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- TOC entry 3221 (class 2606 OID 43517)
-- Name: noticia noticia_categoria; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noticia
    ADD CONSTRAINT noticia_categoria FOREIGN KEY (categoria_id) REFERENCES public.categoria(id) NOT VALID;


-- Completed on 2023-04-06 16:26:15

--
-- PostgreSQL database dump complete
--

