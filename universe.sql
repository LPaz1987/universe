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
-- Name: constelation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constelation (
    name character varying NOT NULL,
    constelation_id integer NOT NULL,
    description text
);


ALTER TABLE public.constelation OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying NOT NULL,
    galaxy_type text,
    age integer,
    distance numeric,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying NOT NULL,
    size integer,
    "position" integer,
    moon_id integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying NOT NULL,
    age integer,
    has_life boolean,
    planet_id integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying NOT NULL,
    star_type text,
    is_spherical boolean,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: constelation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constelation VALUES ('orion', 1, NULL);
INSERT INTO public.constelation VALUES ('tauro', 2, NULL);
INSERT INTO public.constelation VALUES ('Piscis', 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda', NULL, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES ('Galaxy', NULL, NULL, NULL, 2);
INSERT INTO public.galaxy VALUES ('Black Eye', NULL, NULL, NULL, 3);
INSERT INTO public.galaxy VALUES ('Canis Mayor', NULL, NULL, NULL, 4);
INSERT INTO public.galaxy VALUES ('Tadpole', NULL, NULL, NULL, 5);
INSERT INTO public.galaxy VALUES ('Cigar', NULL, NULL, NULL, 6);
INSERT INTO public.galaxy VALUES ('CartWheel', NULL, NULL, NULL, 7);
INSERT INTO public.galaxy VALUES ('Whirpool', NULL, NULL, NULL, 8);
INSERT INTO public.galaxy VALUES ('Milky Way', NULL, NULL, NULL, 9);
INSERT INTO public.galaxy VALUES ('Magellanic', NULL, NULL, NULL, 10);
INSERT INTO public.galaxy VALUES ('Comet', NULL, NULL, NULL, 11);
INSERT INTO public.galaxy VALUES ('Antennae', NULL, NULL, NULL, 12);
INSERT INTO public.galaxy VALUES ('Backward', NULL, NULL, NULL, 13);
INSERT INTO public.galaxy VALUES ('Bodes', NULL, NULL, NULL, 14);
INSERT INTO public.galaxy VALUES ('Butterfly', NULL, NULL, NULL, 15);
INSERT INTO public.galaxy VALUES ('Circinus', NULL, NULL, NULL, 16);
INSERT INTO public.galaxy VALUES ('Condor', NULL, NULL, NULL, 17);
INSERT INTO public.galaxy VALUES ('Eye of Sauron', NULL, NULL, NULL, 18);
INSERT INTO public.galaxy VALUES ('Fireworks', NULL, NULL, NULL, 19);
INSERT INTO public.galaxy VALUES ('Hoags', NULL, NULL, NULL, 20);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon', NULL, NULL, 1, 3);
INSERT INTO public.moon VALUES ('worm', NULL, NULL, 2, 1);
INSERT INTO public.moon VALUES ('Wolf', NULL, NULL, 3, 5);
INSERT INTO public.moon VALUES ('Sturgeon', NULL, NULL, 4, 4);
INSERT INTO public.moon VALUES ('Cold', NULL, NULL, 5, 6);
INSERT INTO public.moon VALUES ('Elara', NULL, NULL, 6, 1);
INSERT INTO public.moon VALUES ('Altalune', NULL, NULL, 7, 5);
INSERT INTO public.moon VALUES ('Ayla', NULL, NULL, 8, 2);
INSERT INTO public.moon VALUES ('Buck', NULL, NULL, 9, 3);
INSERT INTO public.moon VALUES ('Aiday', NULL, NULL, 10, 4);
INSERT INTO public.moon VALUES ('Snow', NULL, NULL, 11, 4);
INSERT INTO public.moon VALUES ('Blue', NULL, NULL, 12, 5);
INSERT INTO public.moon VALUES ('Harvest', NULL, NULL, 13, 4);
INSERT INTO public.moon VALUES ('Corn', NULL, NULL, 14, 4);
INSERT INTO public.moon VALUES ('Worm', NULL, NULL, 15, 6);
INSERT INTO public.moon VALUES ('Flower', NULL, NULL, 16, 1);
INSERT INTO public.moon VALUES ('Strawbrry', NULL, NULL, 17, 2);
INSERT INTO public.moon VALUES ('Hunter', NULL, NULL, 18, 8);
INSERT INTO public.moon VALUES ('Black', NULL, NULL, 19, 7);
INSERT INTO public.moon VALUES ('March', NULL, NULL, 20, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('earth', NULL, NULL, 1, 2);
INSERT INTO public.planet VALUES ('venus', NULL, NULL, 2, 1);
INSERT INTO public.planet VALUES ('Marte', NULL, NULL, 3, 3);
INSERT INTO public.planet VALUES ('Jupiter', NULL, NULL, 4, 2);
INSERT INTO public.planet VALUES ('Saturno', NULL, NULL, 5, 4);
INSERT INTO public.planet VALUES ('mercurio', NULL, NULL, 6, 7);
INSERT INTO public.planet VALUES ('Urano', NULL, NULL, 7, 1);
INSERT INTO public.planet VALUES ('Pluto', NULL, NULL, 8, 5);
INSERT INTO public.planet VALUES ('MK17', NULL, NULL, 9, 10);
INSERT INTO public.planet VALUES ('Kripton', NULL, NULL, 10, 5);
INSERT INTO public.planet VALUES ('Namek', NULL, NULL, 11, 8);
INSERT INTO public.planet VALUES ('Glober', NULL, NULL, 12, 1);
INSERT INTO public.planet VALUES ('Adam', NULL, NULL, 13, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('alpha', NULL, NULL, 1, 6);
INSERT INTO public.star VALUES ('beta', NULL, NULL, 2, 10);
INSERT INTO public.star VALUES ('delta', NULL, NULL, 3, 2);
INSERT INTO public.star VALUES ('gamma', NULL, NULL, 4, 1);
INSERT INTO public.star VALUES ('epsilon', NULL, NULL, 5, 3);
INSERT INTO public.star VALUES ('zeta', NULL, NULL, 6, 3);
INSERT INTO public.star VALUES ('eta', NULL, NULL, 7, 2);
INSERT INTO public.star VALUES ('theta', NULL, NULL, 8, 1);
INSERT INTO public.star VALUES ('iota', NULL, NULL, 9, 1);
INSERT INTO public.star VALUES ('kappa', NULL, NULL, 10, 1);


--
-- Name: constelation constelation_constelation_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_constelation_id_key UNIQUE (constelation_id);


--
-- Name: constelation constelation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_pkey PRIMARY KEY (constelation_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

