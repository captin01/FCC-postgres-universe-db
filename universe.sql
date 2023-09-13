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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    size integer NOT NULL,
    speed integer NOT NULL,
    temp numeric,
    color text,
    dormant boolean,
    visible_to_eye boolean
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
-- Name: humans; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.humans (
    humans_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    email text
);


ALTER TABLE public.humans OWNER TO freecodecamp;

--
-- Name: humans_humans_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.humans_humans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.humans_humans_id_seq OWNER TO freecodecamp;

--
-- Name: humans_humans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.humans_humans_id_seq OWNED BY public.humans.humans_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    size integer NOT NULL,
    speed integer NOT NULL,
    temp numeric,
    color text,
    dormant boolean,
    visible_to_eye boolean,
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
    planet_id integer NOT NULL,
    name character varying(30),
    size integer NOT NULL,
    speed integer NOT NULL,
    temp numeric,
    color text,
    dormant boolean,
    visible_to_eye boolean,
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
    star_id integer NOT NULL,
    name character varying(30),
    size integer NOT NULL,
    speed integer NOT NULL,
    temp numeric,
    color text,
    dormant boolean,
    visible_to_eye boolean,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: humans humans_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.humans ALTER COLUMN humans_id SET DEFAULT nextval('public.humans_humans_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1, 1, 1, 'White', false, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1, 1, 1, 'Blue', false, false);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 1, 1, 1, 'White', false, false);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 1, 1, 1, 'Blue', false, false);
INSERT INTO public.galaxy VALUES (5, 'Orion', 1, 1, 1, 'Blue', false, false);
INSERT INTO public.galaxy VALUES (6, 'Pinewheel', 1, 1, 1, 'Blue', false, false);


--
-- Data for Name: humans; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.humans VALUES (1, 'John', 30, 'John@gmail.com');
INSERT INTO public.humans VALUES (2, 'Alice', 25, 'alice@gmail.com');
INSERT INTO public.humans VALUES (3, 'Bob', 28, 'bob@gmail.com');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 1, 1, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 1, 1, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (4, 'Pandora moon 1', 1, 1, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (5, 'Pandora moon 2', 1, 1, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (6, 'Tatooine moon 1', 1, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (7, 'Tatooine moon 2', 1, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (8, 'Alderaan moon 1', 1, 1, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (9, 'Alderaan moon 2', 1, 1, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (10, 'Naboo moon 1', 1, 1, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (11, 'Naboo moon 2', 1, 1, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (12, 'Vulcan moon 1', 1, 1, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (13, 'Vulcan moon 2', 1, 1, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (14, 'Venus moon 1', 1, 1, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (15, 'Venus moon 2', 1, 1, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (16, 'Mercury moon 1', 1, 1, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (17, 'Mercury moon 2', 1, 1, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (18, 'Krypton moon 1', 1, 1, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (19, 'Krypton moon 2', 1, 1, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (20, 'Cybertron moon 1', 1, 1, NULL, NULL, NULL, NULL, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 1, 1, 'Blue', false, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 1, 1, 'Red', false, true, 1);
INSERT INTO public.planet VALUES (3, 'Pandora', 1, 1, 1, 'Blue', false, false, 3);
INSERT INTO public.planet VALUES (4, 'Tatooine', 1, 1, 1, 'Beige', false, false, 3);
INSERT INTO public.planet VALUES (5, 'Alderaan', 1, 1, 1, 'Blue', false, false, 3);
INSERT INTO public.planet VALUES (6, 'Naboo', 1, 1, 1, 'Green', false, false, 3);
INSERT INTO public.planet VALUES (7, 'Vulcan', 1, 1, 1, 'Red', false, false, 4);
INSERT INTO public.planet VALUES (8, 'Venus', 1, 1, 1, 'Yellow', false, true, 1);
INSERT INTO public.planet VALUES (10, 'Krypton', 1, 1, 1, 'Green', false, false, 5);
INSERT INTO public.planet VALUES (11, 'Crybertron', 1, 1, 1, 'Blue', false, false, 5);
INSERT INTO public.planet VALUES (12, 'Pern', 1, 1, 1, 'Blue', false, false, 6);
INSERT INTO public.planet VALUES (9, 'Mercury', 1, 1, 1, 'Grey', false, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1, 0.5, 'White', false, true, 1);
INSERT INTO public.star VALUES (2, 'Alpha', 1, 1, 0.7, 'Yellow', false, true, 1);
INSERT INTO public.star VALUES (3, 'Andromeda Star', 1, 1, 0.5, 'Blue', false, false, 2);
INSERT INTO public.star VALUES (4, 'Sombrero star', 1, 1, 0.5, 'White', false, true, 3);
INSERT INTO public.star VALUES (5, 'Triangulum star', 1, 1, 0.7, 'Yellow', false, false, 4);
INSERT INTO public.star VALUES (6, 'Orion', 1, 1, 0.8, 'Blue', false, true, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: humans_humans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.humans_humans_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: humans humans_email_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.humans
    ADD CONSTRAINT humans_email_key UNIQUE (email);


--
-- Name: humans humans_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.humans
    ADD CONSTRAINT humans_pkey PRIMARY KEY (humans_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_name_column; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name_column UNIQUE (name);


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

