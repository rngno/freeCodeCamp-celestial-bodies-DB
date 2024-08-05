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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    age integer,
    galaxy_types integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    is_spherical boolean,
    distance_from_earth numeric,
    age integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth numeric,
    age integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    age integer,
    distance_from_earth numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'lol', NULL, NULL, 1);
INSERT INTO public.galaxy VALUES (2, 'rofl', NULL, NULL, 2);
INSERT INTO public.galaxy VALUES (3, 'lmao', NULL, NULL, 3);
INSERT INTO public.galaxy VALUES (4, 'umm', NULL, NULL, 1);
INSERT INTO public.galaxy VALUES (5, 'huh', NULL, NULL, 1);
INSERT INTO public.galaxy VALUES (6, 'whaaa', NULL, NULL, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (4, 'aaaaaaaaaaaaaaaaaaaaaaaaaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (5, 'aaaaaaaaaaaaaaaaaaaaaaaaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (6, 'aaaaaaaaaaaaaaaaaaaaaaaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (7, 'aaaaaaaaaaaaaaaaaaaaaaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (8, 'aaaaaaaaaaaaaaaaaaaaaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (9, 'aaaaaaaaaaaaaaaaaaaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (10, 'aaaaaaaaaaaaaaaaaaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (11, 'aaaaaaaaaaaaaaaaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (12, 'aaaaaaaaaaaaaaaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (13, 'aaaaaaaaaaaaaaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (14, 'aaaaaaaaaaaaaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (15, 'aaaaaaaaaaaaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (16, 'aaaaaaaaaaaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (17, 'aaaaaaaaaaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (18, 'aaaaaaaaaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (19, 'aaaaaaaaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (20, 'aaaaaaaaa', NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'aaaaaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'aaaaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'aaaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'aaaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'aaa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'aa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'a', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'bbbbbbbbbbbbbbbbb', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'bbbbbbbbbbbbbbb', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'bbbbbbbbbbbbb', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'bbbbbbbbbbb', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'bbbbbbbbbb', NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 'aaaa', NULL);
INSERT INTO public.solar_system VALUES (2, 'aaa', NULL);
INSERT INTO public.solar_system VALUES (3, 'aa', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'awawa', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'awaaaga', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'awga', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'wga', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'wg', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'g', NULL, NULL, NULL, 1);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: solar_system solar_system_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_name_key UNIQUE (name);


--
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

