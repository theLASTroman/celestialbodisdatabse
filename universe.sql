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
-- Name: filler; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.filler (
    filler_id integer NOT NULL,
    filler_int integer,
    filler_boolean boolean,
    name character varying(255) NOT NULL
);


ALTER TABLE public.filler OWNER TO freecodecamp;

--
-- Name: filler_filler_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.filler_filler_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filler_filler_id_seq OWNER TO freecodecamp;

--
-- Name: filler_filler_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.filler_filler_id_seq OWNED BY public.filler.filler_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    size_in_ly integer,
    speed numeric,
    description text
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
    is_spherical boolean,
    speed_in_mph integer,
    planet_id integer,
    name character varying(255) NOT NULL
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
    name character varying(255) NOT NULL,
    year_length integer,
    has_life boolean,
    has_moons boolean NOT NULL,
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
    color character varying(255),
    name character varying(255) NOT NULL,
    number_of_planets integer,
    is_binary boolean,
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
-- Name: filler filler_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.filler ALTER COLUMN filler_id SET DEFAULT nextval('public.filler_filler_id_seq'::regclass);


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
-- Data for Name: filler; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.filler VALUES (1, 1, true, 'James');
INSERT INTO public.filler VALUES (2, 2, false, 'David');
INSERT INTO public.filler VALUES (3, 3, true, 'Kyle');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 118468, 'Barred Spiral Galaxy with an estimated 400 billion planets);
');
INSERT INTO public.galaxy VALUES (2, 'Andromeda II', 110000, 134556, 'Massive Elliptical Galaxy');
INSERT INTO public.galaxy VALUES (3, 'M31', 61000, 97541, 'Spiral Galaxy');
INSERT INTO public.galaxy VALUES (4, 'Triangulu', 99500, 134000, 'Third Largest in Local Group');
INSERT INTO public.galaxy VALUES (5, 'Leo A', 65000, 87000, 'Small Satellite Galaxy of Triangulu');
INSERT INTO public.galaxy VALUES (6, 'Tucana', 30000, 65000, 'Little Known Satellite Galaxy of Andromeda II');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, true, 2288, 3, 'Luna');
INSERT INTO public.moon VALUES (2, true, 6523, 4, 'Example');
INSERT INTO public.moon VALUES (3, false, 4782, 4, 'Phobos');
INSERT INTO public.moon VALUES (4, false, 3022, 4, 'Deimos');
INSERT INTO public.moon VALUES (5, true, 5648, 5, 'Europa');
INSERT INTO public.moon VALUES (6, true, 5665, 5, 'Ganymede');
INSERT INTO public.moon VALUES (7, true, 8451, 5, 'Io');
INSERT INTO public.moon VALUES (8, true, 4561, 5, 'Callisto');
INSERT INTO public.moon VALUES (9, false, 5748, 5, 'Kallichore');
INSERT INTO public.moon VALUES (10, false, 6666, 5, 'Amalthea');
INSERT INTO public.moon VALUES (11, true, 4466, 5, 'Orthosie');
INSERT INTO public.moon VALUES (12, false, 3636, 5, 'Thelxinoe');
INSERT INTO public.moon VALUES (13, true, 5512, 5, 'Cyllene');
INSERT INTO public.moon VALUES (14, true, 5339, 6, 'Titan');
INSERT INTO public.moon VALUES (15, true, 5133, 6, 'Enceladus');
INSERT INTO public.moon VALUES (16, true, 6776, 6, 'Mimas');
INSERT INTO public.moon VALUES (17, true, 5522, 6, 'Dione');
INSERT INTO public.moon VALUES (18, true, 5111, 6, 'Iapetus');
INSERT INTO public.moon VALUES (19, true, 5222, 6, 'Tethys');
INSERT INTO public.moon VALUES (20, true, 5334, 6, 'Rhea');
INSERT INTO public.moon VALUES (21, false, 8874, 6, 'Telesto');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 88, false, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 225, false, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 365, true, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 687, false, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4333, false, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 10756, false, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 30687, false, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 60190, false, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 90560, false, true, 1);
INSERT INTO public.planet VALUES (10, 'Proxima B', 11, false, false, 2);
INSERT INTO public.planet VALUES (11, 'Proxima D', 5, false, false, 2);
INSERT INTO public.planet VALUES (12, 'Barnard D', 2, false, false, 3);
INSERT INTO public.planet VALUES (13, 'Barnard C', 4, false, false, 3);
INSERT INTO public.planet VALUES (14, 'Barnard E', 7, false, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Yellow', 'Sol', 9, false, 1);
INSERT INTO public.star VALUES (2, 'Red', 'Proxima Centari', 3, false, 1);
INSERT INTO public.star VALUES (3, 'Red', 'Bernards Star', 3, false, 1);
INSERT INTO public.star VALUES (4, 'Brown', 'Luhman', 0, true, 1);
INSERT INTO public.star VALUES (5, 'Yellow', 'Albireo', 0, true, 1);
INSERT INTO public.star VALUES (6, 'Blue', 'Mimosa', 0, false, 1);


--
-- Name: filler_filler_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.filler_filler_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: filler filler_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.filler
    ADD CONSTRAINT filler_name_key UNIQUE (name);


--
-- Name: filler filler_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.filler
    ADD CONSTRAINT filler_pkey PRIMARY KEY (filler_id);


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
-- Name: star galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

