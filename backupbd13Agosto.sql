--
-- PostgreSQL database dump
--

-- Dumped from database version 11.22 (Debian 11.22-1.pgdg100+1)
-- Dumped by pg_dump version 13.13 (Debian 13.13-1.pgdg100+1)

-- Started on 2024-08-13 14:27:16 -04

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

--
-- TOC entry 196 (class 1259 OID 48189)
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    id integer NOT NULL,
    descricao character varying(100)
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 48192)
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
-- TOC entry 2930 (class 0 OID 0)
-- Dependencies: 197
-- Name: categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;


--
-- TOC entry 198 (class 1259 OID 48194)
-- Name: noticia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.noticia (
    id integer NOT NULL,
    data date,
    autor character varying(100),
    titulo character varying(100),
    descricao character varying,
    categoria_id integer,
    imagem character varying(50)
);


ALTER TABLE public.noticia OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 48200)
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
-- TOC entry 2931 (class 0 OID 0)
-- Dependencies: 199
-- Name: noticia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.noticia_id_seq OWNED BY public.noticia.id;


--
-- TOC entry 200 (class 1259 OID 48202)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id integer NOT NULL,
    email character varying,
    senha character varying
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 48208)
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_seq OWNER TO postgres;

--
-- TOC entry 2932 (class 0 OID 0)
-- Dependencies: 201
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;


--
-- TOC entry 2789 (class 2604 OID 48210)
-- Name: categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);


--
-- TOC entry 2790 (class 2604 OID 48211)
-- Name: noticia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noticia ALTER COLUMN id SET DEFAULT nextval('public.noticia_id_seq'::regclass);


--
-- TOC entry 2791 (class 2604 OID 48212)
-- Name: usuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);


--
-- TOC entry 2919 (class 0 OID 48189)
-- Dependencies: 196
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categoria VALUES (1, 'Cultura');
INSERT INTO public.categoria VALUES (4, 'Economia');
INSERT INTO public.categoria VALUES (14, 'Esporte');
INSERT INTO public.categoria VALUES (16, 'Negocios');
INSERT INTO public.categoria VALUES (17, 'Saúde');


--
-- TOC entry 2921 (class 0 OID 48194)
-- Dependencies: 198
-- Data for Name: noticia; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.noticia VALUES (13, '2024-03-13', 'Miriam Leitão', 'Dolar cai', 'Preço do dolar atinge menor patamar', 4, NULL);
INSERT INTO public.noticia VALUES (10, '2024-03-12', 'teste', 'teste', 'teste', 4, NULL);
INSERT INTO public.noticia VALUES (12, '2024-03-13', 'teste 12', 'teste 12', 'teste 12', 1, NULL);
INSERT INTO public.noticia VALUES (8, '2024-03-05', 'Dr. Drauzio Varela', 'vacina de Dengue', 'Para crianças entre 4 e 10 anos, a vacina de dengue está disponivel em toda a rede de saúde municipal. procure o seu posto mais próximo.', 17, NULL);
INSERT INTO public.noticia VALUES (16, '2024-07-31', 'Daiane dos Santos', 'Bronze na categoria Ginastica Olimpica', 'O grupo liderado por Rebecca Andrade conquistou nesta data a medalha de bronze na categoria de Ginastica Olimpica por equipe. Esta é a primeira medalha para o Brasil nesta categoria. Parabéns a todas as atletas que fizeram possível este acontecimento.', 14, NULL);
INSERT INTO public.noticia VALUES (15, '2020-01-01', 'Sandra Annenberg', 'Pantanal pega fogo há vários dias', 'Neste inverno, o pantanal sulmatogrossense está sendo castigado por várias queimadas que está causando danos na natureza.', 1, 'YkekEYxb2F3qsCCdu4NI5Kbv54apF0U7S16vJnDj.png');
INSERT INTO public.noticia VALUES (4, '2024-08-13', 'Samanta Alves', 'São Paulo é campeão da Copa de Tudo', 'Após um pequeno período sem títulos, São Paulo ganha mais um título. Viva o papa copas', 14, 'IrfoS8oG4d9CCfVLnACYLaohMEFqpDksgp1z8NzA.png');


--
-- TOC entry 2923 (class 0 OID 48202)
-- Dependencies: 200
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuario VALUES (1, 'admin@gmail.com', '12345');


--
-- TOC entry 2933 (class 0 OID 0)
-- Dependencies: 197
-- Name: categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_id_seq', 18, true);


--
-- TOC entry 2934 (class 0 OID 0)
-- Dependencies: 199
-- Name: noticia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.noticia_id_seq', 17, true);


--
-- TOC entry 2935 (class 0 OID 0)
-- Dependencies: 201
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_seq', 1, true);


--
-- TOC entry 2793 (class 2606 OID 48214)
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);


--
-- TOC entry 2795 (class 2606 OID 48216)
-- Name: noticia noticia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noticia
    ADD CONSTRAINT noticia_pkey PRIMARY KEY (id);


--
-- TOC entry 2797 (class 2606 OID 48218)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


-- Completed on 2024-08-13 14:27:16 -04

--
-- PostgreSQL database dump complete
--

