--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: constellations; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellations (
    constellations_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_to_earth_in_light_years integer
);


ALTER TABLE public.constellations OWNER TO freecodecamp;

--
-- Name: constellations_constellations_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellations_constellations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellations_constellations_id_seq OWNER TO freecodecamp;

--
-- Name: constellations_constellations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellations_constellations_id_seq OWNED BY public.constellations.constellations_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    idx integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    total_mass numeric(20,10),
    description text,
    has_life boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    idx integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    total_mass numeric(20,10),
    description text,
    has_life boolean,
    moon_id integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    idx integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    total_mass numeric(20,10),
    description text,
    has_life boolean,
    planet_id integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    idx integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    total_mass numeric(20,10),
    description text,
    has_life boolean,
    star_id integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: constellations constellations_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations ALTER COLUMN constellations_id SET DEFAULT nextval('public.constellations_constellations_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: constellations; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellations VALUES (101, 'krebulon', NULL);
INSERT INTO public.constellations VALUES (102, 'migmar', NULL);
INSERT INTO public.constellations VALUES (103, 'zipzap', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (101, 'Milky Way', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES (102, 'Canis Major', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.galaxy VALUES (103, 'Sagittarius Dwarf', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.galaxy VALUES (104, 'Magellan', NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.galaxy VALUES (105, 'Andromeda', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.galaxy VALUES (106, 'Triangulum', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.galaxy VALUES (107, 'Centaurus A', NULL, NULL, NULL, NULL, NULL, 7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (101, 'Fleebonax 9', NULL, NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO public.moon VALUES (102, 'Ganymede', NULL, NULL, NULL, NULL, NULL, 2, 2);
INSERT INTO public.moon VALUES (103, 'Titan', NULL, NULL, NULL, NULL, NULL, 3, 3);
INSERT INTO public.moon VALUES (104, 'Callisto', NULL, NULL, NULL, NULL, NULL, 4, 4);
INSERT INTO public.moon VALUES (105, 'Io', NULL, NULL, NULL, NULL, NULL, 5, 5);
INSERT INTO public.moon VALUES (106, 'Luna', NULL, NULL, NULL, NULL, NULL, 6, 6);
INSERT INTO public.moon VALUES (107, 'Europa', NULL, NULL, NULL, NULL, NULL, 7, 7);
INSERT INTO public.moon VALUES (108, 'Triton', NULL, NULL, NULL, NULL, NULL, 8, 8);
INSERT INTO public.moon VALUES (109, 'Enceladus', NULL, NULL, NULL, NULL, NULL, 9, 9);
INSERT INTO public.moon VALUES (110, 'Mimas', NULL, NULL, NULL, NULL, NULL, 10, 10);
INSERT INTO public.moon VALUES (111, 'Phobos', NULL, NULL, NULL, NULL, NULL, 11, 11);
INSERT INTO public.moon VALUES (112, 'Deimos', NULL, NULL, NULL, NULL, NULL, 12, 12);
INSERT INTO public.moon VALUES (113, 'Charon', NULL, NULL, NULL, NULL, NULL, 13, 1);
INSERT INTO public.moon VALUES (114, 'Miranda', NULL, NULL, NULL, NULL, NULL, 14, 2);
INSERT INTO public.moon VALUES (115, 'Rhea', NULL, NULL, NULL, NULL, NULL, 15, 3);
INSERT INTO public.moon VALUES (116, 'Dione', NULL, NULL, NULL, NULL, NULL, 16, 4);
INSERT INTO public.moon VALUES (117, 'Tethys', NULL, NULL, NULL, NULL, NULL, 17, 5);
INSERT INTO public.moon VALUES (118, 'Hyperion', NULL, NULL, NULL, NULL, NULL, 18, 6);
INSERT INTO public.moon VALUES (119, 'Oberon', NULL, NULL, NULL, NULL, NULL, 19, 7);
INSERT INTO public.moon VALUES (120, 'Iapetus', NULL, NULL, NULL, NULL, NULL, 20, 8);
INSERT INTO public.moon VALUES (121, 'Phoebe', NULL, NULL, NULL, NULL, NULL, 21, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (101, 'neptune', NULL, NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO public.planet VALUES (102, 'Mercury', NULL, NULL, NULL, NULL, NULL, 2, 2);
INSERT INTO public.planet VALUES (103, 'Venus', NULL, NULL, NULL, NULL, NULL, 3, 3);
INSERT INTO public.planet VALUES (104, 'Mars', NULL, NULL, NULL, NULL, NULL, 4, 4);
INSERT INTO public.planet VALUES (105, 'Jupiter', NULL, NULL, NULL, NULL, NULL, 5, 5);
INSERT INTO public.planet VALUES (106, 'Saturn', NULL, NULL, NULL, NULL, NULL, 6, 6);
INSERT INTO public.planet VALUES (107, 'Uranus', NULL, NULL, NULL, NULL, NULL, 7, 1);
INSERT INTO public.planet VALUES (108, 'Kepler-22b', NULL, NULL, NULL, NULL, NULL, 8, 2);
INSERT INTO public.planet VALUES (109, 'Proxima', NULL, NULL, NULL, NULL, NULL, 9, 3);
INSERT INTO public.planet VALUES (110, 'Centauri b', NULL, NULL, NULL, NULL, NULL, 10, 4);
INSERT INTO public.planet VALUES (111, 'Loofa-B', NULL, NULL, NULL, NULL, NULL, 11, 5);
INSERT INTO public.planet VALUES (112, 'Spanglar', NULL, NULL, NULL, NULL, NULL, 12, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (101, 'Orion', NULL, NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO public.star VALUES (102, 'Sirius', NULL, NULL, NULL, NULL, NULL, 2, 2);
INSERT INTO public.star VALUES (103, 'Canopus', NULL, NULL, NULL, NULL, NULL, 3, 3);
INSERT INTO public.star VALUES (104, 'Arcturus', NULL, NULL, NULL, NULL, NULL, 4, 4);
INSERT INTO public.star VALUES (105, 'Vega', NULL, NULL, NULL, NULL, NULL, 5, 5);
INSERT INTO public.star VALUES (106, 'Procyon', NULL, NULL, NULL, NULL, NULL, 6, 6);


--
-- Name: constellations_constellations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellations_constellations_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constellations constellations_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_name_key UNIQUE (name);


--
-- Name: constellations constellations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_pkey PRIMARY KEY (constellations_id);


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

