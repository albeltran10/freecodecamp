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
-- Name: country; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.country (
    country_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    miscellaneous character varying(30),
    president character varying(30)
);


ALTER TABLE public.country OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    description text,
    sun boolean NOT NULL,
    miscellaneous character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    size_km numeric(2,1),
    planet_id integer NOT NULL,
    miscellaneous character varying(30)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    size_km integer,
    distance_sun_km integer,
    sun boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    miscellaneous character varying(30),
    enabled boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.country VALUES (1, 'Pais1', 1, NULL, NULL);
INSERT INTO public.country VALUES (2, 'Pais2', 1, NULL, NULL);
INSERT INTO public.country VALUES (3, 'Pais3', 1, NULL, NULL);
INSERT INTO public.country VALUES (4, 'Pais4', 1, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Eliptica', 'Pueden ser nombradas desde E0 hasta E7', false, NULL);
INSERT INTO public.galaxy VALUES (2, 'Eliptica1', 'Pueden ser nombradas desde E0 hasta E7', false, NULL);
INSERT INTO public.galaxy VALUES (3, 'Eliptica2', 'Pueden ser nombradas desde E0 hasta E7', false, NULL);
INSERT INTO public.galaxy VALUES (4, 'Eliptica3', 'Pueden ser nombradas desde E0 hasta E7', false, NULL);
INSERT INTO public.galaxy VALUES (5, 'Eliptica4', 'Pueden ser nombradas desde E0 hasta E7', false, NULL);
INSERT INTO public.galaxy VALUES (6, 'Eliptica5', 'Pueden ser nombradas desde E0 hasta E7', false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 2.0, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Luna', 2.0, 1, NULL);
INSERT INTO public.moon VALUES (3, 'Luna', 2.0, 1, NULL);
INSERT INTO public.moon VALUES (4, 'Luna', 2.0, 1, NULL);
INSERT INTO public.moon VALUES (5, 'Luna', 2.0, 1, NULL);
INSERT INTO public.moon VALUES (6, 'Luna', 2.0, 1, NULL);
INSERT INTO public.moon VALUES (7, 'Luna', 2.0, 1, NULL);
INSERT INTO public.moon VALUES (8, 'Luna', 2.0, 1, NULL);
INSERT INTO public.moon VALUES (9, 'Luna', 2.0, 1, NULL);
INSERT INTO public.moon VALUES (10, 'Luna', 2.0, 1, NULL);
INSERT INTO public.moon VALUES (11, 'Luna', 2.0, 1, NULL);
INSERT INTO public.moon VALUES (12, 'Luna', 2.0, 1, NULL);
INSERT INTO public.moon VALUES (13, 'Luna', 2.0, 1, NULL);
INSERT INTO public.moon VALUES (14, 'Luna', 2.0, 1, NULL);
INSERT INTO public.moon VALUES (15, 'Luna', 2.0, 1, NULL);
INSERT INTO public.moon VALUES (16, 'Luna', 2.0, 1, NULL);
INSERT INTO public.moon VALUES (17, 'Luna', 2.0, 1, NULL);
INSERT INTO public.moon VALUES (18, 'Luna', 2.0, 1, NULL);
INSERT INTO public.moon VALUES (19, 'Luna', 2.0, 1, NULL);
INSERT INTO public.moon VALUES (20, 'Luna', 2.0, 1, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tierra', 2000, 10000, true, 1);
INSERT INTO public.planet VALUES (2, 'Tierra1', 1000, 10000, true, 1);
INSERT INTO public.planet VALUES (3, 'Tierra2', 1000, 10000, true, 1);
INSERT INTO public.planet VALUES (4, 'Tierra3', 1000, 10000, true, 1);
INSERT INTO public.planet VALUES (5, 'Tierra4', 1000, 10000, true, 1);
INSERT INTO public.planet VALUES (6, 'Tierra5', 1000, 10000, true, 1);
INSERT INTO public.planet VALUES (7, 'Tierra6', 1000, 10000, true, 1);
INSERT INTO public.planet VALUES (8, 'Tierra7', 1000, 10000, true, 1);
INSERT INTO public.planet VALUES (9, 'Tierra8', 1000, 10000, true, 1);
INSERT INTO public.planet VALUES (10, 'Tierra9', 1000, 10000, true, 1);
INSERT INTO public.planet VALUES (11, 'Tierra10', 1000, 10000, true, 1);
INSERT INTO public.planet VALUES (12, 'Tierra11', 1000, 10000, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Start1', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'start2', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'start3', 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'start4', 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'start5', 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'start6', 1, NULL, NULL);
INSERT INTO public.star VALUES (7, 'start7', 1, NULL, NULL);


--
-- Name: country country_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_id_key UNIQUE (country_id);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_id);


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
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet fkplanet_start; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fkplanet_start FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

