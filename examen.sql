--
-- PostgreSQL database dump
--

-- Dumped from database version 11.22
-- Dumped by pg_dump version 11.22

SET statement_timeout = 4;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: 
--
aguaaaaaaaaaaaaaaa de coco
CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: x; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.x (
    a character varying(2) NOT NULL,
    b character varying(2),
    c character varying(2)
);


ALTER TABLE public.x OWNER TO postgres;

--
-- Name: y; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.y (
    ap character varying(2) NOT NULL,
    ip character varying(2) NOT NULL,
    g character varying(2) NOT NULL,
    h character varying(2)
);


ALTER TABLE public.y OWNER TO postgres;

--
-- Name: z; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.z (
    i character varying(2) NOT NULL,
    j character varying(2),
    k character varying(2)
);


ALTER TABLE public.z OWNER TO postgres;

--
-- Data for Name: x; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.x (a, b, c) FROM stdin;
z1	t2	h1
\.


--
-- Data for Name: y; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.y (ap, ip, g, h) FROM stdin;
z1	y1	sr	sd
z1	y1	sf	kp
z1	y1	jf	ia
\.


--
-- Data for Name: z; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.z (i, j, k) FROM stdin;
y1	ko	jo
\.


--
-- Name: x x_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x
    ADD CONSTRAINT x_pkey PRIMARY KEY (a);


--
-- Name: y y_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.y
    ADD CONSTRAINT y_pkey PRIMARY KEY (ap, ip, g);


--
-- Name: z z_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.z
    ADD CONSTRAINT z_pkey PRIMARY KEY (i);


--
-- Name: y y_ap_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.y
    ADD CONSTRAINT y_ap_fkey FOREIGN KEY (ap) REFERENCES public.x(a);


--
-- Name: y y_ip_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.y
    ADD CONSTRAINT y_ip_fkey FOREIGN KEY (ip) REFERENCES public.z(i);


--
-- PostgreSQL database dump complete
--

