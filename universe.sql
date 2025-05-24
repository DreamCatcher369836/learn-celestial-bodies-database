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
    name character varying NOT NULL,
    description text,
    galaxy_type text,
    distance_from_earth numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: mission; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.mission (
    mission_id integer NOT NULL,
    name character varying NOT NULL,
    launch_date date,
    target_type text,
    target_id integer,
    description text
);


ALTER TABLE public.mission OWNER TO freecodecamp;

--
-- Name: mission_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.mission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mission_id_seq OWNER TO freecodecamp;

--
-- Name: mission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.mission_id_seq OWNED BY public.mission.mission_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    star_id integer,
    has_life boolean,
    is_spherical boolean,
    planet_types text,
    age_in_millions_of_years integer,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    age_in_millions_of_years integer,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: mission mission_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mission ALTER COLUMN mission_id SET DEFAULT nextval('public.mission_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'Closest spiral galaxy', 'Spiral', 2537000);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Third-largest in Local Group', 'Spiral', 3000000);
INSERT INTO public.galaxy VALUES (5, 'Messier 81', 'Bright spiral in Ursa Major', 'Spiral', 11900000);
INSERT INTO public.galaxy VALUES (6, 'NGC 1300', 'Large barred spiral galaxy', 'Barred Spiral', 61000000);
INSERT INTO public.galaxy VALUES (7, 'Whirlpool Galaxy', 'Famous interacting galaxy pair', 'Spiral', 23000000);


--
-- Data for Name: mission; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.mission VALUES (1, 'Apollo 11', '1969-07-16', 'moon', 2, 'First manned lunar landing');
INSERT INTO public.mission VALUES (2, 'Voyager 1', '1977-09-05', 'planet', 2, 'Flyby of outer planets and beyond');
INSERT INTO public.mission VALUES (3, 'Kepler Mission', '2009-03-07', 'star', 2, 'Exoplanet search via transit method');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Moon', 'Earth''s natural satellite', true, 2);
INSERT INTO public.moon VALUES (10, 'Phobos', 'Larger of Mars'' moons', false, 7);
INSERT INTO public.moon VALUES (11, 'Europa', 'Icy moon of Jupiter with potential subsurface ocean', true, 8);
INSERT INTO public.moon VALUES (12, 'Io', 'Volcanically active moon of Jupiter', true, 8);
INSERT INTO public.moon VALUES (13, 'Ganymede', 'Largest moon in the Solar System', true, 8);
INSERT INTO public.moon VALUES (14, 'Callisto', 'Heavily cratered moon of Jupiter', true, 8);
INSERT INTO public.moon VALUES (15, 'Titan', 'Largest moon of Saturn, thick atmosphere', true, 9);
INSERT INTO public.moon VALUES (16, 'Rhea', 'Second-largest Saturnian moon', true, 9);
INSERT INTO public.moon VALUES (17, 'Iapetus', 'Saturn moon with two-tone coloration', true, 9);
INSERT INTO public.moon VALUES (18, 'Enceladus', 'Icy moon of Saturn with geysers', true, 9);
INSERT INTO public.moon VALUES (19, 'Miranda', 'Moon of Uranus with unusual geology', true, 10);
INSERT INTO public.moon VALUES (20, 'Ariel', 'Bright Uranian moon with ice canyons', true, 10);
INSERT INTO public.moon VALUES (21, 'Umbriel', 'Dark Uranian moon', true, 10);
INSERT INTO public.moon VALUES (22, 'Triton', 'Retrograde orbit moon of Neptune', true, 11);
INSERT INTO public.moon VALUES (23, 'Nereid', 'Highly eccentric orbit around Neptune', false, 11);
INSERT INTO public.moon VALUES (24, 'Charon', 'Large moon of dwarf planet Pluto', true, 2);
INSERT INTO public.moon VALUES (25, 'Deimos', 'Small Martian moon', false, 7);
INSERT INTO public.moon VALUES (26, 'Dione', 'Mid-sized Saturnian moon', true, 9);
INSERT INTO public.moon VALUES (27, 'Tethys', 'Saturn moon with Ithaca Chasma', true, 9);
INSERT INTO public.moon VALUES (28, 'Oberon', 'Second-largest moon of Uranus', true, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Earth', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Mars', 2, false, true, 'Terrestrial', 4600, 'Known as the Red Planet');
INSERT INTO public.planet VALUES (8, 'Jupiter', 2, false, true, 'Gas Giant', 4600, 'Largest planet in the Solar System');
INSERT INTO public.planet VALUES (9, 'Venus', 2, false, true, 'Terrestrial', 4600, 'Hottest planet in our solar system');
INSERT INTO public.planet VALUES (10, 'Mercury', 2, false, true, 'Terrestrial', 4600, 'Closest planet to the Sun');
INSERT INTO public.planet VALUES (11, 'Saturn', 2, false, true, 'Gas Giant', 4600, 'Famous for its ring system');
INSERT INTO public.planet VALUES (12, 'Uranus', 2, false, true, 'Ice Giant', 4600, 'Rotates on its side');
INSERT INTO public.planet VALUES (13, 'Neptune', 2, false, true, 'Ice Giant', 4600, 'Farthest known planet from the Sun');
INSERT INTO public.planet VALUES (14, 'Kepler-186f', 2, false, true, 'Exoplanet', 5000, 'Earth-size planet in habitable zone');
INSERT INTO public.planet VALUES (15, 'Gliese 581g', 2, false, true, 'Exoplanet', 7000, 'Possibly habitable exoplanet');
INSERT INTO public.planet VALUES (16, 'HD 209458 b', 2, false, true, 'Gas Giant', 6000, 'First exoplanet detected transiting');
INSERT INTO public.planet VALUES (17, '51 Pegasi b', 2, false, true, 'Gas Giant', 8000, 'First discovered exoplanet orbiting a sun-like star');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sun', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 'Brightest star in the night sky', 242, true, 1);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'Closest known star to the Sun', 4500, true, 1);
INSERT INTO public.star VALUES (6, 'Vega', 'Bright star in Lyra', 455, true, 1);
INSERT INTO public.star VALUES (7, 'Betelgeuse', 'Red supergiant in Orion', 10000, true, 1);
INSERT INTO public.star VALUES (8, 'Alpha Centauri', 'Closest star system to the Sun', 5000, true, 1);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: mission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.mission_id_seq', 3, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 28, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 17, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 8, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: mission mission_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mission
    ADD CONSTRAINT mission_pkey PRIMARY KEY (mission_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: mission unique_mission_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mission
    ADD CONSTRAINT unique_mission_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- PostgreSQL database dump complete
--

