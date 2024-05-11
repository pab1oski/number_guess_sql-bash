--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    username character varying(22) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES ('prueba', 10, 7);
INSERT INTO public.games VALUES ('pdad', 0, 0);
INSERT INTO public.games VALUES ('sdf', 0, 0);
INSERT INTO public.games VALUES ('user_1715455692727', 0, 0);
INSERT INTO public.games VALUES ('user_1715455692726', 0, 0);
INSERT INTO public.games VALUES ('user_1715455711077', 0, 0);
INSERT INTO public.games VALUES ('user_1715455711076', 0, 0);
INSERT INTO public.games VALUES ('PRUEBA', 0, 0);
INSERT INTO public.games VALUES ('user_1715455889997', 0, 0);
INSERT INTO public.games VALUES ('user_1715455889996', 0, 0);
INSERT INTO public.games VALUES ('[A', 0, 0);
INSERT INTO public.games VALUES ('p', 300, 34);
INSERT INTO public.games VALUES ('pablo', 0, 0);
INSERT INTO public.games VALUES ('paco', 0, 0);
INSERT INTO public.games VALUES ('pacoo', 1, 1);
INSERT INTO public.games VALUES ('user_1715456189402', 1, 183);
INSERT INTO public.games VALUES ('user_1715456189403', 1, 302);


--
-- Name: games games_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

