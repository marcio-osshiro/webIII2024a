--
-- PostgreSQL database dump
--

-- Dumped from database version 14.13 (Ubuntu 14.13-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.13 (Ubuntu 14.13-0ubuntu0.22.04.1)

-- Started on 2024-08-27 11:19:10 -04

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
-- TOC entry 209 (class 1259 OID 16387)
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    id integer NOT NULL,
    descricao character varying(100),
    imagem character varying(50)
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16390)
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
-- TOC entry 3419 (class 0 OID 0)
-- Dependencies: 210
-- Name: categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;


--
-- TOC entry 215 (class 1259 OID 16667)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    id integer NOT NULL,
    nome character varying(100)
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16670)
-- Name: cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_id_seq OWNER TO postgres;

--
-- TOC entry 3420 (class 0 OID 0)
-- Dependencies: 216
-- Name: cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;


--
-- TOC entry 217 (class 1259 OID 16671)
-- Name: item_venda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.item_venda (
    id integer NOT NULL,
    produto_id integer,
    venda_id integer,
    quantidade integer,
    valor_unitario numeric(10,2),
    valor_total numeric(10,2)
);


ALTER TABLE public.item_venda OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16674)
-- Name: item_venda_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.item_venda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.item_venda_id_seq OWNER TO postgres;

--
-- TOC entry 3421 (class 0 OID 0)
-- Dependencies: 218
-- Name: item_venda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.item_venda_id_seq OWNED BY public.item_venda.id;


--
-- TOC entry 211 (class 1259 OID 16391)
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
-- TOC entry 212 (class 1259 OID 16396)
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
-- TOC entry 3422 (class 0 OID 0)
-- Dependencies: 212
-- Name: noticia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.noticia_id_seq OWNED BY public.noticia.id;


--
-- TOC entry 219 (class 1259 OID 16675)
-- Name: produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produto (
    id integer NOT NULL,
    descricao character varying(100),
    valor numeric(10,2)
);


ALTER TABLE public.produto OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16678)
-- Name: produto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produto_id_seq OWNER TO postgres;

--
-- TOC entry 3423 (class 0 OID 0)
-- Dependencies: 220
-- Name: produto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produto_id_seq OWNED BY public.produto.id;


--
-- TOC entry 213 (class 1259 OID 16397)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id integer NOT NULL,
    email character varying,
    senha character varying
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16402)
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
-- TOC entry 3424 (class 0 OID 0)
-- Dependencies: 214
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;


--
-- TOC entry 221 (class 1259 OID 16679)
-- Name: venda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venda (
    id integer NOT NULL,
    documento character varying(100),
    data date,
    valor numeric(10,2),
    forma_pagamento character varying(100),
    cliente_id integer
);


ALTER TABLE public.venda OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16682)
-- Name: venda_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.venda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venda_id_seq OWNER TO postgres;

--
-- TOC entry 3425 (class 0 OID 0)
-- Dependencies: 222
-- Name: venda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.venda_id_seq OWNED BY public.venda.id;


--
-- TOC entry 3239 (class 2604 OID 16403)
-- Name: categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);


--
-- TOC entry 3242 (class 2604 OID 16683)
-- Name: cliente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);


--
-- TOC entry 3243 (class 2604 OID 16684)
-- Name: item_venda id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_venda ALTER COLUMN id SET DEFAULT nextval('public.item_venda_id_seq'::regclass);


--
-- TOC entry 3240 (class 2604 OID 16404)
-- Name: noticia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noticia ALTER COLUMN id SET DEFAULT nextval('public.noticia_id_seq'::regclass);


--
-- TOC entry 3244 (class 2604 OID 16685)
-- Name: produto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto ALTER COLUMN id SET DEFAULT nextval('public.produto_id_seq'::regclass);


--
-- TOC entry 3241 (class 2604 OID 16405)
-- Name: usuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);


--
-- TOC entry 3245 (class 2604 OID 16686)
-- Name: venda id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda ALTER COLUMN id SET DEFAULT nextval('public.venda_id_seq'::regclass);


--
-- TOC entry 3400 (class 0 OID 16387)
-- Dependencies: 209
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categoria VALUES (17, 'Bem Estar e Saúde', NULL);
INSERT INTO public.categoria VALUES (16, 'Negocios e Empreendimentos', NULL);
INSERT INTO public.categoria VALUES (4, 'Economia e Finanças', NULL);
INSERT INTO public.categoria VALUES (1, 'Cultura e Entretenimento', NULL);
INSERT INTO public.categoria VALUES (14, 'Esporte Espetacular', 'ckG3vbz6jybW8HdTqtpxc5zMcfFji4SzZaA7GbuW.png');


--
-- TOC entry 3406 (class 0 OID 16667)
-- Dependencies: 215
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cliente VALUES (1, 'Antonio');
INSERT INTO public.cliente VALUES (2, 'Bernardo');
INSERT INTO public.cliente VALUES (3, 'Cleber');
INSERT INTO public.cliente VALUES (4, 'Douglas');
INSERT INTO public.cliente VALUES (5, 'Eugenio');
INSERT INTO public.cliente VALUES (6, 'Francisco');


--
-- TOC entry 3408 (class 0 OID 16671)
-- Dependencies: 217
-- Data for Name: item_venda; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.item_venda VALUES (229, 1, 19, 1, 5.00, 5.00);
INSERT INTO public.item_venda VALUES (230, 6, 19, 1, 8.20, 8.20);
INSERT INTO public.item_venda VALUES (231, 4, 20, 2, 9.00, 18.00);
INSERT INTO public.item_venda VALUES (232, 7, 21, 2, 15.00, 30.00);
INSERT INTO public.item_venda VALUES (233, 4, 21, 2, 9.00, 18.00);


