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
-- Name: alian; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alian (
    alian_id integer NOT NULL,
    name character varying(30) NOT NULL,
    height integer,
    weight integer
);


ALTER TABLE public.alian OWNER TO freecodecamp;

--
-- Name: alian_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.alian_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alian_id_seq OWNER TO freecodecamp;

--
-- Name: alian_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.alian_id_seq OWNED BY public.alian.alian_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    c1 character varying(30),
    c2 character varying(30)
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    about text,
    planet_id integer,
    c1 character varying(30)
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
    name character varying(30) NOT NULL,
    weight numeric(4,1),
    is_visualable boolean,
    star_id integer
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
    name character varying(30) NOT NULL,
    age integer,
    is_visualable boolean,
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
-- Name: alian alian_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alian ALTER COLUMN alian_id SET DEFAULT nextval('public.alian_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


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
-- Data for Name: alian; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.alian VALUES (1, 'HOME', 114, 514);
INSERT INTO public.alian VALUES (2, 'BILIBILI', 233, 233);
INSERT INTO public.alian VALUES (3, 'HOME', 114, 514);
INSERT INTO public.alian VALUES (4, 'BILIBILI', 233, 233);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'M78', 114514, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'M64', 1919810, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'JG3', 58233, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'GLAGA', 1153, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'fa', 13, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'la', 2355, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'T3', '1111231231', 1, NULL);
INSERT INTO public.moon VALUES (2, 'HOME', '1145141919810', 2, NULL);
INSERT INTO public.moon VALUES (3, 'HOMO', '1145141919810', 3, NULL);
INSERT INTO public.moon VALUES (4, 'HOMO', '1145141919810', 5, NULL);
INSERT INTO public.moon VALUES (5, '王爷', 'jbm', 6, NULL);
INSERT INTO public.moon VALUES (6, 'HOMO', '1145141919810', 5, NULL);
INSERT INTO public.moon VALUES (7, '王爷', 'jbm', 6, NULL);
INSERT INTO public.moon VALUES (8, 'HOMO', '1145141919810', 5, NULL);
INSERT INTO public.moon VALUES (9, '王爷', 'jbm', 6, NULL);
INSERT INTO public.moon VALUES (10, 'HOMO', '1145141919810', 5, NULL);
INSERT INTO public.moon VALUES (11, '王爷', 'jbm', 6, NULL);
INSERT INTO public.moon VALUES (12, 'HOMO', '1145141919810', 5, NULL);
INSERT INTO public.moon VALUES (13, '王爷', 'jbm', 6, NULL);
INSERT INTO public.moon VALUES (14, 'HOMO', '1145141919810', 5, NULL);
INSERT INTO public.moon VALUES (15, '王爷', 'jbm', 6, NULL);
INSERT INTO public.moon VALUES (16, 'HOMO', '1145141919810', 5, NULL);
INSERT INTO public.moon VALUES (17, '王爷', 'jbm', 6, NULL);
INSERT INTO public.moon VALUES (18, 'HOMO', '1145141919810', 5, NULL);
INSERT INTO public.moon VALUES (19, '王爷', 'jbm', 6, NULL);
INSERT INTO public.moon VALUES (20, 'HOMO', '1145141919810', 5, NULL);
INSERT INTO public.moon VALUES (21, '王爷', 'jbm', 6, NULL);
INSERT INTO public.moon VALUES (22, 'HOMO', '1145141919810', 5, NULL);
INSERT INTO public.moon VALUES (23, '王爷', 'jbm', 6, NULL);
INSERT INTO public.moon VALUES (24, 'HOMO', '1145141919810', 5, NULL);
INSERT INTO public.moon VALUES (25, '王爷', 'jbm', 6, NULL);
INSERT INTO public.moon VALUES (26, 'HOMO', '1145141919810', 5, NULL);
INSERT INTO public.moon VALUES (27, '王爷', 'jbm', 6, NULL);
INSERT INTO public.moon VALUES (28, 'HOMO', '1145141919810', 5, NULL);
INSERT INTO public.moon VALUES (29, '王爷', 'jbm', 6, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'M1', 55.8, false, 1);
INSERT INTO public.planet VALUES (2, 'LGASdg', 66.9, true, 2);
INSERT INTO public.planet VALUES (3, 'HUAWEI', 114.5, true, 3);
INSERT INTO public.planet VALUES (4, 'HUAWEI', 114.5, true, 3);
INSERT INTO public.planet VALUES (5, 'XM', 312.0, false, 5);
INSERT INTO public.planet VALUES (6, 'HUAWEI', 114.5, true, 3);
INSERT INTO public.planet VALUES (7, 'XM', 312.0, false, 5);
INSERT INTO public.planet VALUES (8, 'HUAWEI', 114.5, true, 3);
INSERT INTO public.planet VALUES (9, 'XM', 312.0, false, 5);
INSERT INTO public.planet VALUES (10, 'HUAWEI', 114.5, true, 3);
INSERT INTO public.planet VALUES (11, 'XM', 312.0, false, 5);
INSERT INTO public.planet VALUES (12, 'HUAWEI', 114.5, true, 3);
INSERT INTO public.planet VALUES (13, 'XM', 312.0, false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, '光之国', 1919810, true, 1);
INSERT INTO public.star VALUES (2, 'afd', 1919810, true, 2);
INSERT INTO public.star VALUES (3, 'vad', 1919810, true, 3);
INSERT INTO public.star VALUES (4, 'home', 1919810, true, 4);
INSERT INTO public.star VALUES (5, 'Van', 2333, false, 5);
INSERT INTO public.star VALUES (6, 'DeepDark', 6666, true, 6);


--
-- Name: alian_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.alian_id_seq', 4, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 29, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 13, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy a; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT a UNIQUE (galaxy_id);


--
-- Name: star b; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT b UNIQUE (star_id);


--
-- Name: planet c; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT c UNIQUE (planet_id);


--
-- Name: moon d; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT d UNIQUE (moon_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: alian p; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alian
    ADD CONSTRAINT p PRIMARY KEY (alian_id);


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
-- Name: alian unique_alian_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alian
    ADD CONSTRAINT unique_alian_name UNIQUE (alian_id);


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

