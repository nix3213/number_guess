--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: player; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.player (
    name character(22),
    id integer NOT NULL
);


ALTER TABLE public.player OWNER TO freecodecamp;

--
-- Name: player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.player_id_seq OWNER TO freecodecamp;

--
-- Name: player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.player_id_seq OWNED BY public.player.id;


--
-- Name: stats; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.stats (
    tries integer,
    player_id integer NOT NULL
);


ALTER TABLE public.stats OWNER TO freecodecamp;

--
-- Name: player id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.player ALTER COLUMN id SET DEFAULT nextval('public.player_id_seq'::regclass);


--
-- Data for Name: player; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.player VALUES ('user_1685002783785    ', 18);
INSERT INTO public.player VALUES ('user_1685002783784    ', 19);
INSERT INTO public.player VALUES ('Joseph                ', 20);
INSERT INTO public.player VALUES ('user_1685002900587    ', 21);
INSERT INTO public.player VALUES ('user_1685002900586    ', 22);
INSERT INTO public.player VALUES ('user_1685002952143    ', 23);
INSERT INTO public.player VALUES ('user_1685002952142    ', 24);
INSERT INTO public.player VALUES ('user_1685002996849    ', 25);
INSERT INTO public.player VALUES ('user_1685002996848    ', 26);
INSERT INTO public.player VALUES ('user_1685003130806    ', 27);
INSERT INTO public.player VALUES ('user_1685003130805    ', 28);
INSERT INTO public.player VALUES ('user_1685003231096    ', 29);
INSERT INTO public.player VALUES ('user_1685003231095    ', 30);
INSERT INTO public.player VALUES ('user_1685003324953    ', 31);
INSERT INTO public.player VALUES ('user_1685003324952    ', 32);
INSERT INTO public.player VALUES ('user_1685003502088    ', 33);
INSERT INTO public.player VALUES ('user_1685003502087    ', 34);
INSERT INTO public.player VALUES ('user_1685003553327    ', 35);
INSERT INTO public.player VALUES ('user_1685003553326    ', 36);
INSERT INTO public.player VALUES ('user_1685003570729    ', 37);
INSERT INTO public.player VALUES ('user_1685003570728    ', 38);
INSERT INTO public.player VALUES ('user_1685003587673    ', 39);
INSERT INTO public.player VALUES ('user_1685003587672    ', 41);
INSERT INTO public.player VALUES ('user_1685003636876    ', 42);
INSERT INTO public.player VALUES ('user_1685003636875    ', 43);
INSERT INTO public.player VALUES ('user_1685003937571    ', 44);
INSERT INTO public.player VALUES ('user_1685003937570    ', 45);
INSERT INTO public.player VALUES ('user_1685003974708    ', 46);
INSERT INTO public.player VALUES ('user_1685003974707    ', 47);
INSERT INTO public.player VALUES ('user_1685003998608    ', 48);
INSERT INTO public.player VALUES ('user_1685003998607    ', 49);


