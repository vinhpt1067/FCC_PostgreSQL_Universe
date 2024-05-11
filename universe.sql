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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying NOT NULL,
    diameter integer,
    composition text,
    is_potentially_hazardous boolean
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    size numeric,
    has_black_hole boolean,
    distance_from_earth numeric
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
    name character varying NOT NULL,
    planet_id integer,
    distance_from_planet integer,
    is_inhabited boolean,
    has_water boolean
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
    name character varying NOT NULL,
    star_id integer,
    radius integer,
    has_life boolean,
    atmosphere text
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
    name character varying NOT NULL,
    galaxy_id integer,
    luminosity integer,
    is_supernova boolean,
    temperature integer
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 940, 'Rock and ice', false);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 525, 'Basaltic rock', false);
INSERT INTO public.asteroid VALUES (3, 'Eros', 34, 'Stony and metallic', true);
INSERT INTO public.asteroid VALUES (4, 'Bennu', 492, 'Carbonaceous material', true);
INSERT INTO public.asteroid VALUES (5, 'Apophis', 370, 'Stony and metallic', true);
INSERT INTO public.asteroid VALUES (6, 'Chiron', 207, 'Centaur (icy body)', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000000000, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 120000000000, false, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 50000000000, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 600000000000, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 80000000000, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 60000000000, false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (114, 'Luna', 1, 384400, false, true);
INSERT INTO public.moon VALUES (115, 'Phobos', 2, 9377, false, false);
INSERT INTO public.moon VALUES (116, 'Europa', 1, 671034, false, true);
INSERT INTO public.moon VALUES (117, 'Titan', 4, 1221870, false, true);
INSERT INTO public.moon VALUES (118, 'Triton', 5, 354759, false, true);
INSERT INTO public.moon VALUES (119, 'Ganymede', 3, 1070400, false, true);
INSERT INTO public.moon VALUES (120, 'Callisto', 3, 1882700, false, true);
INSERT INTO public.moon VALUES (121, 'Io', 1, 421700, false, true);
INSERT INTO public.moon VALUES (122, 'Rhea', 4, 527040, false, true);
INSERT INTO public.moon VALUES (123, 'Enceladus', 4, 237950, false, true);
INSERT INTO public.moon VALUES (124, 'Dione', 4, 377420, false, true);
INSERT INTO public.moon VALUES (125, 'Hyperion', 4, 148100, false, true);
INSERT INTO public.moon VALUES (126, 'Ariel', 5, 190900, false, true);
INSERT INTO public.moon VALUES (127, 'Umbriel', 5, 266300, false, true);
INSERT INTO public.moon VALUES (128, 'Miranda', 5, 129390, false, true);
INSERT INTO public.moon VALUES (129, 'Titania', 5, 435910, false, true);
INSERT INTO public.moon VALUES (130, 'Oberon', 5, 583520, false, true);
INSERT INTO public.moon VALUES (131, 'Tethys', 4, 294670, false, true);
INSERT INTO public.moon VALUES (132, 'Charon', 6, 19591, false, true);
INSERT INTO public.moon VALUES (133, 'Iapetus', 4, 356082, false, true);
INSERT INTO public.moon VALUES (134, 'Moonlet', 6, 235, false, false);
INSERT INTO public.moon VALUES (135, 'Proteus', 5, 117647, false, true);
INSERT INTO public.moon VALUES (136, 'Dactyl', 2, 234, false, false);
INSERT INTO public.moon VALUES (137, 'Amalthea', 1, 181400, false, true);
INSERT INTO public.moon VALUES (138, 'Phoebe', 3, 12947000, false, true);
INSERT INTO public.moon VALUES (139, 'Nereid', 5, 5513813, false, true);
INSERT INTO public.moon VALUES (140, 'Janus', 4, 151472, false, true);
INSERT INTO public.moon VALUES (141, 'Pandora', 4, 141720, false, true);
INSERT INTO public.moon VALUES (142, 'Prometheus', 4, 139350, false, true);
INSERT INTO public.moon VALUES (143, 'Larissa', 5, 73560, false, true);
INSERT INTO public.moon VALUES (144, 'Calypso', 4, 294670, false, true);
INSERT INTO public.moon VALUES (145, 'Atlas', 4, 137670, false, true);
INSERT INTO public.moon VALUES (146, 'Epimetheus', 4, 151422, false, true);
INSERT INTO public.moon VALUES (147, 'Thebe', 1, 221900, false, true);
INSERT INTO public.moon VALUES (148, 'Deimos', 2, 23460, false, false);
INSERT INTO public.moon VALUES (149, 'Hyperion2', 4, 148100, false, true);
INSERT INTO public.moon VALUES (150, 'Ophelia', 7, 53934, false, true);
INSERT INTO public.moon VALUES (151, 'Lysithea', 5, 11720000, false, true);
INSERT INTO public.moon VALUES (152, 'Paaliaq', 5, 15053000, false, true);
INSERT INTO public.moon VALUES (153, 'Thyone', 5, 20272000, false, true);
INSERT INTO public.moon VALUES (154, 'Puck', 5, 86000, false, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 6371, true, 'Nitrogen-Oxygen');
INSERT INTO public.planet VALUES (2, 'Mars', 1, 3389, false, 'Carbon dioxide');
INSERT INTO public.planet VALUES (3, 'Jupiter', 1, 69911, false, 'Hydrogen-Helium');
INSERT INTO public.planet VALUES (4, 'Saturn', 1, 58232, false, 'Hydrogen-Helium');
INSERT INTO public.planet VALUES (5, 'Neptune', 1, 24622, false, 'Hydrogen-Helium');
INSERT INTO public.planet VALUES (6, 'Uranus', 1, 25362, false, 'Hydrogen-Helium');
INSERT INTO public.planet VALUES (7, 'Venus', 1, 6051, false, 'Carbon dioxide');
INSERT INTO public.planet VALUES (8, 'Mercury', 1, 2439, false, 'Trace atmosphere');
INSERT INTO public.planet VALUES (9, 'Pluto', 1, 1188, false, 'Nitrogen-Methane');
INSERT INTO public.planet VALUES (10, 'Kepler-452b', 2, 6371, true, 'Unknown');
INSERT INTO public.planet VALUES (11, 'Gliese 581c', 3, 6371, true, 'Unknown');
INSERT INTO public.planet VALUES (12, 'HD 209458 b', 4, 6371, false, 'Unknown');
INSERT INTO public.planet VALUES (13, 'TrES-2b', 5, 6371, false, 'Unknown');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1, false, 5778);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, 0, false, 3042);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 1, 100000, true, 3600);
INSERT INTO public.star VALUES (4, 'Sirius', 1, 25, false, 9940);
INSERT INTO public.star VALUES (5, 'Vega', 1, 40, false, 9600);
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 1, 2, false, 5790);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 154, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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

