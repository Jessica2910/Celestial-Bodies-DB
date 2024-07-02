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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    size_in_lightyears numeric,
    type text,
    age_in_millions_of_years numeric,
    name character varying(60) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer,
    size_in_km integer,
    distance_from_planet_in_km numeric,
    name character varying(60) NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer,
    life boolean,
    water boolean,
    name character varying(60) NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    type text,
    distance_from_earth_in_lightyears integer,
    galaxy_id integer,
    name character varying(60) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 1, 'Andromeda');
INSERT INTO public.constellation VALUES (2, 4, 'Triangulum');
INSERT INTO public.constellation VALUES (3, 5, 'Sculptor');
INSERT INTO public.constellation VALUES (4, 6, 'Centaurus');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 152000, 'Barred Spiral', 10.01, 'Andromeda');
INSERT INTO public.galaxy VALUES (2, 200000, 'Intermediate Spiral', 12900, 'Eye of God');
INSERT INTO public.galaxy VALUES (3, 97000, 'Lenticular', 13.27, 'Centaurus A');
INSERT INTO public.galaxy VALUES (4, 120500, 'Intermediate Spiral', 5.7, 'Sculptor');
INSERT INTO public.galaxy VALUES (5, 61100, 'Spiral', 15000, 'Triangulum');
INSERT INTO public.galaxy VALUES (6, 96000, 'Grand Design Spiral', 13310, 'Bodes');
INSERT INTO public.galaxy VALUES (7, 100000, 'Barred Spiral', 13610, 'Milkyway');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 3475, 384400, 'Luna');
INSERT INTO public.moon VALUES (2, 6, 25, 6000, 'Phobos');
INSERT INTO public.moon VALUES (3, 6, 15, 14576, 'Deimos');
INSERT INTO public.moon VALUES (4, 10, 58, 48227, 'Naiad');
INSERT INTO public.moon VALUES (5, 10, 80, 50074, 'Thalassa');
INSERT INTO public.moon VALUES (6, 10, 148, 52526, 'Despina');
INSERT INTO public.moon VALUES (7, 10, 158, 61953, 'Galatea');
INSERT INTO public.moon VALUES (8, 10, 208, 73548, 'Larissa');
INSERT INTO public.moon VALUES (9, 10, 436, 117647, 'Proteus');
INSERT INTO public.moon VALUES (10, 10, 2704, 354300, 'Triton');
INSERT INTO public.moon VALUES (11, 10, 340, 5513400, 'Nereid');
INSERT INTO public.moon VALUES (12, 10, 61, 14728000, 'Halimede');
INSERT INTO public.moon VALUES (13, 10, 40, 22422000, 'Sao');
INSERT INTO public.moon VALUES (14, 10, 40, 23571000, 'Laomedeia');
INSERT INTO public.moon VALUES (15, 10, 38, 46695000, 'Psamathe');
INSERT INTO public.moon VALUES (16, 10, 60, 48387000, 'Neso');
INSERT INTO public.moon VALUES (17, 9, 1578, 435840, 'Titania');
INSERT INTO public.moon VALUES (18, 9, 1522, 582600, 'Oberon');
INSERT INTO public.moon VALUES (19, 9, 470, 129800, 'Miranda');
INSERT INTO public.moon VALUES (20, 9, 579, 190900, 'Ariel');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, false, false, 'Spe');
INSERT INTO public.planet VALUES (2, 1, false, true, 'Majriti');
INSERT INTO public.planet VALUES (3, 3, true, true, 'Earth');
INSERT INTO public.planet VALUES (4, 3, false, true, 'Mercury');
INSERT INTO public.planet VALUES (5, 3, false, true, 'Venus');
INSERT INTO public.planet VALUES (6, 3, false, true, 'Mars');
INSERT INTO public.planet VALUES (7, 3, false, true, 'Jupiter');
INSERT INTO public.planet VALUES (8, 3, false, true, 'Saturn');
INSERT INTO public.planet VALUES (9, 3, false, true, 'Uranus');
INSERT INTO public.planet VALUES (10, 3, false, true, 'Neptune');
INSERT INTO public.planet VALUES (11, 7, false, NULL, 'Kepler-186f');
INSERT INTO public.planet VALUES (12, 8, false, NULL, 'Gliese 667 Cc');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Orange-Hued Giant', 247, 1, '14 Andromedae');
INSERT INTO public.star VALUES (2, 'Yellow-White Dwarf', 44, 1, 'Titawin');
INSERT INTO public.star VALUES (3, 'Yellow Dwarf', 0, 7, 'Sun');
INSERT INTO public.star VALUES (4, 'Yellow Giant', 391, 5, 'Alpha Trianguli');
INSERT INTO public.star VALUES (5, 'Blue Giant', 780, 4, 'Alpha Sculptoris');
INSERT INTO public.star VALUES (6, 'Orange Dwarf', 59, 3, 'Theta Centauri');
INSERT INTO public.star VALUES (7, 'Red Dwarf', 579, 7, 'Kepler-186');
INSERT INTO public.star VALUES (8, 'Red Dwarf', 23, 7, 'Gliese 667');


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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