--
-- Data for Name: stats; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.stats VALUES (635, 18);
INSERT INTO public.stats VALUES (206, 19);
INSERT INTO public.stats VALUES (185, 18);
INSERT INTO public.stats VALUES (31, 18);
INSERT INTO public.stats VALUES (188, 18);
INSERT INTO public.stats VALUES (9, 20);
INSERT INTO public.stats VALUES (10, 20);
INSERT INTO public.stats VALUES (959, 21);
INSERT INTO public.stats VALUES (205, 22);
INSERT INTO public.stats VALUES (795, 22);
INSERT INTO public.stats VALUES (729, 21);
INSERT INTO public.stats VALUES (509, 21);
INSERT INTO public.stats VALUES (896, 21);
INSERT INTO public.stats VALUES (779, 23);
INSERT INTO public.stats VALUES (469, 23);
INSERT INTO public.stats VALUES (514, 24);
INSERT INTO public.stats VALUES (752, 24);
INSERT INTO public.stats VALUES (129, 23);
INSERT INTO public.stats VALUES (640, 23);
INSERT INTO public.stats VALUES (797, 23);
INSERT INTO public.stats VALUES (53, 25);
INSERT INTO public.stats VALUES (334, 25);
INSERT INTO public.stats VALUES (128, 26);
INSERT INTO public.stats VALUES (962, 26);
INSERT INTO public.stats VALUES (571, 25);
INSERT INTO public.stats VALUES (622, 25);
INSERT INTO public.stats VALUES (322, 25);
INSERT INTO public.stats VALUES (397, 27);
INSERT INTO public.stats VALUES (937, 28);
INSERT INTO public.stats VALUES (75, 28);
INSERT INTO public.stats VALUES (474, 27);
INSERT INTO public.stats VALUES (854, 27);
INSERT INTO public.stats VALUES (84, 27);
INSERT INTO public.stats VALUES (13, 20);
INSERT INTO public.stats VALUES (924, 29);
INSERT INTO public.stats VALUES (714, 29);
INSERT INTO public.stats VALUES (988, 30);
INSERT INTO public.stats VALUES (425, 30);
INSERT INTO public.stats VALUES (204, 29);
INSERT INTO public.stats VALUES (173, 29);
INSERT INTO public.stats VALUES (636, 29);
INSERT INTO public.stats VALUES (649, 31);
INSERT INTO public.stats VALUES (951, 31);
INSERT INTO public.stats VALUES (916, 32);
INSERT INTO public.stats VALUES (716, 32);
INSERT INTO public.stats VALUES (228, 31);
INSERT INTO public.stats VALUES (458, 31);
INSERT INTO public.stats VALUES (13, 31);
INSERT INTO public.stats VALUES (294, 33);
INSERT INTO public.stats VALUES (858, 33);
INSERT INTO public.stats VALUES (905, 34);
INSERT INTO public.stats VALUES (91, 34);
INSERT INTO public.stats VALUES (752, 33);
INSERT INTO public.stats VALUES (512, 33);
INSERT INTO public.stats VALUES (124, 33);
INSERT INTO public.stats VALUES (554, 35);
INSERT INTO public.stats VALUES (436, 35);
INSERT INTO public.stats VALUES (199, 36);
INSERT INTO public.stats VALUES (909, 36);
INSERT INTO public.stats VALUES (453, 35);
INSERT INTO public.stats VALUES (930, 35);
INSERT INTO public.stats VALUES (815, 35);
INSERT INTO public.stats VALUES (971, 37);
INSERT INTO public.stats VALUES (905, 37);
INSERT INTO public.stats VALUES (900, 38);
INSERT INTO public.stats VALUES (431, 37);
INSERT INTO public.stats VALUES (530, 41);
INSERT INTO public.stats VALUES (634, 41);
INSERT INTO public.stats VALUES (259, 39);
INSERT INTO public.stats VALUES (725, 39);
INSERT INTO public.stats VALUES (133, 39);
INSERT INTO public.stats VALUES (445, 42);
INSERT INTO public.stats VALUES (175, 43);
INSERT INTO public.stats VALUES (840, 43);
INSERT INTO public.stats VALUES (124, 42);
INSERT INTO public.stats VALUES (562, 42);
INSERT INTO public.stats VALUES (706, 42);
INSERT INTO public.stats VALUES (685, 44);
INSERT INTO public.stats VALUES (133, 45);
INSERT INTO public.stats VALUES (22, 45);
INSERT INTO public.stats VALUES (653, 44);
INSERT INTO public.stats VALUES (494, 44);
INSERT INTO public.stats VALUES (349, 44);
INSERT INTO public.stats VALUES (726, 46);
INSERT INTO public.stats VALUES (822, 46);
INSERT INTO public.stats VALUES (60, 47);
INSERT INTO public.stats VALUES (339, 47);
INSERT INTO public.stats VALUES (347, 46);
INSERT INTO public.stats VALUES (616, 46);
INSERT INTO public.stats VALUES (626, 46);
INSERT INTO public.stats VALUES (435, 48);
INSERT INTO public.stats VALUES (583, 48);
INSERT INTO public.stats VALUES (780, 49);
INSERT INTO public.stats VALUES (184, 49);
INSERT INTO public.stats VALUES (89, 48);
INSERT INTO public.stats VALUES (799, 48);
INSERT INTO public.stats VALUES (66, 48);


--
-- Name: player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.player_id_seq', 49, true);


--
-- Name: player data_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.player
    ADD CONSTRAINT data_name_key UNIQUE (name);


--
-- Name: player player_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.player
    ADD CONSTRAINT player_pkey PRIMARY KEY (id);


--
-- Name: stats fk_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stats
    ADD CONSTRAINT fk_id FOREIGN KEY (player_id) REFERENCES public.player(id);


--
-- PostgreSQL database dump complete
--

