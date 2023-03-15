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
-- Name: astroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astroids (
    astroids_id integer NOT NULL,
    age integer,
    description text,
    name character varying(40) NOT NULL
);


ALTER TABLE public.astroids OWNER TO freecodecamp;

--
-- Name: astroids_astroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astroids_astroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astroids_astroid_id_seq OWNER TO freecodecamp;

--
-- Name: astroids_astroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astroids_astroid_id_seq OWNED BY public.astroids.astroids_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    description text,
    name character varying(40) NOT NULL,
    colour character varying(40),
    size integer
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
    description text,
    name character varying(40) NOT NULL,
    parent_planet character varying(40) NOT NULL,
    distance_from_parent_planet integer,
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
    name character varying(40),
    planet_no integer,
    description text,
    is_poisonous boolean NOT NULL,
    is_sphere boolean NOT NULL,
    distance_from_earth numeric(3,1),
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
    description text,
    name character varying(40) NOT NULL,
    size integer,
    distance_from_earth integer,
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
-- Name: astroids astroids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroids ALTER COLUMN astroids_id SET DEFAULT nextval('public.astroids_astroid_id_seq'::regclass);


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
-- Data for Name: astroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astroids VALUES (1, 12, 'Just a dummy text dont take it serously please.', 'Ceres');
INSERT INTO public.astroids VALUES (2, 233, 'Just a dummy text dont take it serously please.', 'Pluto');
INSERT INTO public.astroids VALUES (3, 2331, 'Just a dummy text dont take it serously please.', 'Eris');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Spiral galaxies look like giant pinwheels. The arms of the pinwheel are made up of stars and lots of gas and dust. Gas and dust are some of the main ingredients needed to form new stars. Young stars burn much hotter than older stars, so spiral galaxies are often some of the brightest in the universe. About 60% of nearby galaxies are spiral, The Milky way, is a very good example of one.', 'Spiral Galaxies', 'Brightest', 200000000);
INSERT INTO public.galaxy VALUES (2, 'Elliptical galaxies are shaped like streched-out circles, ellipses.  Some elliptical galaxies are more streched out than others. ONe might look almost perfectly circular. Another one might look long and flat. Elliptical galaxies contain most older stars. That means they often arent as bright as spiral galaxies. They also have a very little dust and gas. Elliptical gases are the largegst and most coomon galaxiese observed. They make up about 20% of nearby galaxies.', 'Elliptical Galaxies', 'Dull', 3254000);
INSERT INTO public.galaxy VALUES (3, 'Irregular galaxies are just: irregular. They dont have a single common shape. Irregular galaxies are among the smallest galaxies scientists have observed. However, they can also be very bright. Like spiral galaxies, irregular galaxies are often filled with gas, dust and lots of bright young stars. About 20% of nearby galaxies are irregular galaxies.', 'Irregular Galaxies', 'Might be as bright as Spiral', 63727464);
INSERT INTO public.galaxy VALUES (4, 'Quasars are compact areas in the center of a galaxy. They give off enormous amounts of energy. Quasars are actually some of the brightest objects in the universe. There are no quasars near our Milky Way.', 'Quasars', 'Most Brightest', 23234343);
INSERT INTO public.galaxy VALUES (5, 'This is just a dummy text dont take it seriously', 'Sample Galaxy', 'Yello', 243342);
INSERT INTO public.galaxy VALUES (6, 'This is just a dummy text dont take it seriously', 'Funny Galaxy', 'Blue', 2646342);
INSERT INTO public.galaxy VALUES (7, 'This is just a dummy text dont take it seriously', 'NoName Galaxy', 'Red', 6546342);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Most known moon for us is ofcourse Earth moon which is also the closest from us', 'Moon', 'Earth', 120, 3);
INSERT INTO public.moon VALUES (2, 'This is just a dummy text dont take it seriously.', 'Phobos', 'Jupiter', 129, 1);
INSERT INTO public.moon VALUES (3, 'This is just a dummy text dont take it serously.', 'Deimos', 'Jupiter', 145, 1);
INSERT INTO public.moon VALUES (4, 'This is just a dummy text dont take it seriously', 'Semar', 'Earth', 34234, 3);
INSERT INTO public.moon VALUES (5, 'This is just a dummy text dont take it seriously', 'Earth', 'Earth', 2342343, 1);
INSERT INTO public.moon VALUES (6, 'This is just a dummy text dont take it seriously', 'Kammi', 'Earth', 2342343, 1);
INSERT INTO public.moon VALUES (7, 'This is just a dummy text dont take it seriously', 'Kollosom', 'Earth', 2342343, 1);
INSERT INTO public.moon VALUES (8, 'This is just a dummy text dont take it seriously', 'Ramar', 'Earth', 2342343, 1);
INSERT INTO public.moon VALUES (9, 'This is just a dummy text dont take it seriously', 'Kengo', 'Earth', 2342343, 1);
INSERT INTO public.moon VALUES (10, 'This is just a dummy text dont take it seriously', 'Damascs', 'Earth', 2342343, 1);
INSERT INTO public.moon VALUES (11, 'This is just a dummy text dont take it seriously', 'Kamusta', 'Earth', 2342343, 1);
INSERT INTO public.moon VALUES (12, 'This is just a dummy text dont take it seriously', 'Kolorado', 'Earth', 2342343, 1);
INSERT INTO public.moon VALUES (13, 'This is just a dummy text dont take it seriously', 'Legisto', 'Earth', 2342343, 1);
INSERT INTO public.moon VALUES (14, 'This is just a dummy text dont take it seriously', 'Pugarto', 'Earth', 2342343, 1);
INSERT INTO public.moon VALUES (15, 'This is just a dummy text dont take it seriously', 'Turako', 'Earth', 2342343, 1);
INSERT INTO public.moon VALUES (16, 'This is just a dummy text dont take it seriously', 'Shimaroto', 'Earth', 2342343, 1);
INSERT INTO public.moon VALUES (17, 'This is just a dummy text dont take it seriously', 'Kolati', 'Earth', 2342343, 1);
INSERT INTO public.moon VALUES (18, 'This is just a dummy text dont take it seriously', 'Kitcharo', 'Earth', 2342343, 1);
INSERT INTO public.moon VALUES (19, 'This is just a dummy text dont take it seriously', 'Pubaro', 'Earth', 2342343, 1);
INSERT INTO public.moon VALUES (20, 'This is just a dummy text dont take it seriously', 'Poboramo', 'Earth', 2342343, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 3, 'Earth is the most beautiful and only known habitat planet in the Milky Way.', false, true, 0.0, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 4, 'Mars is one of the planet sepiens are trying to conqueror, and is also suspected have habitats', false, true, 58.0, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 5, 'Jupiter ris considered largest planet in the whole universe and is so big that it can swallow any planet as whole.', true, false, 7.0, 1);
INSERT INTO public.planet VALUES (4, 'Wano', 8, 'This is just  a dummy text dont take it seriously.', false, true, 57.1, 1);
INSERT INTO public.planet VALUES (6, 'Naasom', 10, 'This is just  a dummy text dont take it seriously.', false, true, 57.1, 1);
INSERT INTO public.planet VALUES (7, 'Tonga', 11, 'This is just  a dummy text dont take it seriously.', false, true, 57.1, 1);
INSERT INTO public.planet VALUES (8, 'Blossum', 12, 'This is just  a dummy text dont take it seriously.', false, true, 57.1, 1);
INSERT INTO public.planet VALUES (9, 'Cheng', 13, 'This is just  a dummy text dont take it seriously.', false, true, 57.1, 1);
INSERT INTO public.planet VALUES (10, 'Namster', 14, 'This is just  a dummy text dont take it seriously.', false, true, 57.1, 1);
INSERT INTO public.planet VALUES (11, 'Kujja', 15, 'This is just  a dummy text dont take it seriously.', false, true, 57.1, 1);
INSERT INTO public.planet VALUES (12, 'Namiso', 16, 'This is just  a dummy text dont take it seriously.', false, true, 57.1, 1);
INSERT INTO public.planet VALUES (13, 'Chomus', 17, 'This is just  a dummy text dont take it seriously.', false, true, 57.1, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'This is just a dummy text and doesnt mean anything, I am writing this just to fill the data dont take this any seriously.', 'Lynx', 234234, 234234236, 1);
INSERT INTO public.star VALUES (2, 'This is just a dummy text and doesnt mean anything, I am writing this just to fill the data dont take this any seriously.', 'Taurus', 67485, 2343523, 2);
INSERT INTO public.star VALUES (3, 'This is just a dummy text and doesnt mean anything, I am writing this just to fill the data dont take this any seriously.', 'Gemini', 56485, 23433423, 3);
INSERT INTO public.star VALUES (4, 'This is just a dummy text and doesnt mean anything, I am writing this just to fill the data dont take this any seriously.', 'Botanical', 76686, 6573885, 4);
INSERT INTO public.star VALUES (5, 'This is just a dummy text dont take it seriously', 'Tommy', 2423, 124, 1);
INSERT INTO public.star VALUES (6, 'This is just a dummy text dont take it seriously', 'Luffy', 1353, 1232, 1);
INSERT INTO public.star VALUES (7, 'This is just a dummy text dont take it seriously', 'Zoro', 5674, 864, 1);


--
-- Name: astroids_astroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astroids_astroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: astroids astroids_astroid_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroids
    ADD CONSTRAINT astroids_astroid_id_key UNIQUE (astroids_id);


--
-- Name: astroids astroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroids
    ADD CONSTRAINT astroids_pkey PRIMARY KEY (astroids_id);


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
-- Name: planet planet_planet_no_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_no_key UNIQUE (planet_no);


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

