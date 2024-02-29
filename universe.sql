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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(100) NOT NULL,
    population integer,
    has_water boolean,
    continent text
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    size integer,
    has_supermassive_black_hole boolean,
    age integer
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
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    orbit_period numeric,
    is_habitable boolean,
    planet_id integer,
    distance_from_planet numeric
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
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    distance_from_star numeric,
    atmosphere text,
    has_life boolean,
    star_id integer,
    diameter numeric
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
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    temperature numeric,
    is_active boolean,
    galaxy_id integer,
    luminosity numeric
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
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


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
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'Earth', 7800, true, NULL);
INSERT INTO public.earth VALUES (2, 'Earth2', 78000, true, NULL);
INSERT INTO public.earth VALUES (3, 'Earth3', 7800000, true, NULL);
INSERT INTO public.earth VALUES (4, 'Earth4', 78000000, true, NULL);
INSERT INTO public.earth VALUES (5, 'Earth5', 780000000, true, NULL);
INSERT INTO public.earth VALUES (6, 'Earth6', 780000, true, NULL);
INSERT INTO public.earth VALUES (7, 'Earth7', 7800, true, NULL);
INSERT INTO public.earth VALUES (17, 'Earth8', 6000000, false, NULL);
INSERT INTO public.earth VALUES (18, 'Earth9', 7060000, false, NULL);
INSERT INTO public.earth VALUES (19, 'Earth10', 78000000, true, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 90000, true, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 80000, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 120000, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 85000, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'Bode''s', 95000, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 27, false, 3, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 0.32, false, 4, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 1.3, false, 4, NULL);
INSERT INTO public.moon VALUES (4, 'Ganymede', 7.15, false, 5, NULL);
INSERT INTO public.moon VALUES (5, 'Titan', 15.95, false, 6, NULL);
INSERT INTO public.moon VALUES (6, 'Callisto', 16.69, false, 5, NULL);
INSERT INTO public.moon VALUES (7, 'Io', 1.77, false, 5, NULL);
INSERT INTO public.moon VALUES (8, 'Europa', 3.55, false, 5, NULL);
INSERT INTO public.moon VALUES (9, 'Triton', 5.88, false, 8, NULL);
INSERT INTO public.moon VALUES (10, 'Enceladus', 1.37, false, 6, NULL);
INSERT INTO public.moon VALUES (11, 'Luna', 27.32, false, 3, NULL);
INSERT INTO public.moon VALUES (12, 'Charon', 6.39, false, 9, NULL);
INSERT INTO public.moon VALUES (13, 'Titania', 8.71, false, 7, NULL);
INSERT INTO public.moon VALUES (14, 'Rhea', 4.52, false, 6, NULL);
INSERT INTO public.moon VALUES (15, 'Dione', 2.74, false, 6, NULL);
INSERT INTO public.moon VALUES (16, 'Ariel', 2.52, false, 7, NULL);
INSERT INTO public.moon VALUES (17, 'Umbriel', 4.14, false, 7, NULL);
INSERT INTO public.moon VALUES (18, 'Tethys', 1.89, false, 6, NULL);
INSERT INTO public.moon VALUES (19, 'Iapetus', 79.33, false, 6, NULL);
INSERT INTO public.moon VALUES (20, 'Miranda', 1.41, false, 8, NULL);
INSERT INTO public.moon VALUES (21, 'Proteus', 1.12, false, 8, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 57909175, 'Thin', false, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 108208930, 'Carbon dioxide', false, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 149597870, 'Nitrogen, oxygen', true, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 227936640, 'Carbon dioxide', false, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 778412010, 'Hydrogen, helium', false, 2, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 1426725400, 'Hydrogen, helium', false, 2, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 2870972200, 'Hydrogen, helium, methane', false, 2, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 4503443660, 'Hydrogen, helium, methane', false, 2, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 5906376000, 'Nitrogen, methane', false, 2, NULL);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 59870000, 'Unknown', true, 3, NULL);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri b', 45000000, 'Unknown', true, 4, NULL);
INSERT INTO public.planet VALUES (12, 'Trappist-1d', 39300000, 'Unknown', true, 5, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 5778, true, 1, NULL);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 3042, true, 2, NULL);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 5790, true, 2, NULL);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 5260, true, 2, NULL);
INSERT INTO public.star VALUES (5, 'Barnard''s Star', 3280, true, 2, NULL);
INSERT INTO public.star VALUES (6, 'Luhman 16', 2250, true, 2, NULL);
INSERT INTO public.star VALUES (44, 'Vega', 9602, true, 1, NULL);
INSERT INTO public.star VALUES (45, 'Sirius', 9940, false, 1, NULL);
INSERT INTO public.star VALUES (46, 'Betelgeuse', 3493, true, 1, NULL);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 19, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 44, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 53, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 56, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 46, true);


--
-- Name: earth earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_key UNIQUE (name);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


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