--
-- TOC entry 3402 (class 0 OID 16391)
-- Dependencies: 211
-- Data for Name: noticia; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.noticia VALUES (13, '2024-03-13', 'Miriam Leitão', 'Dolar cai', 'Preço do dolar atinge menor patamar', 4, NULL);
INSERT INTO public.noticia VALUES (10, '2024-03-12', 'teste', 'teste', 'teste', 4, NULL);
INSERT INTO public.noticia VALUES (12, '2024-03-13', 'teste 12', 'teste 12', 'teste 12', 1, NULL);
INSERT INTO public.noticia VALUES (8, '2024-03-05', 'Dr. Drauzio Varela', 'vacina de Dengue', 'Para crianças entre 4 e 10 anos, a vacina de dengue está disponivel em toda a rede de saúde municipal. procure o seu posto mais próximo.', 17, NULL);
INSERT INTO public.noticia VALUES (16, '2024-07-31', 'Daiane dos Santos', 'Bronze na categoria Ginastica Olimpica', 'O grupo liderado por Rebecca Andrade conquistou nesta data a medalha de bronze na categoria de Ginastica Olimpica por equipe. Esta é a primeira medalha para o Brasil nesta categoria. Parabéns a todas as atletas que fizeram possível este acontecimento.', 14, NULL);
INSERT INTO public.noticia VALUES (4, '2024-08-13', 'Samanta Alves', 'São Paulo é campeão da Copa de Tudo', 'Após um pequeno período sem títulos, São Paulo ganha mais um título. Viva o papa copas', 14, 'IrfoS8oG4d9CCfVLnACYLaohMEFqpDksgp1z8NzA.png');
INSERT INTO public.noticia VALUES (15, '2020-01-31', 'Sandra Annenberg', 'Pantanal pega fogo há vários dias', 'Neste inverno, o pantanal sulmatogrossense está sendo castigado por várias queimadas que está causando danos na natureza.', 1, 'YkekEYxb2F3qsCCdu4NI5Kbv54apF0U7S16vJnDj.png');


--
-- TOC entry 3410 (class 0 OID 16675)
-- Dependencies: 219
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.produto VALUES (1, 'Alface', 5.00);
INSERT INTO public.produto VALUES (2, 'Bolo', 8.50);
INSERT INTO public.produto VALUES (3, 'Cafe', 7.35);
INSERT INTO public.produto VALUES (4, 'Doce Leite', 9.00);
INSERT INTO public.produto VALUES (5, 'Ervilha', 4.00);
INSERT INTO public.produto VALUES (6, 'Feijão', 8.20);
INSERT INTO public.produto VALUES (7, 'Goiabada', 15.00);
INSERT INTO public.produto VALUES (8, 'Limao', 10.00);


--
-- TOC entry 3404 (class 0 OID 16397)
-- Dependencies: 213
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuario VALUES (1, 'admin@gmail.com', '12345');


--
-- TOC entry 3412 (class 0 OID 16679)
-- Dependencies: 221
-- Data for Name: venda; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.venda VALUES (19, '1212', '2024-08-27', 13.20, 'teste', 3);
INSERT INTO public.venda VALUES (20, '2708', '2024-08-27', 18.00, '30 dias', 2);
INSERT INTO public.venda VALUES (21, '2708b', '2024-08-27', 48.00, 'a vista', 5);


--
-- TOC entry 3426 (class 0 OID 0)
-- Dependencies: 210
-- Name: categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_id_seq', 18, true);


--
-- TOC entry 3427 (class 0 OID 0)
-- Dependencies: 216
-- Name: cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_id_seq', 6, true);


--
-- TOC entry 3428 (class 0 OID 0)
-- Dependencies: 218
-- Name: item_venda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.item_venda_id_seq', 233, true);


--
-- TOC entry 3429 (class 0 OID 0)
-- Dependencies: 212
-- Name: noticia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.noticia_id_seq', 17, true);


--
-- TOC entry 3430 (class 0 OID 0)
-- Dependencies: 220
-- Name: produto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produto_id_seq', 8, true);


--
-- TOC entry 3431 (class 0 OID 0)
-- Dependencies: 214
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_seq', 1, true);


--
-- TOC entry 3432 (class 0 OID 0)
-- Dependencies: 222
-- Name: venda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.venda_id_seq', 21, true);


--
-- TOC entry 3247 (class 2606 OID 16407)
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);


--
-- TOC entry 3253 (class 2606 OID 16688)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);


--
-- TOC entry 3255 (class 2606 OID 16690)
-- Name: item_venda item_venda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_venda
    ADD CONSTRAINT item_venda_pkey PRIMARY KEY (id);


--
-- TOC entry 3249 (class 2606 OID 16409)
-- Name: noticia noticia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noticia
    ADD CONSTRAINT noticia_pkey PRIMARY KEY (id);


--
-- TOC entry 3257 (class 2606 OID 16692)
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id);


--
-- TOC entry 3251 (class 2606 OID 16411)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 3259 (class 2606 OID 16694)
-- Name: venda venda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (id);


--
-- TOC entry 3260 (class 2606 OID 16695)
-- Name: item_venda fk_venda; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_venda
    ADD CONSTRAINT fk_venda FOREIGN KEY (venda_id) REFERENCES public.venda(id) ON DELETE CASCADE NOT VALID;


-- Completed on 2024-08-27 11:19:10 -04

--
-- PostgreSQL database dump complete
--

