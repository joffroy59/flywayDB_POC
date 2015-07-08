--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.3
-- Dumped by pg_dump version 9.4.0
-- Started on 2015-07-08 20:19:22

--
-- TOC entry 173 (class 1259 OID 16475)
-- Name: ANIMALS; Type: TABLE; Schema: public; Owner: mypguser; Tablespace: 
--

CREATE TABLE "ANIMALS" (
    "ID" integer NOT NULL,
    "NAME" text,
    "TYPE" text
);

--
-- TOC entry 172 (class 1259 OID 16473)
-- Name: ANIMALS_ID_seq; Type: SEQUENCE; Schema: public; Owner: mypguser
--

CREATE SEQUENCE "ANIMALS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 175 (class 1259 OID 16495)
-- Name: PERSONS; Type: TABLE; Schema: public; Owner: mypguser; Tablespace: 
--

CREATE TABLE "PERSONS" (
    "ID" integer NOT NULL,
    "NAME" text,
    "AGE" integer
);


--
-- TOC entry 174 (class 1259 OID 16493)
-- Name: PERSONS_ID_seq; Type: SEQUENCE; Schema: public; Owner: mypguser
--

CREATE SEQUENCE "PERSONS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 1893 (class 2604 OID 16478)
-- Name: ID; Type: DEFAULT; Schema: public; Owner: mypguser
--

ALTER TABLE ONLY "ANIMALS" ALTER COLUMN "ID" SET DEFAULT nextval('"ANIMALS_ID_seq"'::regclass);


--
-- TOC entry 1894 (class 2604 OID 16498)
-- Name: ID; Type: DEFAULT; Schema: public; Owner: mypguser
--

ALTER TABLE ONLY "PERSONS" ALTER COLUMN "ID" SET DEFAULT nextval('"PERSONS_ID_seq"'::regclass);


--
-- TOC entry 2009 (class 0 OID 16475)
-- Dependencies: 173
-- Data for Name: ANIMALS; Type: TABLE DATA; Schema: public; Owner: mypguser
--

INSERT INTO "ANIMALS" ("ID", "NAME", "TYPE") VALUES (1, 'Rufus', 'dog');
INSERT INTO "ANIMALS" ("ID", "NAME", "TYPE") VALUES (2, 'Minou', 'cat');


--
-- TOC entry 2022 (class 0 OID 0)
-- Dependencies: 172
-- Name: ANIMALS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: mypguser
--

SELECT pg_catalog.setval('"ANIMALS_ID_seq"', 2, true);


--
-- TOC entry 2011 (class 0 OID 16495)
-- Dependencies: 175
-- Data for Name: PERSONS; Type: TABLE DATA; Schema: public; Owner: mypguser
--

INSERT INTO "PERSONS" ("ID", "NAME", "AGE") VALUES (1, 'Jean', 21);
INSERT INTO "PERSONS" ("ID", "NAME", "AGE") VALUES (2, 'Paul', 31);


--
-- TOC entry 2023 (class 0 OID 0)
-- Dependencies: 174
-- Name: PERSONS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: mypguser
--

SELECT pg_catalog.setval('"PERSONS_ID_seq"', 2, true);


--
-- TOC entry 1896 (class 2606 OID 16483)
-- Name: PK_ANIMALS; Type: CONSTRAINT; Schema: public; Owner: mypguser; Tablespace: 
--

ALTER TABLE ONLY "ANIMALS"
    ADD CONSTRAINT "PK_ANIMALS" PRIMARY KEY ("ID");


--
-- TOC entry 1898 (class 2606 OID 16503)
-- Name: PK_PERSONS; Type: CONSTRAINT; Schema: public; Owner: mypguser; Tablespace: 
--

ALTER TABLE ONLY "PERSONS"
    ADD CONSTRAINT "PK_PERSONS" PRIMARY KEY ("ID");



-- Completed on 2015-07-08 20:19:24

--
-- PostgreSQL database dump complete
--

