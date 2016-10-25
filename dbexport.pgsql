--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: AOP_aop; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE "AOP_aop" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    fiscal_info_modal_fr text NOT NULL,
    fiscal_info_modal_nl text NOT NULL,
    contact_us_text_fr text NOT NULL,
    contact_us_text_nl text NOT NULL,
    document_text_fr text NOT NULL,
    document_text_nl text NOT NULL,
    congrats_steps_image_id integer,
    link_contact_us_id integer,
    link_document_id integer
);


ALTER TABLE public."AOP_aop" OWNER TO benelux;

--
-- Name: AOP_aop_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE "AOP_aop_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AOP_aop_id_seq" OWNER TO benelux;

--
-- Name: AOP_aop_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE "AOP_aop_id_seq" OWNED BY "AOP_aop".id;


--
-- Name: aboutus_aboutus; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE aboutus_aboutus (
    page_ptr_id integer NOT NULL,
    about_us_title_fr text NOT NULL,
    about_us_title_nl text NOT NULL,
    text_image_fr text NOT NULL,
    text_image_nl text NOT NULL,
    info_title_fr text NOT NULL,
    info_title_nl text NOT NULL,
    info_subtitle_fr text NOT NULL,
    info_subtitle_nl text NOT NULL,
    info_content_fr text NOT NULL,
    info_content_nl text NOT NULL,
    reason_title_fr text NOT NULL,
    reason_title_nl text NOT NULL,
    testimonials_title_fr text NOT NULL,
    testimonials_title_nl text NOT NULL,
    image_id integer
);


ALTER TABLE public.aboutus_aboutus OWNER TO benelux;

--
-- Name: aboutus_reasonblock; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE aboutus_reasonblock (
    id integer NOT NULL,
    sort_order integer,
    text_fr text NOT NULL,
    text_nl text NOT NULL,
    subtext_fr text NOT NULL,
    subtext_nl text NOT NULL,
    image_id integer,
    page_id integer NOT NULL
);


ALTER TABLE public.aboutus_reasonblock OWNER TO benelux;

--
-- Name: aboutus_reasonblock_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE aboutus_reasonblock_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aboutus_reasonblock_id_seq OWNER TO benelux;

--
-- Name: aboutus_reasonblock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE aboutus_reasonblock_id_seq OWNED BY aboutus_reasonblock.id;


--
-- Name: aboutus_testimonialselement; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE aboutus_testimonialselement (
    id integer NOT NULL,
    sort_order integer,
    testimonials_text_fr text NOT NULL,
    testimonials_text_nl text NOT NULL,
    testimonials_name text NOT NULL,
    "imageTestimonials_id" integer,
    testimonial_id integer
);


ALTER TABLE public.aboutus_testimonialselement OWNER TO benelux;

--
-- Name: aboutus_testimonialselement_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE aboutus_testimonialselement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aboutus_testimonialselement_id_seq OWNER TO benelux;

--
-- Name: aboutus_testimonialselement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE aboutus_testimonialselement_id_seq OWNED BY aboutus_testimonialselement.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO benelux;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO benelux;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO benelux;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO benelux;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO benelux;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO benelux;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO benelux;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO benelux;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO benelux;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO benelux;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO benelux;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO benelux;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: compte_benefitselements; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE compte_benefitselements (
    id integer NOT NULL,
    sort_order integer,
    title_fr text NOT NULL,
    title_nl text NOT NULL,
    text_fr text NOT NULL,
    text_nl text NOT NULL,
    benefits_id integer,
    image_id integer
);


ALTER TABLE public.compte_benefitselements OWNER TO benelux;

--
-- Name: compte_benefitselements_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE compte_benefitselements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.compte_benefitselements_id_seq OWNER TO benelux;

--
-- Name: compte_benefitselements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE compte_benefitselements_id_seq OWNED BY compte_benefitselements.id;


--
-- Name: compte_comptepage; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE compte_comptepage (
    page_ptr_id integer NOT NULL,
    simulator_title_fr text,
    simulator_title_nl text,
    simulator_text_fr text,
    simulator_text_nl text,
    contact_text_fr text,
    contact_text_nl text,
    document_text_fr text,
    document_text_nl text,
    details_title_fr text,
    details_title_nl text,
    details_text_fr text,
    details_text_nl text,
    details_link_text_fr text,
    details_link_text_nl text,
    contact_url_id integer,
    document_url_id integer,
    info_block_image_id integer,
    product_id integer
);


ALTER TABLE public.compte_comptepage OWNER TO benelux;

--
-- Name: compte_helpquestions; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE compte_helpquestions (
    id integer NOT NULL,
    sort_order integer,
    title_fr text NOT NULL,
    title_nl text NOT NULL,
    text_fr text NOT NULL,
    text_nl text NOT NULL,
    questions_id integer NOT NULL
);


ALTER TABLE public.compte_helpquestions OWNER TO benelux;

--
-- Name: compte_helpquestions_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE compte_helpquestions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.compte_helpquestions_id_seq OWNER TO benelux;

--
-- Name: compte_helpquestions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE compte_helpquestions_id_seq OWNED BY compte_helpquestions.id;


--
-- Name: contactus_contactus; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE contactus_contactus (
    page_ptr_id integer NOT NULL,
    to_address character varying(255) NOT NULL,
    from_address character varying(255) NOT NULL,
    subject character varying(255) NOT NULL,
    contact_us_title_fr character varying(60) NOT NULL,
    contact_us_title_nl character varying(60) NOT NULL,
    email_address character varying(100) NOT NULL,
    email_title_fr character varying(50) NOT NULL,
    email_title_nl character varying(50) NOT NULL,
    email_subtext_fr text NOT NULL,
    email_subtext_nl text NOT NULL
);


ALTER TABLE public.contactus_contactus OWNER TO benelux;

--
-- Name: contactus_daysblock; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE contactus_daysblock (
    id integer NOT NULL,
    sort_order integer,
    days_fr text NOT NULL,
    days_nl text NOT NULL,
    hours_fr text NOT NULL,
    hours_nl text NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE public.contactus_daysblock OWNER TO benelux;

--
-- Name: contactus_daysblock_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE contactus_daysblock_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contactus_daysblock_id_seq OWNER TO benelux;

--
-- Name: contactus_daysblock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE contactus_daysblock_id_seq OWNED BY contactus_daysblock.id;


--
-- Name: contactus_phonenumber; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE contactus_phonenumber (
    id integer NOT NULL,
    sort_order integer,
    phone text NOT NULL,
    country text NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE public.contactus_phonenumber OWNER TO benelux;

--
-- Name: contactus_phonenumber_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE contactus_phonenumber_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contactus_phonenumber_id_seq OWNER TO benelux;

--
-- Name: contactus_phonenumber_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE contactus_phonenumber_id_seq OWNED BY contactus_phonenumber.id;


--
-- Name: contactus_submitformfield; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE contactus_submitformfield (
    id integer NOT NULL,
    sort_order integer,
    label character varying(255) NOT NULL,
    field_type character varying(16) NOT NULL,
    required boolean NOT NULL,
    choices text NOT NULL,
    default_value character varying(255) NOT NULL,
    help_text character varying(255) NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE public.contactus_submitformfield OWNER TO benelux;

--
-- Name: contactus_submitformfield_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE contactus_submitformfield_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contactus_submitformfield_id_seq OWNER TO benelux;

--
-- Name: contactus_submitformfield_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE contactus_submitformfield_id_seq OWNED BY contactus_submitformfield.id;


--
-- Name: cookies_cookies; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE cookies_cookies (
    id integer NOT NULL,
    text_fr text NOT NULL,
    text_nl text NOT NULL
);


ALTER TABLE public.cookies_cookies OWNER TO benelux;

--
-- Name: cookies_cookies_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE cookies_cookies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cookies_cookies_id_seq OWNER TO benelux;

--
-- Name: cookies_cookies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE cookies_cookies_id_seq OWNED BY cookies_cookies.id;


--
-- Name: cookies_page_cookieselement; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE cookies_page_cookieselement (
    id integer NOT NULL,
    sort_order integer,
    title_fr text NOT NULL,
    title_nl text NOT NULL,
    text_fr text NOT NULL,
    text_nl text NOT NULL,
    elements_id integer NOT NULL
);


ALTER TABLE public.cookies_page_cookieselement OWNER TO benelux;

--
-- Name: cookies_page_cookieselement_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE cookies_page_cookieselement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cookies_page_cookieselement_id_seq OWNER TO benelux;

--
-- Name: cookies_page_cookieselement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE cookies_page_cookieselement_id_seq OWNED BY cookies_page_cookieselement.id;


--
-- Name: cookies_page_cookiespage; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE cookies_page_cookiespage (
    page_ptr_id integer NOT NULL,
    cookies_title_fr text NOT NULL,
    cookies_title_nl text NOT NULL,
    cookies_subtitle_fr text NOT NULL,
    cookies_subtitle_nl text NOT NULL
);


ALTER TABLE public.cookies_page_cookiespage OWNER TO benelux;

--
-- Name: countries_countries; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE countries_countries (
    id integer NOT NULL
);


ALTER TABLE public.countries_countries OWNER TO benelux;

--
-- Name: countries_countries_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE countries_countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.countries_countries_id_seq OWNER TO benelux;

--
-- Name: countries_countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE countries_countries_id_seq OWNED BY countries_countries.id;


--
-- Name: countries_country; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE countries_country (
    id integer NOT NULL,
    sort_order integer,
    name character varying(255) NOT NULL,
    mandatory boolean NOT NULL,
    countries_id integer
);


ALTER TABLE public.countries_country OWNER TO benelux;

--
-- Name: countries_country_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE countries_country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.countries_country_id_seq OWNER TO benelux;

--
-- Name: countries_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE countries_country_id_seq OWNED BY countries_country.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO benelux;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO benelux;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO benelux;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO benelux;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO benelux;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO benelux;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO benelux;

--
-- Name: documents_categories; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE documents_categories (
    id integer NOT NULL,
    category text
);


ALTER TABLE public.documents_categories OWNER TO benelux;

--
-- Name: documents_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE documents_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.documents_categories_id_seq OWNER TO benelux;

--
-- Name: documents_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE documents_categories_id_seq OWNED BY documents_categories.id;


--
-- Name: documents_categoriespart; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE documents_categoriespart (
    categories_ptr_id integer NOT NULL,
    sort_order integer,
    cat_id integer
);


ALTER TABLE public.documents_categoriespart OWNER TO benelux;

--
-- Name: documents_documentpart; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE documents_documentpart (
    id integer NOT NULL,
    sort_order integer,
    doc_title_fr text,
    doc_title_nl text,
    doc_id integer,
    "docCategory_id" integer,
    doc_file_id integer
);


ALTER TABLE public.documents_documentpart OWNER TO benelux;

--
-- Name: documents_documentpart_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE documents_documentpart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.documents_documentpart_id_seq OWNER TO benelux;

--
-- Name: documents_documentpart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE documents_documentpart_id_seq OWNED BY documents_documentpart.id;


--
-- Name: documents_documents; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE documents_documents (
    page_ptr_id integer NOT NULL,
    title_fr text,
    title_nl text,
    subtitle_fr text,
    subtitle_nl text
);


ALTER TABLE public.documents_documents OWNER TO benelux;

--
-- Name: footer_footer; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE footer_footer (
    id integer NOT NULL,
    contact_phone_number character varying(30) NOT NULL,
    info text
);


ALTER TABLE public.footer_footer OWNER TO benelux;

--
-- Name: footer_footer_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE footer_footer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.footer_footer_id_seq OWNER TO benelux;

--
-- Name: footer_footer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE footer_footer_id_seq OWNED BY footer_footer.id;


--
-- Name: footer_footerlink; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE footer_footerlink (
    id integer NOT NULL,
    sort_order integer,
    text_fr text NOT NULL,
    text_nl text NOT NULL,
    footer_id integer,
    link_document_id integer
);


ALTER TABLE public.footer_footerlink OWNER TO benelux;

--
-- Name: footer_footerlink_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE footer_footerlink_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.footer_footerlink_id_seq OWNER TO benelux;

--
-- Name: footer_footerlink_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE footer_footerlink_id_seq OWNED BY footer_footerlink.id;


--
-- Name: header_header; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE header_header (
    id integer NOT NULL,
    contact_text_fr character varying(255) NOT NULL,
    contact_text_nl character varying(255) NOT NULL,
    contact_number_fr character varying(50),
    contact_number_nl character varying(50),
    login_text_fr character varying(50) NOT NULL,
    login_text_nl character varying(50) NOT NULL,
    banner_header_id integer,
    banner_phone_id integer,
    contact_url_id integer,
    login_url_id integer,
    logo_id integer
);


ALTER TABLE public.header_header OWNER TO benelux;

--
-- Name: header_header_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE header_header_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.header_header_id_seq OWNER TO benelux;

--
-- Name: header_header_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE header_header_id_seq OWNED BY header_header.id;


--
-- Name: header_languageitem; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE header_languageitem (
    id integer NOT NULL,
    sort_order integer,
    text text NOT NULL,
    url character varying(50) NOT NULL,
    header_id integer
);


ALTER TABLE public.header_languageitem OWNER TO benelux;

--
-- Name: header_languageitem_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE header_languageitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.header_languageitem_id_seq OWNER TO benelux;

--
-- Name: header_languageitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE header_languageitem_id_seq OWNED BY header_languageitem.id;


--
-- Name: header_menuitem; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE header_menuitem (
    id integer NOT NULL,
    sort_order integer,
    link_external character varying(200),
    text_fr text NOT NULL,
    text_nl text NOT NULL,
    header_id integer,
    link_document_id integer,
    link_page_id integer
);


ALTER TABLE public.header_menuitem OWNER TO benelux;

--
-- Name: header_menuitem_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE header_menuitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.header_menuitem_id_seq OWNER TO benelux;

--
-- Name: header_menuitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE header_menuitem_id_seq OWNED BY header_menuitem.id;


--
-- Name: help_helppage; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE help_helppage (
    page_ptr_id integer NOT NULL,
    helptitle_fr text NOT NULL,
    helptitle_nl text NOT NULL,
    helpsubtitle_fr text NOT NULL,
    helpsubtitle_nl text NOT NULL,
    title_manual_fr text NOT NULL,
    title_manual_nl text NOT NULL,
    email_title_fr character varying(50) NOT NULL,
    email_title_nl character varying(50) NOT NULL,
    email_subtext_fr text NOT NULL,
    email_subtext_nl text NOT NULL
);


ALTER TABLE public.help_helppage OWNER TO benelux;

--
-- Name: help_helpquestions; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE help_helpquestions (
    id integer NOT NULL,
    sort_order integer,
    title_fr text NOT NULL,
    title_nl text NOT NULL,
    text_fr text NOT NULL,
    text_nl text NOT NULL,
    questions_id integer NOT NULL
);


ALTER TABLE public.help_helpquestions OWNER TO benelux;

--
-- Name: help_helpquestions_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE help_helpquestions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.help_helpquestions_id_seq OWNER TO benelux;

--
-- Name: help_helpquestions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE help_helpquestions_id_seq OWNED BY help_helpquestions.id;


--
-- Name: help_videoelement; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE help_videoelement (
    id integer NOT NULL,
    sort_order integer,
    video_title_fr text NOT NULL,
    video_title_nl text NOT NULL,
    video_subtitle_fr text NOT NULL,
    video_subtitle_nl text NOT NULL,
    block_id integer,
    video_link_id integer
);


ALTER TABLE public.help_videoelement OWNER TO benelux;

--
-- Name: help_videoelement_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE help_videoelement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.help_videoelement_id_seq OWNER TO benelux;

--
-- Name: help_videoelement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE help_videoelement_id_seq OWNED BY help_videoelement.id;


--
-- Name: home_appbuttonelement; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE home_appbuttonelement (
    id integer NOT NULL,
    sort_order integer,
    link_page character varying(200) NOT NULL,
    "imageApp_id" integer,
    link_id integer
);


ALTER TABLE public.home_appbuttonelement OWNER TO benelux;

--
-- Name: home_appbuttonelement_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE home_appbuttonelement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_appbuttonelement_id_seq OWNER TO benelux;

--
-- Name: home_appbuttonelement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE home_appbuttonelement_id_seq OWNED BY home_appbuttonelement.id;


--
-- Name: home_benefitselements; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE home_benefitselements (
    id integer NOT NULL,
    sort_order integer,
    title_fr text NOT NULL,
    title_nl text NOT NULL,
    text_fr text NOT NULL,
    text_nl text NOT NULL,
    benefits_id integer,
    image_id integer
);


ALTER TABLE public.home_benefitselements OWNER TO benelux;

--
-- Name: home_benefitselements_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE home_benefitselements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_benefitselements_id_seq OWNER TO benelux;

--
-- Name: home_benefitselements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE home_benefitselements_id_seq OWNED BY home_benefitselements.id;


--
-- Name: home_homepage; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE home_homepage (
    page_ptr_id integer NOT NULL,
    c1_title_fr text,
    c1_title_nl text,
    c1_subtitle_fr text,
    c1_subtitle_nl text,
    c2_title_fr text,
    c2_title_nl text,
    c2_subtitle_fr text,
    c2_subtitle_nl text,
    simulator_title_fr text,
    simulator_title_nl text,
    simulator_text_fr text NOT NULL,
    simulator_text_nl text NOT NULL,
    benefits_title_fr character varying(100) NOT NULL,
    benefits_title_nl character varying(100) NOT NULL,
    app_text_fr text NOT NULL,
    app_text_nl text NOT NULL,
    c1_aop_id integer,
    c2_aop_id integer
);


ALTER TABLE public.home_homepage OWNER TO benelux;

--
-- Name: home_sliderelements; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE home_sliderelements (
    id integer NOT NULL,
    sort_order integer,
    title_fr text NOT NULL,
    title_nl text NOT NULL,
    text_fr text NOT NULL,
    text_nl text NOT NULL,
    button_fr text NOT NULL,
    button_nl text NOT NULL,
    image_id integer,
    page_id integer
);


ALTER TABLE public.home_sliderelements OWNER TO benelux;

--
-- Name: home_sliderelements_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE home_sliderelements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_sliderelements_id_seq OWNER TO benelux;

--
-- Name: home_sliderelements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE home_sliderelements_id_seq OWNED BY home_sliderelements.id;


--
-- Name: home_videoelement; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE home_videoelement (
    id integer NOT NULL,
    sort_order integer,
    video_title_fr text NOT NULL,
    video_title_nl text NOT NULL,
    video_subtitle_fr text NOT NULL,
    video_subtitle_nl text NOT NULL,
    block_id integer,
    video_link_id integer
);


ALTER TABLE public.home_videoelement OWNER TO benelux;

--
-- Name: home_videoelement_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE home_videoelement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_videoelement_id_seq OWNER TO benelux;

--
-- Name: home_videoelement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE home_videoelement_id_seq OWNED BY home_videoelement.id;


--
-- Name: page_search_searchpage; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE page_search_searchpage (
    page_ptr_id integer NOT NULL,
    search_title_fr text NOT NULL,
    search_title_nl text NOT NULL,
    search_subtitle_fr text NOT NULL,
    search_subtitle_nl text NOT NULL
);


ALTER TABLE public.page_search_searchpage OWNER TO benelux;

--
-- Name: products_config_countriestin; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE products_config_countriestin (
    id integer NOT NULL,
    sort_order integer,
    name_fr character varying(255) NOT NULL,
    name_nl character varying(255) NOT NULL,
    "TIN_mandatory" boolean NOT NULL,
    countries_id integer
);


ALTER TABLE public.products_config_countriestin OWNER TO benelux;

--
-- Name: products_config_countriestin_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE products_config_countriestin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_config_countriestin_id_seq OWNER TO benelux;

--
-- Name: products_config_countriestin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE products_config_countriestin_id_seq OWNED BY products_config_countriestin.id;


--
-- Name: products_config_productsconfig; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE products_config_productsconfig (
    page_ptr_id integer NOT NULL,
    "compte_fidelite_TAE" character varying(10) NOT NULL,
    "compte_fidelite_VIR" character varying(10) NOT NULL,
    "compte_prime_TAE" character varying(10) NOT NULL,
    "compte_prime_VIR" character varying(10) NOT NULL
);


ALTER TABLE public.products_config_productsconfig OWNER TO benelux;

--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.taggit_tag OWNER TO benelux;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE taggit_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_tag_id_seq OWNER TO benelux;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE taggit_tag_id_seq OWNED BY taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.taggit_taggeditem OWNER TO benelux;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE taggit_taggeditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_taggeditem_id_seq OWNER TO benelux;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE taggit_taggeditem_id_seq OWNED BY taggit_taggeditem.id;


--
-- Name: wagtail_embed_videos_embedvideo; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE wagtail_embed_videos_embedvideo (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    url character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    thumbnail_id integer,
    uploaded_by_user_id integer
);


ALTER TABLE public.wagtail_embed_videos_embedvideo OWNER TO benelux;

--
-- Name: wagtail_embed_videos_embedvideo_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE wagtail_embed_videos_embedvideo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtail_embed_videos_embedvideo_id_seq OWNER TO benelux;

--
-- Name: wagtail_embed_videos_embedvideo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE wagtail_embed_videos_embedvideo_id_seq OWNED BY wagtail_embed_videos_embedvideo.id;


--
-- Name: wagtailcore_collection; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE wagtailcore_collection (
    id integer NOT NULL,
    path character varying(255) COLLATE pg_catalog."C" NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    name character varying(255) NOT NULL,
    CONSTRAINT wagtailcore_collection_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_collection_numchild_check CHECK ((numchild >= 0))
);


ALTER TABLE public.wagtailcore_collection OWNER TO benelux;

--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE wagtailcore_collection_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_collection_id_seq OWNER TO benelux;

--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE wagtailcore_collection_id_seq OWNED BY wagtailcore_collection.id;


--
-- Name: wagtailcore_groupcollectionpermission; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE wagtailcore_groupcollectionpermission (
    id integer NOT NULL,
    collection_id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_groupcollectionpermission OWNER TO benelux;

--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE wagtailcore_groupcollectionpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_groupcollectionpermission_id_seq OWNER TO benelux;

--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE wagtailcore_groupcollectionpermission_id_seq OWNED BY wagtailcore_groupcollectionpermission.id;


--
-- Name: wagtailcore_grouppagepermission; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE wagtailcore_grouppagepermission (
    id integer NOT NULL,
    permission_type character varying(20) NOT NULL,
    group_id integer NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_grouppagepermission OWNER TO benelux;

--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE wagtailcore_grouppagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_grouppagepermission_id_seq OWNER TO benelux;

--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE wagtailcore_grouppagepermission_id_seq OWNED BY wagtailcore_grouppagepermission.id;


--
-- Name: wagtailcore_page; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE wagtailcore_page (
    id integer NOT NULL,
    path character varying(255) COLLATE pg_catalog."C" NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    live boolean NOT NULL,
    has_unpublished_changes boolean NOT NULL,
    url_path text NOT NULL,
    seo_title character varying(255) NOT NULL,
    show_in_menus boolean NOT NULL,
    search_description text NOT NULL,
    go_live_at timestamp with time zone,
    expire_at timestamp with time zone,
    expired boolean NOT NULL,
    content_type_id integer NOT NULL,
    owner_id integer,
    locked boolean NOT NULL,
    latest_revision_created_at timestamp with time zone,
    first_published_at timestamp with time zone,
    CONSTRAINT wagtailcore_page_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_page_numchild_check CHECK ((numchild >= 0))
);


ALTER TABLE public.wagtailcore_page OWNER TO benelux;

--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE wagtailcore_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_page_id_seq OWNER TO benelux;

--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE wagtailcore_page_id_seq OWNED BY wagtailcore_page.id;


--
-- Name: wagtailcore_pagerevision; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE wagtailcore_pagerevision (
    id integer NOT NULL,
    submitted_for_moderation boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    content_json text NOT NULL,
    approved_go_live_at timestamp with time zone,
    page_id integer NOT NULL,
    user_id integer
);


ALTER TABLE public.wagtailcore_pagerevision OWNER TO benelux;

--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE wagtailcore_pagerevision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pagerevision_id_seq OWNER TO benelux;

--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE wagtailcore_pagerevision_id_seq OWNED BY wagtailcore_pagerevision.id;


--
-- Name: wagtailcore_pageviewrestriction; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE wagtailcore_pageviewrestriction (
    id integer NOT NULL,
    password character varying(255) NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE public.wagtailcore_pageviewrestriction OWNER TO benelux;

--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE wagtailcore_pageviewrestriction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_pageviewrestriction_id_seq OWNER TO benelux;

--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE wagtailcore_pageviewrestriction_id_seq OWNED BY wagtailcore_pageviewrestriction.id;


--
-- Name: wagtailcore_site; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE wagtailcore_site (
    id integer NOT NULL,
    hostname character varying(255) NOT NULL,
    port integer NOT NULL,
    is_default_site boolean NOT NULL,
    root_page_id integer NOT NULL,
    site_name character varying(255)
);


ALTER TABLE public.wagtailcore_site OWNER TO benelux;

--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE wagtailcore_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailcore_site_id_seq OWNER TO benelux;

--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE wagtailcore_site_id_seq OWNED BY wagtailcore_site.id;


--
-- Name: wagtaildocs_document; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE wagtaildocs_document (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    uploaded_by_user_id integer,
    collection_id integer NOT NULL
);


ALTER TABLE public.wagtaildocs_document OWNER TO benelux;

--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE wagtaildocs_document_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtaildocs_document_id_seq OWNER TO benelux;

--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE wagtaildocs_document_id_seq OWNED BY wagtaildocs_document.id;


--
-- Name: wagtailembeds_embed; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE wagtailembeds_embed (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    max_width smallint,
    type character varying(10) NOT NULL,
    html text NOT NULL,
    title text NOT NULL,
    author_name text NOT NULL,
    provider_name text NOT NULL,
    thumbnail_url character varying(200),
    width integer,
    height integer,
    last_updated timestamp with time zone NOT NULL
);


ALTER TABLE public.wagtailembeds_embed OWNER TO benelux;

--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE wagtailembeds_embed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailembeds_embed_id_seq OWNER TO benelux;

--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE wagtailembeds_embed_id_seq OWNED BY wagtailembeds_embed.id;


--
-- Name: wagtailforms_formsubmission; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE wagtailforms_formsubmission (
    id integer NOT NULL,
    form_data text NOT NULL,
    submit_time timestamp with time zone NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE public.wagtailforms_formsubmission OWNER TO benelux;

--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE wagtailforms_formsubmission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailforms_formsubmission_id_seq OWNER TO benelux;

--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE wagtailforms_formsubmission_id_seq OWNED BY wagtailforms_formsubmission.id;


--
-- Name: wagtailimages_filter; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE wagtailimages_filter (
    id integer NOT NULL,
    spec character varying(255) NOT NULL
);


ALTER TABLE public.wagtailimages_filter OWNER TO benelux;

--
-- Name: wagtailimages_filter_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE wagtailimages_filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailimages_filter_id_seq OWNER TO benelux;

--
-- Name: wagtailimages_filter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE wagtailimages_filter_id_seq OWNED BY wagtailimages_filter.id;


--
-- Name: wagtailimages_image; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE wagtailimages_image (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    focal_point_x integer,
    focal_point_y integer,
    focal_point_width integer,
    focal_point_height integer,
    uploaded_by_user_id integer,
    file_size integer,
    collection_id integer NOT NULL,
    CONSTRAINT wagtailimages_image_file_size_check CHECK ((file_size >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_height_check CHECK ((focal_point_height >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_width_check CHECK ((focal_point_width >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_x_check CHECK ((focal_point_x >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_y_check CHECK ((focal_point_y >= 0))
);


ALTER TABLE public.wagtailimages_image OWNER TO benelux;

--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE wagtailimages_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailimages_image_id_seq OWNER TO benelux;

--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE wagtailimages_image_id_seq OWNED BY wagtailimages_image.id;


--
-- Name: wagtailimages_rendition; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE wagtailimages_rendition (
    id integer NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    focal_point_key character varying(255) NOT NULL,
    filter_id integer NOT NULL,
    image_id integer NOT NULL
);


ALTER TABLE public.wagtailimages_rendition OWNER TO benelux;

--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE wagtailimages_rendition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailimages_rendition_id_seq OWNER TO benelux;

--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE wagtailimages_rendition_id_seq OWNED BY wagtailimages_rendition.id;


--
-- Name: wagtailredirects_redirect; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE wagtailredirects_redirect (
    id integer NOT NULL,
    old_path character varying(255) NOT NULL,
    is_permanent boolean NOT NULL,
    redirect_link character varying(200) NOT NULL,
    redirect_page_id integer,
    site_id integer
);


ALTER TABLE public.wagtailredirects_redirect OWNER TO benelux;

--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE wagtailredirects_redirect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailredirects_redirect_id_seq OWNER TO benelux;

--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE wagtailredirects_redirect_id_seq OWNED BY wagtailredirects_redirect.id;


--
-- Name: wagtailsearch_editorspick; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE wagtailsearch_editorspick (
    id integer NOT NULL,
    sort_order integer,
    description text NOT NULL,
    page_id integer NOT NULL,
    query_id integer NOT NULL
);


ALTER TABLE public.wagtailsearch_editorspick OWNER TO benelux;

--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE wagtailsearch_editorspick_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_editorspick_id_seq OWNER TO benelux;

--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE wagtailsearch_editorspick_id_seq OWNED BY wagtailsearch_editorspick.id;


--
-- Name: wagtailsearch_query; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE wagtailsearch_query (
    id integer NOT NULL,
    query_string character varying(255) NOT NULL
);


ALTER TABLE public.wagtailsearch_query OWNER TO benelux;

--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE wagtailsearch_query_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_query_id_seq OWNER TO benelux;

--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE wagtailsearch_query_id_seq OWNED BY wagtailsearch_query.id;


--
-- Name: wagtailsearch_querydailyhits; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE wagtailsearch_querydailyhits (
    id integer NOT NULL,
    date date NOT NULL,
    hits integer NOT NULL,
    query_id integer NOT NULL
);


ALTER TABLE public.wagtailsearch_querydailyhits OWNER TO benelux;

--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE wagtailsearch_querydailyhits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailsearch_querydailyhits_id_seq OWNER TO benelux;

--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE wagtailsearch_querydailyhits_id_seq OWNED BY wagtailsearch_querydailyhits.id;


--
-- Name: wagtailusers_userprofile; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE wagtailusers_userprofile (
    id integer NOT NULL,
    submitted_notifications boolean NOT NULL,
    approved_notifications boolean NOT NULL,
    rejected_notifications boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.wagtailusers_userprofile OWNER TO benelux;

--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: benelux
--

CREATE SEQUENCE wagtailusers_userprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wagtailusers_userprofile_id_seq OWNER TO benelux;

--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: benelux
--

ALTER SEQUENCE wagtailusers_userprofile_id_seq OWNED BY wagtailusers_userprofile.id;


--
-- Name: welcome_welcomepage; Type: TABLE; Schema: public; Owner: benelux; Tablespace: 
--

CREATE TABLE welcome_welcomepage (
    page_ptr_id integer NOT NULL,
    text_fr text NOT NULL,
    text_nl text NOT NULL,
    background_image_id integer,
    logo_image_id integer
);


ALTER TABLE public.welcome_welcomepage OWNER TO benelux;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY "AOP_aop" ALTER COLUMN id SET DEFAULT nextval('"AOP_aop_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY aboutus_reasonblock ALTER COLUMN id SET DEFAULT nextval('aboutus_reasonblock_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY aboutus_testimonialselement ALTER COLUMN id SET DEFAULT nextval('aboutus_testimonialselement_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY compte_benefitselements ALTER COLUMN id SET DEFAULT nextval('compte_benefitselements_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY compte_helpquestions ALTER COLUMN id SET DEFAULT nextval('compte_helpquestions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY contactus_daysblock ALTER COLUMN id SET DEFAULT nextval('contactus_daysblock_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY contactus_phonenumber ALTER COLUMN id SET DEFAULT nextval('contactus_phonenumber_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY contactus_submitformfield ALTER COLUMN id SET DEFAULT nextval('contactus_submitformfield_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY cookies_cookies ALTER COLUMN id SET DEFAULT nextval('cookies_cookies_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY cookies_page_cookieselement ALTER COLUMN id SET DEFAULT nextval('cookies_page_cookieselement_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY countries_countries ALTER COLUMN id SET DEFAULT nextval('countries_countries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY countries_country ALTER COLUMN id SET DEFAULT nextval('countries_country_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY documents_categories ALTER COLUMN id SET DEFAULT nextval('documents_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY documents_documentpart ALTER COLUMN id SET DEFAULT nextval('documents_documentpart_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY footer_footer ALTER COLUMN id SET DEFAULT nextval('footer_footer_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY footer_footerlink ALTER COLUMN id SET DEFAULT nextval('footer_footerlink_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY header_header ALTER COLUMN id SET DEFAULT nextval('header_header_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY header_languageitem ALTER COLUMN id SET DEFAULT nextval('header_languageitem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY header_menuitem ALTER COLUMN id SET DEFAULT nextval('header_menuitem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY help_helpquestions ALTER COLUMN id SET DEFAULT nextval('help_helpquestions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY help_videoelement ALTER COLUMN id SET DEFAULT nextval('help_videoelement_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY home_appbuttonelement ALTER COLUMN id SET DEFAULT nextval('home_appbuttonelement_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY home_benefitselements ALTER COLUMN id SET DEFAULT nextval('home_benefitselements_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY home_sliderelements ALTER COLUMN id SET DEFAULT nextval('home_sliderelements_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY home_videoelement ALTER COLUMN id SET DEFAULT nextval('home_videoelement_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY products_config_countriestin ALTER COLUMN id SET DEFAULT nextval('products_config_countriestin_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY taggit_tag ALTER COLUMN id SET DEFAULT nextval('taggit_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('taggit_taggeditem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtail_embed_videos_embedvideo ALTER COLUMN id SET DEFAULT nextval('wagtail_embed_videos_embedvideo_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailcore_collection ALTER COLUMN id SET DEFAULT nextval('wagtailcore_collection_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission ALTER COLUMN id SET DEFAULT nextval('wagtailcore_groupcollectionpermission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailcore_grouppagepermission ALTER COLUMN id SET DEFAULT nextval('wagtailcore_grouppagepermission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailcore_page ALTER COLUMN id SET DEFAULT nextval('wagtailcore_page_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailcore_pagerevision ALTER COLUMN id SET DEFAULT nextval('wagtailcore_pagerevision_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailcore_pageviewrestriction ALTER COLUMN id SET DEFAULT nextval('wagtailcore_pageviewrestriction_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailcore_site ALTER COLUMN id SET DEFAULT nextval('wagtailcore_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtaildocs_document ALTER COLUMN id SET DEFAULT nextval('wagtaildocs_document_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailembeds_embed ALTER COLUMN id SET DEFAULT nextval('wagtailembeds_embed_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailforms_formsubmission ALTER COLUMN id SET DEFAULT nextval('wagtailforms_formsubmission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailimages_filter ALTER COLUMN id SET DEFAULT nextval('wagtailimages_filter_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailimages_image ALTER COLUMN id SET DEFAULT nextval('wagtailimages_image_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailimages_rendition ALTER COLUMN id SET DEFAULT nextval('wagtailimages_rendition_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailredirects_redirect ALTER COLUMN id SET DEFAULT nextval('wagtailredirects_redirect_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailsearch_editorspick ALTER COLUMN id SET DEFAULT nextval('wagtailsearch_editorspick_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailsearch_query ALTER COLUMN id SET DEFAULT nextval('wagtailsearch_query_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailsearch_querydailyhits ALTER COLUMN id SET DEFAULT nextval('wagtailsearch_querydailyhits_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailusers_userprofile ALTER COLUMN id SET DEFAULT nextval('wagtailusers_userprofile_id_seq'::regclass);


--
-- Data for Name: AOP_aop; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY "AOP_aop" (id, title, fiscal_info_modal_fr, fiscal_info_modal_nl, contact_us_text_fr, contact_us_text_nl, document_text_fr, document_text_nl, congrats_steps_image_id, link_contact_us_id, link_document_id) FROM stdin;
1	AOP	<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.</p>	<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.</p>	<p>text</p>	<p>text</p>	<p>text</p>	<p>text</p>	5	\N	\N
\.


--
-- Name: AOP_aop_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('"AOP_aop_id_seq"', 1, true);


--
-- Data for Name: aboutus_aboutus; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY aboutus_aboutus (page_ptr_id, about_us_title_fr, about_us_title_nl, text_image_fr, text_image_nl, info_title_fr, info_title_nl, info_subtitle_fr, info_subtitle_nl, info_content_fr, info_content_nl, reason_title_fr, reason_title_nl, testimonials_title_fr, testimonials_title_nl, image_id) FROM stdin;
12	About us	About us	lorem ipsum \r\nsimple, personal & fair	lorem ipsum \r\nsimple, personal & fair	Who we are	Who we are	Who we are  SUBTITLE	Who we are  SUBTITLE	<p><b>Santander is the 4th largest banking group in the world! </b></p><p>Somos el socio de su lado cuando se trata de sus finanzas. Ofrecemos la solución perfecta para sus operaciones bancarias, por lo que estamos en el largo plazo siempre en buenas manos.<b> Su confianza es nuestra motivación.</b><br/></p><p>Como una rama de Santander Consumer Bank, tenemos décadas de experiencia como proveedor de servicios financieros. En combinación con la alta transparencia, productos de bajo consumo y la banca sin complicaciones, esto nos hace que su socio ideal cuando se trata de finanzas.</p>	<p><b>Santander is the 4th largest banking group in the world! </b></p><p>Somos el socio de su lado cuando se trata de sus finanzas. Ofrecemos la solución perfecta para sus operaciones bancarias, por lo que estamos en el largo plazo siempre en buenas manos.<b> Su confianza es nuestra motivación.</b><br/></p><p>Como una rama de Santander Consumer Bank, tenemos décadas de experiencia como proveedor de servicios financieros. En combinación con la alta transparencia, productos de bajo consumo y la banca sin complicaciones, esto nos hace que su socio ideal cuando se trata de finanzas.</p>	Why Santander?	Why Santander?	The happiness of our customer is our happiness	The happiness of our customer is our happiness	17
\.


--
-- Data for Name: aboutus_reasonblock; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY aboutus_reasonblock (id, sort_order, text_fr, text_nl, subtext_fr, subtext_nl, image_id, page_id) FROM stdin;
1	0	Online Banking	Online Banking	Lorem ipsum dolor sit aemet.\r\nLorem ipsum dolor sit aemet.	Lorem ipsum dolor sit aemet.\r\nLorem ipsum dolor sit aemet.	15	12
2	1	Online Banking	Online Banking	Lorem ipsum dolor sit aemet.\r\nLorem ipsum dolor sit aemet.	Lorem ipsum dolor sit aemet.\r\nLorem ipsum dolor sit aemet.	10	12
3	2	Online Banking	Online Banking	Lorem ipsum dolor sit aemet.\r\nLorem ipsum dolor sit aemet.	Lorem ipsum dolor sit aemet.\r\nLorem ipsum dolor sit aemet.	16	12
4	3	Online Banking	Online Banking	Lorem ipsum dolor sit aemet.\r\nLorem ipsum dolor sit aemet.	Lorem ipsum dolor sit aemet.\r\nLorem ipsum dolor sit aemet.	10	12
\.


--
-- Name: aboutus_reasonblock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('aboutus_reasonblock_id_seq', 4, true);


--
-- Data for Name: aboutus_testimonialselement; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY aboutus_testimonialselement (id, sort_order, testimonials_text_fr, testimonials_text_nl, testimonials_name, "imageTestimonials_id", testimonial_id) FROM stdin;
1	0	Lorem Ipsum dolor sit aemet.\r\nLorem Ipsum dolor sit aemet.	Lorem Ipsum dolor sit aemet.\r\nLorem Ipsum dolor sit aemet.	Arthur Van Meenen	18	12
2	1	Lorem Ipsum dolor sit aemet.\r\nLorem Ipsum dolor sit aemet.	Lorem Ipsum dolor sit aemet.\r\nLorem Ipsum dolor sit aemet.	Arthur Van Meenen	18	12
3	2	Lorem Ipsum dolor sit aemet.\r\nLorem Ipsum dolor sit aemet.	Lorem Ipsum dolor sit aemet.\r\nLorem Ipsum dolor sit aemet.	Arthur Van Meenen	18	12
\.


--
-- Name: aboutus_testimonialselement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('aboutus_testimonialselement_id_seq', 3, true);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY auth_group (id, name) FROM stdin;
1	Moderators
2	Editors
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('auth_group_id_seq', 2, true);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	2	1
5	2	2
6	2	3
7	1	4
8	1	5
9	1	6
10	2	4
11	2	5
12	2	6
13	1	7
14	2	7
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 14, true);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add image	2	add_image
2	Can change image	2	change_image
3	Can delete image	2	delete_image
4	Can add document	3	add_document
5	Can change document	3	change_document
6	Can delete document	3	delete_document
7	Can access Wagtail admin	4	access_admin
8	Can add Tagged Item	5	add_taggeditem
9	Can change Tagged Item	5	change_taggeditem
10	Can delete Tagged Item	5	delete_taggeditem
11	Can add Tag	6	add_tag
12	Can change Tag	6	change_tag
13	Can delete Tag	6	delete_tag
14	Can add video element	7	add_videoelement
15	Can change video element	7	change_videoelement
16	Can delete video element	7	delete_videoelement
17	Can add benefits elements	8	add_benefitselements
18	Can change benefits elements	8	change_benefitselements
19	Can delete benefits elements	8	delete_benefitselements
20	Can add app button element	9	add_appbuttonelement
21	Can change app button element	9	change_appbuttonelement
22	Can delete app button element	9	delete_appbuttonelement
23	Can add slider elements	10	add_sliderelements
24	Can change slider elements	10	change_sliderelements
25	Can delete slider elements	10	delete_sliderelements
26	Can add home page	11	add_homepage
27	Can change home page	11	change_homepage
28	Can delete home page	11	delete_homepage
29	Can add Header	12	add_header
30	Can change Header	12	change_header
31	Can delete Header	12	delete_header
32	Can add Menu item	13	add_menuitem
33	Can change Menu item	13	change_menuitem
34	Can delete Menu item	13	delete_menuitem
35	Can add Language item	14	add_languageitem
36	Can change Language item	14	change_languageitem
37	Can delete Language item	14	delete_languageitem
38	Can add Footer item	15	add_footerlink
39	Can change Footer item	15	change_footerlink
40	Can delete Footer item	15	delete_footerlink
41	Can add Footer	16	add_footer
42	Can change Footer	16	change_footer
43	Can delete Footer	16	delete_footer
44	Can add Welcome	17	add_welcomepage
45	Can change Welcome	17	change_welcomepage
46	Can delete Welcome	17	delete_welcomepage
47	Can add submit form field	18	add_submitformfield
48	Can change submit form field	18	change_submitformfield
49	Can delete submit form field	18	delete_submitformfield
50	Can add phone number	19	add_phonenumber
51	Can change phone number	19	change_phonenumber
52	Can delete phone number	19	delete_phonenumber
53	Can add days block	20	add_daysblock
54	Can change days block	20	change_daysblock
55	Can delete days block	20	delete_daysblock
56	Can add contact us	21	add_contactus
57	Can change contact us	21	change_contactus
58	Can delete contact us	21	delete_contactus
59	Can add reason block	22	add_reasonblock
60	Can change reason block	22	change_reasonblock
61	Can delete reason block	22	delete_reasonblock
62	Can add testimonials element	23	add_testimonialselement
63	Can change testimonials element	23	change_testimonialselement
64	Can delete testimonials element	23	delete_testimonialselement
65	Can add about us	24	add_aboutus
66	Can change about us	24	change_aboutus
67	Can delete about us	24	delete_aboutus
68	Can add Help Question Element	25	add_helpquestions
69	Can change Help Question Element	25	change_helpquestions
70	Can delete Help Question Element	25	delete_helpquestions
71	Can add video element	26	add_videoelement
72	Can change video element	26	change_videoelement
73	Can delete video element	26	delete_videoelement
74	Can add help page	27	add_helppage
75	Can change help page	27	change_helppage
76	Can delete help page	27	delete_helppage
77	Can add Help Question Element	28	add_helpquestions
78	Can change Help Question Element	28	change_helpquestions
79	Can delete Help Question Element	28	delete_helpquestions
80	Can add benefits elements	29	add_benefitselements
81	Can change benefits elements	29	change_benefitselements
82	Can delete benefits elements	29	delete_benefitselements
83	Can add compte page	30	add_comptepage
84	Can change compte page	30	change_comptepage
85	Can delete compte page	30	delete_comptepage
86	Can add Categories	31	add_categories
87	Can change Categories	31	change_categories
88	Can delete Categories	31	delete_categories
89	Can add document part	32	add_documentpart
90	Can change document part	32	change_documentpart
91	Can delete document part	32	delete_documentpart
92	Can add documents	33	add_documents
93	Can change documents	33	change_documents
94	Can delete documents	33	delete_documents
95	Can add categories part	34	add_categoriespart
96	Can change categories part	34	change_categoriespart
97	Can delete categories part	34	delete_categoriespart
98	Can add aop	35	add_aop
99	Can change aop	35	change_aop
100	Can delete aop	35	delete_aop
101	Can add countries tin	36	add_countriestin
102	Can change countries tin	36	change_countriestin
103	Can delete countries tin	36	delete_countriestin
104	Can add products config	37	add_productsconfig
105	Can change products config	37	change_productsconfig
106	Can delete products config	37	delete_productsconfig
107	Can add cookies	38	add_cookies
108	Can change cookies	38	change_cookies
109	Can delete cookies	38	delete_cookies
110	Can add Cookie Information Element	39	add_cookieselement
111	Can change Cookie Information Element	39	change_cookieselement
112	Can delete Cookie Information Element	39	delete_cookieselement
113	Can add cookies page	40	add_cookiespage
114	Can change cookies page	40	change_cookiespage
115	Can delete cookies page	40	delete_cookiespage
116	Can add search page	41	add_searchpage
117	Can change search page	41	change_searchpage
118	Can delete search page	41	delete_searchpage
119	Can add Country	42	add_country
120	Can change Country	42	change_country
121	Can delete Country	42	delete_country
122	Can add Countries	43	add_countries
123	Can change Countries	43	change_countries
124	Can delete Countries	43	delete_countries
125	Can add log entry	44	add_logentry
126	Can change log entry	44	change_logentry
127	Can delete log entry	44	delete_logentry
128	Can add permission	45	add_permission
129	Can change permission	45	change_permission
130	Can delete permission	45	delete_permission
131	Can add group	46	add_group
132	Can change group	46	change_group
133	Can delete group	46	delete_group
134	Can add user	47	add_user
135	Can change user	47	change_user
136	Can delete user	47	delete_user
137	Can add content type	48	add_contenttype
138	Can change content type	48	change_contenttype
139	Can delete content type	48	delete_contenttype
140	Can add session	49	add_session
141	Can change session	49	change_session
142	Can delete session	49	delete_session
143	Can add form submission	50	add_formsubmission
144	Can change form submission	50	change_formsubmission
145	Can delete form submission	50	delete_formsubmission
146	Can add redirect	51	add_redirect
147	Can change redirect	51	change_redirect
148	Can delete redirect	51	delete_redirect
149	Can add embed	52	add_embed
150	Can change embed	52	change_embed
151	Can delete embed	52	delete_embed
152	Can add user profile	53	add_userprofile
153	Can change user profile	53	change_userprofile
154	Can delete user profile	53	delete_userprofile
155	Can add rendition	54	add_rendition
156	Can change rendition	54	change_rendition
157	Can delete rendition	54	delete_rendition
158	Can add filter	55	add_filter
159	Can change filter	55	change_filter
160	Can delete filter	55	delete_filter
161	Can add Query Daily Hits	56	add_querydailyhits
162	Can change Query Daily Hits	56	change_querydailyhits
163	Can delete Query Daily Hits	56	delete_querydailyhits
164	Can add query	57	add_query
165	Can change query	57	change_query
166	Can delete query	57	delete_query
167	Can add group page permission	58	add_grouppagepermission
168	Can change group page permission	58	change_grouppagepermission
169	Can delete group page permission	58	delete_grouppagepermission
170	Can add site	59	add_site
171	Can change site	59	change_site
172	Can delete site	59	delete_site
173	Can add page view restriction	60	add_pageviewrestriction
174	Can change page view restriction	60	change_pageviewrestriction
175	Can delete page view restriction	60	delete_pageviewrestriction
176	Can add collection	61	add_collection
177	Can change collection	61	change_collection
178	Can delete collection	61	delete_collection
179	Can add page revision	62	add_pagerevision
180	Can change page revision	62	change_pagerevision
181	Can delete page revision	62	delete_pagerevision
182	Can add page	1	add_page
183	Can change page	1	change_page
184	Can delete page	1	delete_page
185	Can add group collection permission	63	add_groupcollectionpermission
186	Can change group collection permission	63	change_groupcollectionpermission
187	Can delete group collection permission	63	delete_groupcollectionpermission
188	Can add embed video	64	add_embedvideo
189	Can change embed video	64	change_embedvideo
190	Can delete embed video	64	delete_embedvideo
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('auth_permission_id_seq', 190, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$30000$eCsMORSsnWPN$bkKui2HPUiOMDH6FbUKCPHKAqxRR/7vBE4ANMMK+iLc=	2016-10-25 12:02:28.937093+02	t	benelux				t	t	2016-10-25 12:01:51.54141+02
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: compte_benefitselements; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY compte_benefitselements (id, sort_order, title_fr, title_nl, text_fr, text_nl, benefits_id, image_id) FROM stdin;
11	1	Une résponse inmédiate	Une résponse inmédiate	Très vite vous êtes tenus au courant du suivi de votre dossier. Un emprunt sur mesure jusqu'à €50 000	Très vite vous êtes tenus au courant du suivi de votre dossier. Un emprunt sur mesure jusqu'à €50 000	8	10
12	2	Aim for loyalty bonus	Aim for loyalty bonus	Emprunter sans soucis grâce au plan de protection optionnel adapté. Emprunter sans soucis grâce au plan de protection optionnel adapté.	Emprunter sans soucis grâce au plan de protection optionnel adapté. Emprunter sans soucis grâce au plan de protection optionnel adapté.	8	16
7	0	Un meilleur tarif	Un meilleur tarif	Vous êtes libres de l'objet de votre financement, vous n'avez pas à présenter de factures durée et remboursements mensuels fixes	Vous êtes libres de l'objet de votre financement, vous n'avez pas à présenter de factures durée et remboursements mensuels fixes	7	15
8	1	Une résponse inmédiate	Une résponse inmédiate	Très vite vous êtes tenus au courant du suivi de votre dossier. Un emprunt sur mesure jusqu'à €50 000	Très vite vous êtes tenus au courant du suivi de votre dossier. Un emprunt sur mesure jusqu'à €50 000	7	10
9	2	Aim for loyalty bonus	Aim for loyalty bonus	Emprunter sans soucis grâce au plan de protection optionnel adapté. Emprunter sans soucis grâce au plan de protection optionnel adapté.	Emprunter sans soucis grâce au plan de protection optionnel adapté. Emprunter sans soucis grâce au plan de protection optionnel adapté.	7	16
10	0	Un meilleur tarif	Un meilleur tarif	Vous êtes libres de l'objet de votre financement, vous n'avez pas à présenter de factures durée et remboursements mensuels fixes	Vous êtes libres de l'objet de votre financement, vous n'avez pas à présenter de factures durée et remboursements mensuels fixes	8	15
\.


--
-- Name: compte_benefitselements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('compte_benefitselements_id_seq', 12, true);


--
-- Data for Name: compte_comptepage; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY compte_comptepage (page_ptr_id, simulator_title_fr, simulator_title_nl, simulator_text_fr, simulator_text_nl, contact_text_fr, contact_text_nl, document_text_fr, document_text_nl, details_title_fr, details_title_nl, details_text_fr, details_text_nl, details_link_text_fr, details_link_text_nl, contact_url_id, document_url_id, info_block_image_id, product_id) FROM stdin;
7	Learn how much you can save with our savings accounts!	Learn how much you can save with our savings accounts!	<p>Sample for fixed interest rate for 1 year lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>	<p>Sample for fixed interest rate for 1 year lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.	Our Fidélité Account	Our Fidélité Account	A savings account is a perfect partner for your checking account. Checking helps you pay your monthly bills, while savings helps you accumulate extra cash for things you want in the future. The sooner you start, the sooner you'll be building your balances for tomorrow's goals. So why not begin saving today?.	A savings account is a perfect partner for your checking account. Checking helps you pay your monthly bills, while savings helps you accumulate extra cash for things you want in the future. The sooner you start, the sooner you'll be building your balances for tomorrow's goals. So why not begin saving today?.	More details and term and conditions	More details and term and conditions	\N	\N	14	1
8	Learn how much you can save with our savings accounts!	Learn how much you can save with our savings accounts!	<p>Sample for fixed interest rate for 1 year lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>	<p>Sample for fixed interest rate for 1 year lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.	Our Fidélité Account	Our Fidélité Account	A savings account is a perfect partner for your checking account. Checking helps you pay your monthly bills, while savings helps you accumulate extra cash for things you want in the future. The sooner you start, the sooner you'll be building your balances for tomorrow's goals. So why not begin saving today?.	A savings account is a perfect partner for your checking account. Checking helps you pay your monthly bills, while savings helps you accumulate extra cash for things you want in the future. The sooner you start, the sooner you'll be building your balances for tomorrow's goals. So why not begin saving today?.	More details and term and conditions	More details and term and conditions	\N	\N	14	1
\.


--
-- Data for Name: compte_helpquestions; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY compte_helpquestions (id, sort_order, title_fr, title_nl, text_fr, text_nl, questions_id) FROM stdin;
7	0	REQUIREMENTS TO GET A FIDÉLITÉ ACCOUNT	REQUIREMENTS TO GET A FIDÉLITÉ ACCOUNT	<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.</p>	<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.</p>	7
8	2	REQUIREMENTS TO GET A FIDÉLITÉ ACCOUNT	REQUIREMENTS TO GET A FIDÉLITÉ ACCOUNT	<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.</p>	<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.</p>	8
9	0	HOW DOES THE FIDÉLITE ACCOUNT WORKS?	HOW DOES THE FIDÉLITE ACCOUNT WORKS?	<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.</p>	<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.</p>	8
10	1	Fidélite savings account terms and conditions	Fidélite savings account terms and conditions	<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.</p>	<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.</p>	8
\.


--
-- Name: compte_helpquestions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('compte_helpquestions_id_seq', 10, true);


--
-- Data for Name: contactus_contactus; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY contactus_contactus (page_ptr_id, to_address, from_address, subject, contact_us_title_fr, contact_us_title_nl, email_address, email_title_fr, email_title_nl, email_subtext_fr, email_subtext_nl) FROM stdin;
14				Contact us!	Contact us!	info@santander.be	E-mail us	E-mail us	any time and we will get intouch with you asap.	any time and we will get intouch with you asap.
\.


--
-- Data for Name: contactus_daysblock; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY contactus_daysblock (id, sort_order, days_fr, days_nl, hours_fr, hours_nl, page_id) FROM stdin;
1	0	Monday - Saturday	Monday - Saturday	8:00 hrs - 22:00 hrs	8:00 hrs - 22:00 hrs	14
\.


--
-- Name: contactus_daysblock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('contactus_daysblock_id_seq', 1, true);


--
-- Data for Name: contactus_phonenumber; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY contactus_phonenumber (id, sort_order, phone, country, page_id) FROM stdin;
1	0	09 235 00 000	FR	14
2	1	09 235 00 000	NL	14
\.


--
-- Name: contactus_phonenumber_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('contactus_phonenumber_id_seq', 2, true);


--
-- Data for Name: contactus_submitformfield; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY contactus_submitformfield (id, sort_order, label, field_type, required, choices, default_value, help_text, page_id) FROM stdin;
\.


--
-- Name: contactus_submitformfield_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('contactus_submitformfield_id_seq', 1, false);


--
-- Data for Name: cookies_cookies; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY cookies_cookies (id, text_fr, text_nl) FROM stdin;
1	<p>En poursuivant votre navigation sur ce site, vous acceptez l’utilisation de cookies pour vous proposer des contenus et services adaptés à vos centres d’intérêts. <b>En savoir plus et gérer ces paramètres.</b></p>	<p>En poursuivant votre navigation sur ce site, vous acceptez l’utilisation de cookies pour vous proposer des contenus et services adaptés à vos centres d’intérêts. <b>En savoir plus et gérer ces paramètres.</b></p>
\.


--
-- Name: cookies_cookies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('cookies_cookies_id_seq', 1, true);


--
-- Data for Name: cookies_page_cookieselement; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY cookies_page_cookieselement (id, sort_order, title_fr, title_nl, text_fr, text_nl, elements_id) FROM stdin;
1	2	About Cookies	About Cookies	<h2>Cookie title 1</h2><h5>subitle information</h5><p><br/></p><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.<b> Aenean leo ligula, portt</b>itor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>	<h2>Cookie title 1</h2><h5>subitle information</h5><p><br/></p><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.<b> Aenean leo ligula, portt</b>itor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>	9
2	0	Santander Savings and Cookies	Santander Savings and Cookies	<h2>Cookie title 2</h2><h5>subitle information</h5><p><br/></p><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.<b> Aenean leo ligula, portt</b>itor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>	<h2>Cookie title 2</h2><h5>subitle information</h5><p><br/></p><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.<b> Aenean leo ligula, portt</b>itor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>	9
3	1	Managing Cookies	Managing Cookies	<h2>Cookie title 3</h2><h5>subitle information</h5><p><br/></p><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.<b> Aenean leo ligula, portt</b>itor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>	<h2>Cookie title 3</h2><h5>subitle information</h5><p><br/></p><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.<b> Aenean leo ligula, portt</b>itor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>	9
\.


--
-- Name: cookies_page_cookieselement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('cookies_page_cookieselement_id_seq', 3, true);


--
-- Data for Name: cookies_page_cookiespage; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY cookies_page_cookiespage (page_ptr_id, cookies_title_fr, cookies_title_nl, cookies_subtitle_fr, cookies_subtitle_nl) FROM stdin;
9	Cookies Policy	Cookies Policy	Check our cookies policy and information	Check our cookies policy and information
\.


--
-- Data for Name: countries_countries; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY countries_countries (id) FROM stdin;
\.


--
-- Name: countries_countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('countries_countries_id_seq', 1, false);


--
-- Data for Name: countries_country; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY countries_country (id, sort_order, name, mandatory, countries_id) FROM stdin;
\.


--
-- Name: countries_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('countries_country_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	wagtailcore	page
2	wagtailimages	image
3	wagtaildocs	document
4	wagtailadmin	admin
5	taggit	taggeditem
6	taggit	tag
7	home	videoelement
8	home	benefitselements
9	home	appbuttonelement
10	home	sliderelements
11	home	homepage
12	header	header
13	header	menuitem
14	header	languageitem
15	footer	footerlink
16	footer	footer
17	welcome	welcomepage
18	contactus	submitformfield
19	contactus	phonenumber
20	contactus	daysblock
21	contactus	contactus
22	aboutus	reasonblock
23	aboutus	testimonialselement
24	aboutus	aboutus
25	help	helpquestions
26	help	videoelement
27	help	helppage
28	compte	helpquestions
29	compte	benefitselements
30	compte	comptepage
31	documents	categories
32	documents	documentpart
33	documents	documents
34	documents	categoriespart
35	AOP	aop
36	products_config	countriestin
37	products_config	productsconfig
38	cookies	cookies
39	cookies_page	cookieselement
40	cookies_page	cookiespage
41	page_search	searchpage
42	countries	country
43	countries	countries
44	admin	logentry
45	auth	permission
46	auth	group
47	auth	user
48	contenttypes	contenttype
49	sessions	session
50	wagtailforms	formsubmission
51	wagtailredirects	redirect
52	wagtailembeds	embed
53	wagtailusers	userprofile
54	wagtailimages	rendition
55	wagtailimages	filter
56	wagtailsearch	querydailyhits
57	wagtailsearch	query
58	wagtailcore	grouppagepermission
59	wagtailcore	site
60	wagtailcore	pageviewrestriction
61	wagtailcore	collection
62	wagtailcore	pagerevision
63	wagtailcore	groupcollectionpermission
64	wagtail_embed_videos	embedvideo
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('django_content_type_id_seq', 64, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2016-10-25 12:00:30.628043+02
2	taggit	0001_initial	2016-10-25 12:00:30.715721+02
3	taggit	0002_auto_20150616_2121	2016-10-25 12:00:30.742502+02
4	auth	0001_initial	2016-10-25 12:00:31.006175+02
5	wagtailimages	0001_initial	2016-10-25 12:00:31.20926+02
6	wagtailcore	0001_initial	2016-10-25 12:00:31.840665+02
7	wagtailcore	0002_initial_data	2016-10-25 12:00:31.845244+02
8	wagtailcore	0003_add_uniqueness_constraint_on_group_page_permission	2016-10-25 12:00:31.848986+02
9	wagtailcore	0004_page_locked	2016-10-25 12:00:31.859524+02
10	wagtailcore	0005_add_page_lock_permission_to_moderators	2016-10-25 12:00:31.868012+02
11	wagtailcore	0006_add_lock_page_permission	2016-10-25 12:00:31.871923+02
12	wagtailcore	0007_page_latest_revision_created_at	2016-10-25 12:00:31.875957+02
13	wagtailcore	0008_populate_latest_revision_created_at	2016-10-25 12:00:31.883824+02
14	wagtailcore	0009_remove_auto_now_add_from_pagerevision_created_at	2016-10-25 12:00:31.887318+02
15	wagtailcore	0010_change_page_owner_to_null_on_delete	2016-10-25 12:00:31.890065+02
16	wagtailcore	0011_page_first_published_at	2016-10-25 12:00:31.893835+02
17	wagtailcore	0012_extend_page_slug_field	2016-10-25 12:00:31.897253+02
18	wagtailcore	0013_update_golive_expire_help_text	2016-10-25 12:00:31.899864+02
19	wagtailcore	0014_add_verbose_name	2016-10-25 12:00:31.902523+02
20	wagtailcore	0015_add_more_verbose_names	2016-10-25 12:00:31.90539+02
21	wagtailcore	0016_change_page_url_path_to_text_field	2016-10-25 12:00:31.909825+02
22	wagtailimages	0002_initial_data	2016-10-25 12:00:31.945685+02
23	wagtailimages	0003_fix_focal_point_fields	2016-10-25 12:00:32.139997+02
24	wagtailimages	0004_make_focal_point_key_not_nullable	2016-10-25 12:00:32.222638+02
25	wagtailimages	0005_make_filter_spec_unique	2016-10-25 12:00:32.340769+02
26	wagtailimages	0006_add_verbose_names	2016-10-25 12:00:32.541243+02
27	wagtailimages	0007_image_file_size	2016-10-25 12:00:32.612187+02
28	wagtailimages	0008_image_created_at_index	2016-10-25 12:00:32.682364+02
29	wagtailimages	0009_capitalizeverbose	2016-10-25 12:00:33.068811+02
30	wagtailimages	0010_change_on_delete_behaviour	2016-10-25 12:00:33.137907+02
31	wagtailcore	0017_change_edit_page_permission_description	2016-10-25 12:00:33.198049+02
32	wagtailcore	0018_pagerevision_submitted_for_moderation_index	2016-10-25 12:00:33.251049+02
33	wagtailcore	0019_verbose_names_cleanup	2016-10-25 12:00:33.443071+02
34	wagtailcore	0020_add_index_on_page_first_published_at	2016-10-25 12:00:33.488009+02
35	wagtailcore	0021_capitalizeverbose	2016-10-25 12:00:35.041086+02
36	wagtailcore	0022_add_site_name	2016-10-25 12:00:35.189932+02
37	wagtailcore	0023_alter_page_revision_on_delete_behaviour	2016-10-25 12:00:35.258314+02
38	wagtailcore	0024_collection	2016-10-25 12:00:35.298881+02
39	wagtailcore	0025_collection_initial_data	2016-10-25 12:00:35.318236+02
40	wagtailcore	0026_group_collection_permission	2016-10-25 12:00:35.457715+02
41	wagtailimages	0011_image_collection	2016-10-25 12:00:35.566897+02
42	wagtailimages	0012_copy_image_permissions_to_collections	2016-10-25 12:00:35.59982+02
43	wagtailimages	0013_make_rendition_upload_callable	2016-10-25 12:00:35.65702+02
44	wagtailcore	0027_fix_collection_path_collation	2016-10-25 12:00:35.680554+02
45	wagtailcore	0024_alter_page_content_type_on_delete_behaviour	2016-10-25 12:00:35.767043+02
46	wagtailcore	0028_merge	2016-10-25 12:00:35.77194+02
47	wagtailcore	0029_unicode_slugfield_dj19	2016-10-25 12:00:35.826964+02
48	AOP	0001_initial	2016-10-25 12:00:35.99846+02
49	aboutus	0001_initial	2016-10-25 12:00:36.414514+02
50	admin	0001_initial	2016-10-25 12:00:36.683901+02
51	admin	0002_logentry_remove_auto_add	2016-10-25 12:00:36.767031+02
52	contenttypes	0002_remove_content_type_name	2016-10-25 12:00:36.981166+02
53	auth	0002_alter_permission_name_max_length	2016-10-25 12:00:37.074409+02
54	auth	0003_alter_user_email_max_length	2016-10-25 12:00:37.158398+02
55	auth	0004_alter_user_username_opts	2016-10-25 12:00:37.230086+02
56	auth	0005_alter_user_last_login_null	2016-10-25 12:00:37.340395+02
57	auth	0006_require_contenttypes_0002	2016-10-25 12:00:37.34526+02
58	auth	0007_alter_validators_add_error_messages	2016-10-25 12:00:37.419225+02
59	auth	0008_alter_user_username_max_length	2016-10-25 12:00:37.502877+02
60	compte	0001_initial	2016-10-25 12:00:37.974741+02
61	contactus	0001_initial	2016-10-25 12:00:38.398895+02
62	cookies	0001_initial	2016-10-25 12:00:38.442981+02
63	cookies_page	0001_initial	2016-10-25 12:00:38.684984+02
64	countries	0001_initial	2016-10-25 12:00:38.731744+02
65	wagtaildocs	0001_initial	2016-10-25 12:00:38.861095+02
66	wagtaildocs	0002_initial_data	2016-10-25 12:00:38.904954+02
67	wagtaildocs	0003_add_verbose_names	2016-10-25 12:00:39.347104+02
68	wagtaildocs	0004_capitalizeverbose	2016-10-25 12:00:39.970352+02
69	wagtaildocs	0005_document_collection	2016-10-25 12:00:40.118902+02
70	wagtaildocs	0006_copy_document_permissions_to_collections	2016-10-25 12:00:40.159425+02
71	wagtaildocs	0005_alter_uploaded_by_user_on_delete_action	2016-10-25 12:00:40.289422+02
72	wagtaildocs	0007_merge	2016-10-25 12:00:40.29345+02
73	documents	0001_initial	2016-10-25 12:00:41.018723+02
74	footer	0001_initial	2016-10-25 12:00:41.161817+02
75	header	0001_initial	2016-10-25 12:00:41.661609+02
76	wagtail_embed_videos	0001_initial	2016-10-25 12:00:41.802337+02
77	wagtail_embed_videos	0002_auto_20150720_1137	2016-10-25 12:00:42.207849+02
78	wagtail_embed_videos	0003_auto_20150817_1256	2016-10-25 12:00:42.57766+02
79	help	0001_initial	2016-10-25 12:00:43.066181+02
80	home	0001_initial	2016-10-25 12:00:44.326973+02
81	page_search	0001_initial	2016-10-25 12:00:44.492798+02
82	products_config	0001_initial	2016-10-25 12:00:44.872768+02
83	sessions	0001_initial	2016-10-25 12:00:44.947846+02
84	wagtailadmin	0001_create_admin_access_permissions	2016-10-25 12:00:44.990864+02
85	wagtailembeds	0001_initial	2016-10-25 12:00:45.039801+02
86	wagtailembeds	0002_add_verbose_names	2016-10-25 12:00:45.064313+02
87	wagtailembeds	0003_capitalizeverbose	2016-10-25 12:00:45.097769+02
88	wagtailforms	0001_initial	2016-10-25 12:00:45.287593+02
89	wagtailforms	0002_add_verbose_names	2016-10-25 12:00:45.71655+02
90	wagtailforms	0003_capitalizeverbose	2016-10-25 12:00:46.041705+02
91	wagtailredirects	0001_initial	2016-10-25 12:00:46.178479+02
92	wagtailredirects	0002_add_verbose_names	2016-10-25 12:00:46.585474+02
93	wagtailredirects	0003_make_site_field_editable	2016-10-25 12:00:46.768613+02
94	wagtailredirects	0004_set_unique_on_path_and_site	2016-10-25 12:00:47.151233+02
95	wagtailredirects	0005_capitalizeverbose	2016-10-25 12:00:48.090688+02
96	wagtailsearch	0001_initial	2016-10-25 12:00:48.526017+02
97	wagtailsearch	0002_add_verbose_names	2016-10-25 12:00:49.272797+02
98	wagtailsearch	0003_remove_editors_pick	2016-10-25 12:00:49.380596+02
99	wagtailusers	0001_initial	2016-10-25 12:00:49.498649+02
100	wagtailusers	0002_add_verbose_name_on_userprofile	2016-10-25 12:00:49.747522+02
101	wagtailusers	0003_add_verbose_names	2016-10-25 12:00:49.834438+02
102	wagtailusers	0004_capitalizeverbose	2016-10-25 12:00:50.45112+02
103	welcome	0001_initial	2016-10-25 12:00:50.72534+02
104	wagtailcore	0001_squashed_0016_change_page_url_path_to_text_field	2016-10-25 12:00:50.732273+02
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('django_migrations_id_seq', 104, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
k79na7ybhex7kbv9ixfyj8n5987x40z0	NzE2YzQ0OTZjNDZjYTkwMDc2MjNmMTg4MDlkNjQzYTc2ZDNiMmNlODp7IndpemFyZF9hb3Bfd2l6YXJkIjp7InN0ZXBfZGF0YSI6eyJmaXJzdCI6eyJmaXJzdC10d29faG9sZGVycyI6WyJvbiJdLCJhb3Bfd2l6YXJkLWN1cnJlbnRfc3RlcCI6WyJmaXJzdCJdLCJjc3JmbWlkZGxld2FyZXRva2VuIjpbIkRMQTdrMFdOSlZGMFZmMVlLMlFOa2x1a09tUW9paVowdTd5YjMwYWFQUFhhQXdtQmpnckJISVFJbWhXNWl1em4iXX19LCJleHRyYV9kYXRhIjp7fSwic3RlcF9maWxlcyI6eyJmaXJzdCI6e319LCJzdGVwIjoicGVyc29uYWwxIn0sIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI4NDBmNDJlMTJjODUxNzg1N2ZjMjExZDU5MDUzMjNlM2FkODM5ZmFjIiwiYW9wX2lkIjoxfQ==	2016-11-08 12:55:16.758615+01
\.


--
-- Data for Name: documents_categories; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY documents_categories (id, category) FROM stdin;
1	Categoría 1
2	Categoría 2
3	Categoría 3
\.


--
-- Name: documents_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('documents_categories_id_seq', 3, true);


--
-- Data for Name: documents_categoriespart; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY documents_categoriespart (categories_ptr_id, sort_order, cat_id) FROM stdin;
1	0	11
2	1	11
3	2	11
\.


--
-- Data for Name: documents_documentpart; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY documents_documentpart (id, sort_order, doc_title_fr, doc_title_nl, doc_id, "docCategory_id", doc_file_id) FROM stdin;
1	0	More details and term and conditions	More details and term and conditions	11	1	\N
2	1	More details and term and conditions	More details and term and conditions	11	1	\N
3	2	More details and term and conditions	More details and term and conditions	11	2	\N
4	3	More details and term and conditions	More details and term and conditions	11	3	\N
5	4	More details and term and conditions	More details and term and conditions	11	3	\N
6	5	More details and term and conditions	More details and term and conditions	11	3	\N
\.


--
-- Name: documents_documentpart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('documents_documentpart_id_seq', 6, true);


--
-- Data for Name: documents_documents; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY documents_documents (page_ptr_id, title_fr, title_nl, subtitle_fr, subtitle_nl) FROM stdin;
11	Documents	Documents	Block Subtitle	Block Subtitle
\.


--
-- Data for Name: footer_footer; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY footer_footer (id, contact_phone_number, info) FROM stdin;
1	09 235 00 00	<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.</p>
\.


--
-- Name: footer_footer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('footer_footer_id_seq', 1, true);


--
-- Data for Name: footer_footerlink; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY footer_footerlink (id, sort_order, text_fr, text_nl, footer_id, link_document_id) FROM stdin;
1	0	About us	About us	1	\N
2	1	Documents	Documents	1	\N
3	2	General Conditions	General Conditions	1	\N
4	3	Privacy Policy	Privacy Policy	1	\N
5	4	Cookies Policy	Cookies Policy	1	\N
6	5	Help	Help	1	\N
\.


--
-- Name: footer_footerlink_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('footer_footerlink_id_seq', 6, true);


--
-- Data for Name: header_header; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY header_header (id, contact_text_fr, contact_text_nl, contact_number_fr, contact_number_nl, login_text_fr, login_text_nl, banner_header_id, banner_phone_id, contact_url_id, login_url_id, logo_id) FROM stdin;
1	Contact us	Contact us	09 235 00 000	09 235 00 000	Login	Login	3	2	\N	\N	4
\.


--
-- Name: header_header_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('header_header_id_seq', 1, true);


--
-- Data for Name: header_languageitem; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY header_languageitem (id, sort_order, text, url, header_id) FROM stdin;
1	0	FR	fr	1
2	1	NL	nl	1
\.


--
-- Name: header_languageitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('header_languageitem_id_seq', 2, true);


--
-- Data for Name: header_menuitem; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY header_menuitem (id, sort_order, link_external, text_fr, text_nl, header_id, link_document_id, link_page_id) FROM stdin;
1	0		Home	Home	1	\N	\N
2	1		Compte Fidélité	Compte Fidélité	1	\N	\N
3	2		Compte Prime	Compte Prime	1	\N	\N
4	3		About us	About us	1	\N	\N
5	4		Help	Help	1	\N	\N
\.


--
-- Name: header_menuitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('header_menuitem_id_seq', 5, true);


--
-- Data for Name: help_helppage; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY help_helppage (page_ptr_id, helptitle_fr, helptitle_nl, helpsubtitle_fr, helpsubtitle_nl, title_manual_fr, title_manual_nl, email_title_fr, email_title_nl, email_subtext_fr, email_subtext_nl) FROM stdin;
10	Need help?	Need help?	Check our FAQs. \r\nStart by selecting a category.	Check our FAQs. \r\nStart by selecting a category.	Manuals: How to...	Manuals: How to...	Didn't find what you were looking for?	Didn't find what you were looking for?	Submit us \r\nyour question	Submit us \r\nyour question
\.


--
-- Data for Name: help_helpquestions; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY help_helpquestions (id, sort_order, title_fr, title_nl, text_fr, text_nl, questions_id) FROM stdin;
1	6	Compte Fidelité	Compte Fidelité	<h4><b>How it works</b></h4><p>Lorem ipsum <b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>	<h4><b>How it works</b></h4><p>Lorem ipsum <b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>	10
2	0	Compte Prime	Compte Prime	<h4><b>How it works</b></h4><p>Lorem ipsum <b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>	<h4><b>How it works</b></h4><p>Lorem ipsum <b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>	10
3	1	Interest Rate	Interest Rate	<h4><b>How it works</b></h4><p>Lorem ipsum <b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>	<h4><b>How it works</b></h4><p>Lorem ipsum <b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>	10
4	2	Prerequisits to open Account	Prerequisits to open Account	<h4><b>How it works</b></h4><p>Lorem ipsum <b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>	<h4><b>How it works</b></h4><p>Lorem ipsum <b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>	10
5	3	Open Account	Open Account	<h4><b>How it works</b></h4><p>Lorem ipsum <b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>	<h4><b>How it works</b></h4><p>Lorem ipsum <b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>	10
6	4	Closing Account	Closing Account	<h4><b>How it works</b></h4><p>Lorem ipsum <b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>	<h4><b>How it works</b></h4><p>Lorem ipsum <b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>	10
7	5	Online Banking	Online Banking	<h4><b>How it works</b></h4><p>Lorem ipsum <b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>	<h4><b>How it works</b></h4><p>Lorem ipsum <b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>	10
\.


--
-- Name: help_helpquestions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('help_helpquestions_id_seq', 7, true);


--
-- Data for Name: help_videoelement; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY help_videoelement (id, sort_order, video_title_fr, video_title_nl, video_subtitle_fr, video_subtitle_nl, block_id, video_link_id) FROM stdin;
1	0	Manual 1	Manual 1	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.	10	1
2	1	Manual 2	Manual 2	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.	10	1
\.


--
-- Name: help_videoelement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('help_videoelement_id_seq', 2, true);


--
-- Data for Name: home_appbuttonelement; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY home_appbuttonelement (id, sort_order, link_page, "imageApp_id", link_id) FROM stdin;
1	0		12	4
2	1		13	4
\.


--
-- Name: home_appbuttonelement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('home_appbuttonelement_id_seq', 2, true);


--
-- Data for Name: home_benefitselements; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY home_benefitselements (id, sort_order, title_fr, title_nl, text_fr, text_nl, benefits_id, image_id) FROM stdin;
1	0	Online banking	Online banking	Lorem Ipsum dolor sit aemet.\r\nLorem Ipsum dolor sit aemet.	Lorem Ipsum dolor sit aemet.\r\nLorem Ipsum dolor sit aemet.	4	9
2	1	Fast account opening	Fast account opening	Lorem Ipsum dolor sit aemet.\r\nLorem Ipsum dolor sit aemet.	Lorem Ipsum dolor sit aemet.\r\nLorem Ipsum dolor sit aemet.	4	10
3	2	Mobile	Mobile	Lorem Ipsum dolor sit aemet.\r\nLorem Ipsum dolor sit aemet.	Lorem Ipsum dolor sit aemet.\r\nLorem Ipsum dolor sit aemet.	4	11
\.


--
-- Name: home_benefitselements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('home_benefitselements_id_seq', 3, true);


--
-- Data for Name: home_homepage; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY home_homepage (page_ptr_id, c1_title_fr, c1_title_nl, c1_subtitle_fr, c1_subtitle_nl, c2_title_fr, c2_title_nl, c2_subtitle_fr, c2_subtitle_nl, simulator_title_fr, simulator_title_nl, simulator_text_fr, simulator_text_nl, benefits_title_fr, benefits_title_nl, app_text_fr, app_text_nl, c1_aop_id, c2_aop_id) FROM stdin;
4	Compte Prime	Compte Prime	Lorem ipsum dolor sit aemet.\r\nLorem ipsum dolor sit aemet.	Lorem ipsum dolor sit aemet.\r\nLorem ipsum dolor sit aemet.	Compte Fidelité	Compte Fidelité	Lorem ipsum dolor sit aemet.\r\nLorem ipsum dolor sit aemet.	Lorem ipsum dolor sit aemet.\r\nLorem ipsum dolor sit aemet.	Learn how much you can save with our savings accounts!	Learn how much you can save with our savings accounts!	<p>Sample for fixed interest rate for 1 year lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>	<p>Sample for fixed interest rate for 1 year lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>	Lorem Ipsum enjoy Santander benefits	Lorem Ipsum enjoy Santander benefits	Managing your Santander account is easier than ever with our new App!	Managing your Santander account is easier than ever with our new App!	1	1
\.


--
-- Data for Name: home_sliderelements; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY home_sliderelements (id, sort_order, title_fr, title_nl, text_fr, text_nl, button_fr, button_nl, image_id, page_id) FROM stdin;
1	0	Simple, personal & fair Lorem Ipsum	Simple, personal & fair Lorem Ipsum	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.	Learn more	Learn more	6	4
2	1	Simple, personal & fair Lorem Ipsum	Simple, personal & fair Lorem Ipsum	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.	Learn more	Learn more	7	4
3	2	Simple, personal & fair Lorem Ipsum	Simple, personal & fair Lorem Ipsum	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.	Learn more	Learn more	8	4
\.


--
-- Name: home_sliderelements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('home_sliderelements_id_seq', 3, true);


--
-- Data for Name: home_videoelement; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY home_videoelement (id, sort_order, video_title_fr, video_title_nl, video_subtitle_fr, video_subtitle_nl, block_id, video_link_id) FROM stdin;
1	0	title video	title video	subtitle video	subtitle video	4	1
\.


--
-- Name: home_videoelement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('home_videoelement_id_seq', 1, true);


--
-- Data for Name: page_search_searchpage; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY page_search_searchpage (page_ptr_id, search_title_fr, search_title_nl, search_subtitle_fr, search_subtitle_nl) FROM stdin;
13	Search results	Search results	results for	results for
\.


--
-- Data for Name: products_config_countriestin; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY products_config_countriestin (id, sort_order, name_fr, name_nl, "TIN_mandatory", countries_id) FROM stdin;
1	0	Andorre	Andorra	t	15
2	1	Emirats Arabes Unis	Verenigde Arabische Emiraten	t	15
3	2	Afghanistan	Afghanistan	t	15
4	3	Antigua et Barbuda	Antigua en Barbuda	t	15
5	4	Anguilla	Anguilla	t	15
6	5	Albanie	Albanië	t	15
7	6	Arménie	Armenië	t	15
8	7	Antilles Néerlandaises	Nederlandse Antillen	t	15
9	8	Angola	Angola	t	15
10	9	Antarctique	Antarctica	t	15
11	10	Argentine	Argentinië	t	15
12	11	Samoa Américaines	Amerikaanse Samoa	t	15
13	12	Autriche	Oostenrijk	t	15
14	13	Australie	Australië	t	15
15	14	Aruba	Aruba	t	15
16	15	Aland (Iles)	van Alandseilanden	t	15
17	16	Azerbaïdjan	Azerbeidzjan	t	15
18	17	Bosnie Herzégovine	Bosnië Herzegovina	t	15
19	18	Barbade	Barbados	t	15
20	19	Bangladesh	Bangladesh	t	15
21	20	Belgique	België	t	15
22	21	Burkina Faso	Burkina Faso	t	15
23	22	Bulgarie	Bulgarije	t	15
24	23	Bahrein	Bahrein	t	15
25	24	Burundi	Burundi	t	15
26	25	Bénin	Benin	t	15
27	26	Saint-Barthélemy	Saint-Barthélemy	t	15
28	27	Bermudes	Bermuda-eilanden	t	15
29	28	Brunei Darussalam	Brunei Darussalam	t	15
30	29	Bolivie	Bolivië	t	15
31	30	Bonaire, Saint Eustache	Bonaire, Sint-Eustatius	t	15
32	31	Brésil	Brazilië	t	15
33	32	Bahamas	Bahamas	t	15
34	33	Bhoutan	Bhutan	t	15
35	34	Iles Bouvet	Bouvet Eilanden	t	15
36	35	Botswana	Botswana	t	15
37	36	Bélarus	Belarus	t	15
38	37	Belize	Belize	t	15
39	38	Canada	Canada	t	15
40	39	Iles Cocos	Cocos eilanden	t	15
41	40	République démocratique du Congo	Kongolese democratische republiek	t	15
42	41	République Centrafricaine	Centrale afrikaanse republiek	t	15
43	42	Congo (Brazaville)	Kongo (Brazaville)	t	15
44	43	Suisse	Zwitzerland	t	15
45	44	Côte d'Ivoire	Ivoorkust	t	15
46	45	Iles Cook	Cook eilanden	t	15
47	46	Chili	Chili	t	15
48	47	Cameroun	Kameroen	t	15
49	48	Chine	China	t	15
50	49	Colombie	Colombia	t	15
51	50	Costa Rica (République)	Costa Rica (Republiek)	t	15
52	51	Cuba	Cuba	t	15
53	52	Iles du Cap Vert	Kaapverdische Eilanden	t	15
54	53	Curacao	Curaçao	t	15
55	54	Ile Christmas	Christmas Eiland	t	15
56	55	Chypre	Cyprus	t	15
57	56	République Tchèque	Republiek Tsjechië	t	15
58	57	Allemagne	Duitsland	t	15
59	58	Afars et Issas (Djibouti)	Afars en Issas (Djibouti)	t	15
60	59	Danemark	Denemarken	t	15
61	60	Dominique	Dominica	t	15
62	61	République Dominicaine	Dominicaanse Republiek	t	15
63	62	Algérie	Algerije	t	15
64	63	Equateur	Ecuador	t	15
65	64	Estonie	Estland	t	15
66	65	Egypte	Egypte	t	15
67	66	Sahara Occidental	Westelijke Sahara	t	15
68	67	Erythrée	Eritrea	t	15
69	68	Espagne	Spanje	t	15
70	69	Ethiopie	Ethiopië	t	15
71	70	Communauté européenne	Europese gemeenschap	t	15
72	71	Finlande	Finland	t	15
73	72	Fidji	Fidji	t	15
74	73	Iles Falkland	Falkland Eilanden	t	15
75	74	Micronésie	Micronesië	t	15
76	75	Iles Féroé	Faeroereilanden	t	15
77	76	France	Frankrijk	t	15
78	77	Gabon	Gabon	t	15
79	78	Royaume-Uni	Verenigd Koninkrijk	t	15
80	79	Grenada	Grenada	t	15
81	80	Géorgie	Georgië	t	15
82	81	Guyane Française	Frans-Guyana	t	15
83	82	Guernesey	Guernsey	t	15
84	83	Ghana	Ghana	t	15
85	84	Gibraltar	Gibraltar	t	15
86	85	Groenland	Groenland	t	15
87	86	Gambie	Gambia	t	15
88	87	Guinée	Guinee	t	15
89	88	Guadeloupe	Guadeloupe	t	15
90	89	Guinée Equatoriale	Equatoriaal-Guinea	t	15
91	90	Grèce	Griekenland	t	15
92	91	Géorgie du Sud et Iles Sandwich	Zuid Georgië en Sandwich eilanden	t	15
93	92	Guatemala	Guatemala	t	15
94	93	Guam	Guam	t	15
95	94	Guinée-Bissau	Guinee-Bissau	t	15
96	95	Guyane	Guyana	t	15
97	96	Hong-Kong	Hong-Kong	t	15
98	97	Ile Heard and Mc Donald	Heard and Mc Donald Eiland	t	15
99	98	Honduras	Honduras	t	15
100	99	Croatie	Kroatië	t	15
101	100	Haïti	Haïti	t	15
102	101	Hongrie	Hongarije	t	15
103	102	Indonésie	Indonesië	t	15
104	103	Irlande (Eire)	Ierland (Eire)	t	15
105	104	Israël	Israël	t	15
106	105	Ile de Man	Eiland van Man	t	15
107	106	Inde	India	t	15
108	107	Indes Occidentales Britanniques	Britse Westerlijke India	t	15
109	108	Irak	Irak	t	15
110	109	Iran	Iran	t	15
111	110	Islande	Ijsland	t	15
112	111	Italie	Italië	t	15
113	112	Jersey	Jersey	t	15
114	113	Jamaïque	Jamaïca	t	15
115	114	Jordanie	Jordanië	t	15
116	115	Japon	Japan	t	15
117	116	Kenya	Kenia	t	15
118	117	Kirghizistan	Kirghizistan	t	15
119	118	Cambodge	Cambodja	t	15
120	119	Kiribati	Kiribati	t	15
121	120	Comores	Comoren	t	15
122	121	Saint Kitts et Nevis	Sint Kitts en Nevis	t	15
123	122	Rép. pop. démocratique de Corée	Democrat. Volksrepubliek Korea	t	15
124	123	République de Corée	Republiek van Korea	t	15
125	124	Koweït	Koeweit	t	15
126	125	Caïmans (Iles)	Kaaimans (Eilanden)	t	15
127	126	Kazakhstan	Kazakhstan	t	15
128	127	Laos	Laos	t	15
129	128	Liban	Libanon	t	15
130	129	Sainte-Lucie	Sint Lucia	t	15
131	130	Liechtenstein	Liechtenstein	t	15
132	131	Sri Lanka	Sri Lanka	t	15
133	132	Libéria	Liberia	t	15
134	133	Lesotho	Lesotho	t	15
135	134	Lituanie	Litouwen	t	15
136	135	Grand Duché de Luxembourg	Groothertogdom Luxemburg	t	15
137	136	Lettonie	Letland	t	15
138	137	Lybie	Lybië	t	15
139	138	Maroc	Marokko	t	15
140	139	Monaco	Monaco	t	15
141	140	Moldavie	Moldavië	t	15
142	141	Montenegro	Montenegro	t	15
143	142	Saint-Martin	Sint-Maartens	t	15
144	143	Madagascar	Madagascar	t	15
145	144	Iles Marshall	Marshall Eilanden	t	15
146	145	Macédoine	Macedonië	t	15
147	146	Mali	Mali	t	15
148	147	Myanmar	Myanmar	t	15
149	148	Mongolie	Mongolië	t	15
150	149	Macao	Macao	t	15
151	150	Iles Mariannes	Mariana Eilanden	t	15
152	151	Martinique	Martinique	t	15
153	152	Mauritanie	Mauritanië	t	15
154	153	Montserrat	Montserrat	t	15
155	154	Malte	Malta	t	15
156	155	Ile Maurice	Maurice Eiland	t	15
157	156	Iles Maldives	Malediven Eilanden	t	15
158	157	Malawi	Malawi	t	15
159	158	Mexique	Mexico	t	15
160	159	Malaisie	Maleisië	t	15
161	160	Mozambique	Mozambique	t	15
162	161	Namibie	Namibië	t	15
163	162	Nouvelle-Calédonie	Nieuw-Caledonië	t	15
164	163	Niger	Niger	t	15
165	164	Ile Norfolk	Norfolk Eiland	t	15
166	165	Nigeria	Nigeria	t	15
167	166	Nicaragua	Nicaragua	t	15
168	167	Pays-Bas	Nederland	t	15
169	168	Norvège	Noorwegen	t	15
170	169	Népal	Nepal	t	15
171	170	Nauru	Nauru	t	15
172	171	Zone Neutre Arabie Saoudite et Irak	Neutrale zone Saoedi-Arabië en Irak	t	15
173	172	Niue	Niue	t	15
174	173	Nouvelle-Zélande	Nieuw-Zeeland	t	15
175	174	Oman	Oman	t	15
176	175	Panama	Panama	t	15
177	176	Pérou	Peru	t	15
178	177	Polynésie Française	Frans-Polynesië	t	15
179	178	Papouasie-Nouvelle-Guinée	Papoea-Nieuw-Guinea	t	15
180	179	Philippines	Filipijnen	t	15
181	180	Pakistan	Pakistan	t	15
182	181	Pologne	Polen	t	15
183	182	St-Pierre-et-Miquelon	St-Pierre-et-Miquelon	t	15
184	183	Pitcairn	Pitcairn	t	15
185	184	Porto Rico	Porto Rico	t	15
186	185	Palestine	Palestina	t	15
187	186	Portugal	Portugal	t	15
188	187	Palaos	Palau	t	15
189	188	Paraguay	Paraguay	t	15
190	189	Qatar	Qatar	t	15
191	190	Ile de la Réunion	Reunion Eiland	t	15
192	191	Roumanie	Roemenië	t	15
193	192	Serbie	Servië	t	15
194	193	Russie	Rusland	t	15
195	194	Rwanda	Rwanda	t	15
196	195	Arabie Saoudite	Saoedi-Arabië	t	15
197	196	Iles Salomon	Solomon Eilanden	t	15
198	197	Seychelles (Iles)	Seychelles (Eilanden)	t	15
199	198	Soudan	Soedan	t	15
200	199	Suède	Zweden	t	15
201	200	Singapour	Singapore	t	15
202	201	Sainte-Hélène	Sint Helena	t	15
203	202	Slovénie	Slovenië	t	15
204	203	Svalbard and Jan Mayen Island	Svalbard and Jan Mayen Island	t	15
205	204	Slovaquie	Slovakije	t	15
206	205	Sierra Leone	Sierra Leone	t	15
207	206	Saint-Marin	San Marino	t	15
208	207	Sénégal	Senegal	t	15
209	208	Somalie	Somalië	t	15
210	209	Surinam	Suriname	t	15
211	210	Sud Soudan	Zuid-Sudan	t	15
212	211	São Tomé & Principe	São Tomé & Principe	t	15
213	212	El Salvador	El Salvador	t	15
214	213	Saint Martin	Sint-Maarten	t	15
215	214	Syrie	Syrië	t	15
216	215	Swaziland	Swaziland	t	15
217	216	Turks et Caïques (Iles)	van de Turks- en Caicoseilanden	t	15
218	217	Tchad	Tsjaad	t	15
219	218	Terres Australes Françaises	Zuidelijks Frans Rijksdeel	t	15
220	219	Togo	Togo	t	15
221	220	Thaïlande	Thailand	t	15
222	221	Tadjikistan	Tadjikistan	t	15
223	222	Tokelau	Tokelau	t	15
224	223	Timor-Leste	Timor-Leste	t	15
225	224	Turkménistan	Turkmenistan	t	15
226	225	Tunisie	Tunisië	t	15
227	226	Tonga	Tonga	t	15
228	227	Turquie	Turkije	t	15
229	228	Trinitad-et-Tobago	Trinitad-en-Tobago	t	15
230	229	Tuvalu	Tuvalu	t	15
231	230	Taïwan	Taïwan	t	15
232	231	Tanzanie	Tanzania	t	15
233	232	Ukraine	Oekraïne	t	15
234	233	Ouganda	Oeganda	t	15
235	234	Iles Américaines d'Océanie	Amerikaanse Eilanden van Oceanië	t	15
236	235	Etats-Unis d'Amérique	Verenigde Staten van Amerika	t	15
237	236	Uruguay	Uruguay	t	15
238	237	Ouzbékistan	Oezbekistan	t	15
239	238	Vatican	Vaticaan	t	15
240	239	St-Vincent et Grenadines	St-Vincent en Grenadines	t	15
241	240	Vénézuéla	Venezuela	t	15
242	241	Iles Vierges Britanniques	Britse Maagdeneilanden	t	15
243	242	Iles Vierges (USA)	Maagdeneilanden (USA)	t	15
244	243	Viêt-Nam	Vietnam	t	15
245	244	Vanuatu (Nouvelles-Hébrides)	Vanuatu (Nieuwe Hebrides)	t	15
246	245	Walis-et-Futuna	Walis en Futuna	t	15
247	246	Samoa	Samoa	t	15
248	247	Yémen	Jemen	t	15
249	248	Mayotte	Mayotte	t	15
250	249	Afrique du Sud	Zuid-Afrika	t	15
251	250	Zambie	Zambia	t	15
252	251	Zimbabwe	Zimbabwe	t	15
\.


--
-- Name: products_config_countriestin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('products_config_countriestin_id_seq', 252, true);


--
-- Data for Name: products_config_productsconfig; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY products_config_productsconfig (page_ptr_id, "compte_fidelite_TAE", "compte_fidelite_VIR", "compte_prime_TAE", "compte_prime_VIR") FROM stdin;
15	0.05	0.60	0.03	0.58
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY taggit_tag (id, name, slug) FROM stdin;
1	video-thumbnail	video-thumbnail
2	liga	liga
3	santander	santander
\.


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('taggit_tag_id_seq', 3, true);


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
1	5	2	1
2	1	64	2
3	1	64	3
\.


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('taggit_taggeditem_id_seq', 3, true);


--
-- Data for Name: wagtail_embed_videos_embedvideo; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY wagtail_embed_videos_embedvideo (id, title, url, created_at, thumbnail_id, uploaded_by_user_id) FROM stdin;
1	Banco Santander intro	https://www.youtube.com/watch?v=5pNuOASt_Fs	2016-10-25 12:29:18.633878+02	5	1
\.


--
-- Name: wagtail_embed_videos_embedvideo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('wagtail_embed_videos_embedvideo_id_seq', 1, true);


--
-- Data for Name: wagtailcore_collection; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY wagtailcore_collection (id, path, depth, numchild, name) FROM stdin;
1	0001	1	0	Root
\.


--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('wagtailcore_collection_id_seq', 1, true);


--
-- Data for Name: wagtailcore_groupcollectionpermission; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY wagtailcore_groupcollectionpermission (id, collection_id, group_id, permission_id) FROM stdin;
1	1	1	1
2	1	2	1
3	1	1	2
4	1	2	2
5	1	1	4
6	1	2	4
7	1	1	5
8	1	2	5
\.


--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('wagtailcore_groupcollectionpermission_id_seq', 8, true);


--
-- Data for Name: wagtailcore_grouppagepermission; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY wagtailcore_grouppagepermission (id, permission_type, group_id, page_id) FROM stdin;
1	add	1	1
2	edit	1	1
3	publish	1	1
4	add	2	1
5	edit	2	1
6	lock	1	1
\.


--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('wagtailcore_grouppagepermission_id_seq', 6, true);


--
-- Data for Name: wagtailcore_page; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY wagtailcore_page (id, path, depth, numchild, title, slug, live, has_unpublished_changes, url_path, seo_title, show_in_menus, search_description, go_live_at, expire_at, expired, content_type_id, owner_id, locked, latest_revision_created_at, first_published_at) FROM stdin;
1	0001	1	1	Root	root	t	f	/		f		\N	\N	f	1	\N	f	\N	\N
14	00010001000B	3	0	Contact us	contact-us	t	f	/default/contact-us/		f		\N	\N	f	19	1	f	2016-10-25 13:14:34.857954+02	2016-10-25 13:14:34.918469+02
2	00010001	2	10	Santander Consumer Benelux	default	t	f	/default/		f		\N	\N	f	1	\N	f	2016-10-25 12:02:55.439708+02	2016-10-25 12:02:55.686953+02
4	000100010002	3	0	Home	home	t	f	/default/home/		f		\N	\N	f	11	1	f	2016-10-25 12:30:29.913205+02	2016-10-25 12:30:30.085437+02
15	00010001000C	3	0	Products Config	products-config	t	f	/default/products-config/		f		\N	\N	f	36	1	f	2016-10-25 13:15:28.509051+02	2016-10-25 13:15:28.55431+02
3	000100010001	3	0	Welcome	welcome-page	t	f	/default/welcome-page/		f		\N	\N	f	17	1	f	2016-10-25 13:46:50.671973+02	2016-10-25 12:04:47.496357+02
7	000100010004	3	0	Compte Prime	compte-prime	t	f	/default/compte-prime/		f		\N	\N	f	30	1	f	2016-10-25 12:56:24.540815+02	2016-10-25 12:56:24.627183+02
8	000100010005	3	0	Compte Fidélité	compte-fidélité	t	f	/default/compte-fidélité/		f		\N	\N	f	30	1	f	2016-10-25 13:00:26.189219+02	2016-10-25 13:00:26.288841+02
9	000100010006	3	0	Cookies Page	cookies-page	t	f	/default/cookies-page/		f		\N	\N	f	40	1	f	2016-10-25 13:02:28.256689+02	2016-10-25 13:02:28.350377+02
10	000100010007	3	0	Help	help	t	f	/default/help/		f		\N	\N	f	27	1	f	2016-10-25 13:06:28.781585+02	2016-10-25 13:06:28.886628+02
11	000100010008	3	0	Documents	documents	t	f	/default/documents/		f		\N	\N	f	33	1	f	2016-10-25 13:08:46.467388+02	2016-10-25 13:07:17.521484+02
12	000100010009	3	0	About us	about-us	t	f	/default/about-us/		f		\N	\N	f	24	1	f	2016-10-25 13:12:49.826675+02	2016-10-25 13:12:49.93836+02
13	00010001000A	3	0	Search Page	search-page	t	f	/default/search-page/		f		\N	\N	f	41	1	f	2016-10-25 13:13:17.513917+02	2016-10-25 13:13:17.564759+02
\.


--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('wagtailcore_page_id_seq', 15, true);


--
-- Data for Name: wagtailcore_pagerevision; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY wagtailcore_pagerevision (id, submitted_for_moderation, created_at, content_json, approved_go_live_at, page_id, user_id) FROM stdin;
1	f	2016-10-25 12:02:55.439708+02	{"expire_at": null, "path": "00010001", "has_unpublished_changes": false, "locked": false, "expired": false, "pk": 2, "slug": "default", "depth": 2, "owner": null, "url_path": "/home/", "show_in_menus": false, "numchild": 0, "latest_revision_created_at": null, "content_type": 1, "first_published_at": null, "search_description": "", "go_live_at": null, "title": "Santander Consumer Benelux", "seo_title": "", "live": true}	\N	2	1
2	f	2016-10-25 12:04:47.415472+02	{"expired": false, "slug": "welcome", "first_published_at": null, "owner": 1, "url_path": "/default/welcome/", "show_in_menus": false, "logo_image": 2, "numchild": 0, "text_nl": "<p>Welkom op onze site.</p><p>Ik wil deze site in het\\u00a0<b>Nederlands\\u00a0</b>te zien.</p>", "content_type": 17, "background_image": 1, "seo_title": "", "search_description": "", "path": "000100010001", "has_unpublished_changes": false, "pk": 3, "depth": 3, "latest_revision_created_at": null, "expire_at": null, "text_fr": "<p>Bienvenue sur notre site.</p><p>Je veux voir ce site en\\u00a0<b>Fran\\u00e7ais</b>.</p>", "live": true, "go_live_at": null, "title": "Welcome", "locked": false}	\N	3	1
3	f	2016-10-25 12:30:29.913205+02	{"c2_subtitle_fr": "Lorem ipsum dolor sit aemet.\\r\\nLorem ipsum dolor sit aemet.", "slider_element": [{"button_nl": "Learn more", "image": 6, "title_fr": "Simple, personal & fair Lorem Ipsum", "title_nl": "Simple, personal & fair Lorem Ipsum", "sort_order": 0, "text_nl": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.", "pk": 1, "button_fr": "Learn more", "page": 4, "text_fr": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt."}, {"button_nl": "Learn more", "image": 7, "title_fr": "Simple, personal & fair Lorem Ipsum", "title_nl": "Simple, personal & fair Lorem Ipsum", "sort_order": 1, "text_nl": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.", "pk": 2, "button_fr": "Learn more", "page": 4, "text_fr": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt."}, {"button_nl": "Learn more", "image": 8, "title_fr": "Simple, personal & fair Lorem Ipsum", "title_nl": "Simple, personal & fair Lorem Ipsum", "sort_order": 2, "text_nl": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.", "pk": 3, "button_fr": "Learn more", "page": 4, "text_fr": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt."}], "simulator_title_fr": "Learn how much you can save with our savings accounts!", "expired": false, "simulator_text_nl": "<p>Sample for fixed interest rate for 1 year lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>", "slug": "home", "c2_title_nl": "Compte Fidelit\\u00e9", "c2_subtitle_nl": "Lorem ipsum dolor sit aemet.\\r\\nLorem ipsum dolor sit aemet.", "first_published_at": null, "owner": 1, "simulator_title_nl": "Learn how much you can save with our savings accounts!", "c2_title_fr": "Compte Fidelit\\u00e9", "url_path": "/default/home/", "show_in_menus": false, "benefits_element": [{"benefits": 4, "image": 9, "title_fr": "Online banking", "title_nl": "Online banking", "sort_order": 0, "text_nl": "Lorem Ipsum dolor sit aemet.\\r\\nLorem Ipsum dolor sit aemet.", "pk": 1, "text_fr": "Lorem Ipsum dolor sit aemet.\\r\\nLorem Ipsum dolor sit aemet."}, {"benefits": 4, "image": 10, "title_fr": "Fast account opening", "title_nl": "Fast account opening", "sort_order": 1, "text_nl": "Lorem Ipsum dolor sit aemet.\\r\\nLorem Ipsum dolor sit aemet.", "pk": 2, "text_fr": "Lorem Ipsum dolor sit aemet.\\r\\nLorem Ipsum dolor sit aemet."}, {"benefits": 4, "image": 11, "title_fr": "Mobile", "title_nl": "Mobile", "sort_order": 2, "text_nl": "Lorem Ipsum dolor sit aemet.\\r\\nLorem Ipsum dolor sit aemet.", "pk": 3, "text_fr": "Lorem Ipsum dolor sit aemet.\\r\\nLorem Ipsum dolor sit aemet."}], "numchild": 0, "app_text_fr": "Managing your Santander account is easier than ever with our new App!", "content_type": 11, "c1_title_fr": "Compte Prime", "seo_title": "", "search_description": "", "c1_title_nl": "Compte Prime", "c1_aop": 1, "path": "000100010002", "has_unpublished_changes": false, "pk": 4, "c1_subtitle_nl": "Lorem ipsum dolor sit aemet.\\r\\nLorem ipsum dolor sit aemet.", "video_blocks": [{"video_link": 1, "block": 4, "sort_order": 0, "pk": 1, "video_subtitle_nl": "subtitle video", "video_title_fr": "title video", "video_title_nl": "title video", "video_subtitle_fr": "subtitle video"}], "benefits_title_nl": "Lorem Ipsum enjoy Santander benefits", "depth": 3, "benefits_title_fr": "Lorem Ipsum enjoy Santander benefits", "app_buttons": [{"pk": 1, "imageApp": 12, "link": 4, "link_page": "", "sort_order": 0}, {"pk": 2, "imageApp": 13, "link": 4, "link_page": "", "sort_order": 1}], "c2_aop": 1, "app_text_nl": "Managing your Santander account is easier than ever with our new App!", "latest_revision_created_at": null, "simulator_text_fr": "<p>Sample for fixed interest rate for 1 year lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>", "expire_at": null, "live": true, "go_live_at": null, "title": "Home", "c1_subtitle_fr": "Lorem ipsum dolor sit aemet.\\r\\nLorem ipsum dolor sit aemet.", "locked": false}	\N	4	1
6	f	2016-10-25 12:56:24.540815+02	{"product": 1, "details_text_fr": "A savings account is a perfect partner for your checking account. Checking helps you pay your monthly bills, while savings helps you accumulate extra cash for things you want in the future. The sooner you start, the sooner you'll be building your balances for tomorrow's goals. So why not begin saving today?.", "simulator_title_fr": "Learn how much you can save with our savings accounts!", "details_title_nl": "Our Fid\\u00e9lit\\u00e9 Account", "expired": false, "details_link_text_nl": "More details and term and conditions", "slug": "compte-prime", "contact_text_nl": "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.", "simulator_text_nl": "<p>Sample for fixed interest rate for 1 year lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>", "benefits_element": [{"benefits": 7, "image": 15, "title_fr": "Un meilleur tarif", "title_nl": "Un meilleur tarif", "sort_order": 0, "text_nl": "Vous \\u00eates libres de l'objet de votre financement, vous n'avez pas \\u00e0 pr\\u00e9senter de factures dur\\u00e9e et remboursements mensuels fixes", "pk": 7, "text_fr": "Vous \\u00eates libres de l'objet de votre financement, vous n'avez pas \\u00e0 pr\\u00e9senter de factures dur\\u00e9e et remboursements mensuels fixes"}, {"benefits": 7, "image": 10, "title_fr": "Une r\\u00e9sponse inm\\u00e9diate", "title_nl": "Une r\\u00e9sponse inm\\u00e9diate", "sort_order": 1, "text_nl": "Tr\\u00e8s vite vous \\u00eates tenus au courant du suivi de votre dossier. Un emprunt sur mesure jusqu'\\u00e0 \\u20ac50 000", "pk": 8, "text_fr": "Tr\\u00e8s vite vous \\u00eates tenus au courant du suivi de votre dossier. Un emprunt sur mesure jusqu'\\u00e0 \\u20ac50 000"}, {"benefits": 7, "image": 16, "title_fr": "Aim for loyalty bonus", "title_nl": "Aim for loyalty bonus", "sort_order": 2, "text_nl": "Emprunter sans soucis gr\\u00e2ce au plan de protection optionnel adapt\\u00e9. Emprunter sans soucis gr\\u00e2ce au plan de protection optionnel adapt\\u00e9.", "pk": 9, "text_fr": "Emprunter sans soucis gr\\u00e2ce au plan de protection optionnel adapt\\u00e9. Emprunter sans soucis gr\\u00e2ce au plan de protection optionnel adapt\\u00e9."}], "first_published_at": null, "owner": 1, "simulator_title_nl": "Learn how much you can save with our savings accounts!", "details_text_nl": "A savings account is a perfect partner for your checking account. Checking helps you pay your monthly bills, while savings helps you accumulate extra cash for things you want in the future. The sooner you start, the sooner you'll be building your balances for tomorrow's goals. So why not begin saving today?.", "url_path": "/default/compte-prime/", "show_in_menus": false, "document_text_fr": "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.", "numchild": 0, "content_type": 30, "details_title_fr": "Our Fid\\u00e9lit\\u00e9 Account", "contact_text_fr": "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.", "details_link_text_fr": "More details and term and conditions", "seo_title": "", "search_description": "", "contact_url": null, "path": "000100010004", "has_unpublished_changes": false, "info_block_image": 14, "pk": 7, "document_text_nl": "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.", "depth": 3, "question_items": [{"questions": 7, "title_fr": "REQUIREMENTS TO GET A FID\\u00c9LIT\\u00c9 ACCOUNT", "title_nl": "REQUIREMENTS TO GET A FID\\u00c9LIT\\u00c9 ACCOUNT", "sort_order": 0, "text_nl": "<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.</p>", "pk": 7, "text_fr": "<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.</p>"}], "latest_revision_created_at": null, "simulator_text_fr": "<p>Sample for fixed interest rate for 1 year lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>", "expire_at": null, "live": true, "go_live_at": null, "title": "Compte Prime", "document_url": null, "locked": false}	\N	7	1
7	f	2016-10-25 13:00:26.189219+02	{"product": 1, "details_text_fr": "A savings account is a perfect partner for your checking account. Checking helps you pay your monthly bills, while savings helps you accumulate extra cash for things you want in the future. The sooner you start, the sooner you'll be building your balances for tomorrow's goals. So why not begin saving today?.", "simulator_title_fr": "Learn how much you can save with our savings accounts!", "details_title_nl": "Our Fid\\u00e9lit\\u00e9 Account", "expired": false, "details_link_text_nl": "More details and term and conditions", "slug": "compte-fid\\u00e9lit\\u00e9", "contact_text_nl": "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.", "simulator_text_nl": "<p>Sample for fixed interest rate for 1 year lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>", "benefits_element": [{"benefits": 8, "image": 15, "title_fr": "Un meilleur tarif", "title_nl": "Un meilleur tarif", "sort_order": 0, "text_nl": "Vous \\u00eates libres de l'objet de votre financement, vous n'avez pas \\u00e0 pr\\u00e9senter de factures dur\\u00e9e et remboursements mensuels fixes", "pk": 10, "text_fr": "Vous \\u00eates libres de l'objet de votre financement, vous n'avez pas \\u00e0 pr\\u00e9senter de factures dur\\u00e9e et remboursements mensuels fixes"}, {"benefits": 8, "image": 10, "title_fr": "Une r\\u00e9sponse inm\\u00e9diate", "title_nl": "Une r\\u00e9sponse inm\\u00e9diate", "sort_order": 1, "text_nl": "Tr\\u00e8s vite vous \\u00eates tenus au courant du suivi de votre dossier. Un emprunt sur mesure jusqu'\\u00e0 \\u20ac50 000", "pk": 11, "text_fr": "Tr\\u00e8s vite vous \\u00eates tenus au courant du suivi de votre dossier. Un emprunt sur mesure jusqu'\\u00e0 \\u20ac50 000"}, {"benefits": 8, "image": 16, "title_fr": "Aim for loyalty bonus", "title_nl": "Aim for loyalty bonus", "sort_order": 2, "text_nl": "Emprunter sans soucis gr\\u00e2ce au plan de protection optionnel adapt\\u00e9. Emprunter sans soucis gr\\u00e2ce au plan de protection optionnel adapt\\u00e9.", "pk": 12, "text_fr": "Emprunter sans soucis gr\\u00e2ce au plan de protection optionnel adapt\\u00e9. Emprunter sans soucis gr\\u00e2ce au plan de protection optionnel adapt\\u00e9."}], "first_published_at": null, "owner": 1, "simulator_title_nl": "Learn how much you can save with our savings accounts!", "details_text_nl": "A savings account is a perfect partner for your checking account. Checking helps you pay your monthly bills, while savings helps you accumulate extra cash for things you want in the future. The sooner you start, the sooner you'll be building your balances for tomorrow's goals. So why not begin saving today?.", "url_path": "/default/compte-fid\\u00e9lit\\u00e9/", "show_in_menus": false, "document_text_fr": "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.", "numchild": 0, "content_type": 30, "details_title_fr": "Our Fid\\u00e9lit\\u00e9 Account", "contact_text_fr": "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.", "details_link_text_fr": "More details and term and conditions", "seo_title": "", "search_description": "", "contact_url": null, "path": "000100010005", "has_unpublished_changes": false, "info_block_image": 14, "pk": 8, "document_text_nl": "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.", "depth": 3, "question_items": [{"questions": 8, "title_fr": "REQUIREMENTS TO GET A FID\\u00c9LIT\\u00c9 ACCOUNT", "title_nl": "REQUIREMENTS TO GET A FID\\u00c9LIT\\u00c9 ACCOUNT", "sort_order": 2, "text_nl": "<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.</p>", "pk": 8, "text_fr": "<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.</p>"}, {"questions": 8, "title_fr": "HOW DOES THE FID\\u00c9LITE ACCOUNT WORKS?", "title_nl": "HOW DOES THE FID\\u00c9LITE ACCOUNT WORKS?", "sort_order": 0, "text_nl": "<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.</p>", "pk": 9, "text_fr": "<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.</p>"}, {"questions": 8, "title_fr": "Fid\\u00e9lite savings account terms and conditions", "title_nl": "Fid\\u00e9lite savings account terms and conditions", "sort_order": 1, "text_nl": "<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.</p>", "pk": 10, "text_fr": "<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.</p>"}], "latest_revision_created_at": null, "simulator_text_fr": "<p>Sample for fixed interest rate for 1 year lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>", "expire_at": null, "live": true, "go_live_at": null, "title": "Compte Fid\\u00e9lit\\u00e9", "document_url": null, "locked": false}	\N	8	1
8	f	2016-10-25 13:02:28.256689+02	{"cookies_elements": [{"title_fr": "About Cookies", "title_nl": "About Cookies", "sort_order": 2, "text_nl": "<h2>Cookie title 1</h2><h5>subitle information</h5><p><br/></p><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.<b>\\u00a0Aenean leo ligula, portt</b>itor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>", "pk": 1, "elements": 9, "text_fr": "<h2>Cookie title 1</h2><h5>subitle information</h5><p><br/></p><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.<b>\\u00a0Aenean leo ligula, portt</b>itor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>"}, {"title_fr": "Santander Savings and Cookies", "title_nl": "Santander Savings and Cookies", "sort_order": 0, "text_nl": "<h2>Cookie title 2</h2><h5>subitle information</h5><p><br/></p><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.<b>\\u00a0Aenean leo ligula, portt</b>itor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>", "pk": 2, "elements": 9, "text_fr": "<h2>Cookie title 2</h2><h5>subitle information</h5><p><br/></p><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.<b>\\u00a0Aenean leo ligula, portt</b>itor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>"}, {"title_fr": "Managing Cookies", "title_nl": "Managing Cookies", "sort_order": 1, "text_nl": "<h2>Cookie title 3</h2><h5>subitle information</h5><p><br/></p><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.<b>\\u00a0Aenean leo ligula, portt</b>itor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>", "pk": 3, "elements": 9, "text_fr": "<h2>Cookie title 3</h2><h5>subitle information</h5><p><br/></p><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.<b>\\u00a0Aenean leo ligula, portt</b>itor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>"}], "expired": false, "slug": "cookies-page", "cookies_subtitle_fr": "Check our cookies policy and information", "first_published_at": null, "owner": 1, "url_path": "/default/cookies-page/", "show_in_menus": false, "numchild": 0, "content_type": 40, "cookies_subtitle_nl": "Check our cookies policy and information", "seo_title": "", "cookies_title_fr": "Cookies Policy", "cookies_title_nl": "Cookies Policy", "path": "000100010006", "has_unpublished_changes": false, "pk": 9, "depth": 3, "live": true, "latest_revision_created_at": null, "expire_at": null, "search_description": "", "go_live_at": null, "title": "Cookies Page", "locked": false}	\N	9	1
9	f	2016-10-25 13:06:28.781585+02	{"expired": false, "slug": "help", "first_published_at": null, "owner": 1, "url_path": "/default/help/", "helptitle_fr": "Need help?", "show_in_menus": false, "numchild": 0, "content_type": 27, "helpsubtitle_fr": "Check our FAQs. \\r\\nStart by selecting a category.", "seo_title": "", "search_description": "", "title_manual_fr": "Manuals: How to...", "title_manual_nl": "Manuals: How to...", "email_title_fr": "Didn't find what you were looking for?", "path": "000100010007", "helptitle_nl": "Need help?", "has_unpublished_changes": false, "helpsubtitle_nl": "Check our FAQs. \\r\\nStart by selecting a category.", "pk": 10, "video_block": [{"video_link": 1, "block": 10, "sort_order": 0, "pk": 1, "video_subtitle_nl": "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", "video_title_fr": "Manual 1", "video_title_nl": "Manual 1", "video_subtitle_fr": "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."}, {"video_link": 1, "block": 10, "sort_order": 1, "pk": 2, "video_subtitle_nl": "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", "video_title_fr": "Manual 2", "video_title_nl": "Manual 2", "video_subtitle_fr": "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."}], "depth": 3, "question_items": [{"questions": 10, "title_fr": "Compte Fidelit\\u00e9", "title_nl": "Compte Fidelit\\u00e9", "sort_order": 6, "text_nl": "<h4><b>How it works</b></h4><p>Lorem ipsum\\u00a0<b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\u00a0<b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>", "pk": 1, "text_fr": "<h4><b>How it works</b></h4><p>Lorem ipsum\\u00a0<b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\u00a0<b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>"}, {"questions": 10, "title_fr": "Compte Prime", "title_nl": "Compte Prime", "sort_order": 0, "text_nl": "<h4><b>How it works</b></h4><p>Lorem ipsum\\u00a0<b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\u00a0<b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>", "pk": 2, "text_fr": "<h4><b>How it works</b></h4><p>Lorem ipsum\\u00a0<b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\u00a0<b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>"}, {"questions": 10, "title_fr": "Interest Rate", "title_nl": "Interest Rate", "sort_order": 1, "text_nl": "<h4><b>How it works</b></h4><p>Lorem ipsum\\u00a0<b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\u00a0<b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>", "pk": 3, "text_fr": "<h4><b>How it works</b></h4><p>Lorem ipsum\\u00a0<b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\u00a0<b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>"}, {"questions": 10, "title_fr": "Prerequisits to open Account", "title_nl": "Prerequisits to open Account", "sort_order": 2, "text_nl": "<h4><b>How it works</b></h4><p>Lorem ipsum\\u00a0<b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\u00a0<b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>", "pk": 4, "text_fr": "<h4><b>How it works</b></h4><p>Lorem ipsum\\u00a0<b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\u00a0<b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>"}, {"questions": 10, "title_fr": "Open Account", "title_nl": "Open Account", "sort_order": 3, "text_nl": "<h4><b>How it works</b></h4><p>Lorem ipsum\\u00a0<b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\u00a0<b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>", "pk": 5, "text_fr": "<h4><b>How it works</b></h4><p>Lorem ipsum\\u00a0<b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\u00a0<b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>"}, {"questions": 10, "title_fr": "Closing Account", "title_nl": "Closing Account", "sort_order": 4, "text_nl": "<h4><b>How it works</b></h4><p>Lorem ipsum\\u00a0<b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\u00a0<b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>", "pk": 6, "text_fr": "<h4><b>How it works</b></h4><p>Lorem ipsum\\u00a0<b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\u00a0<b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>"}, {"questions": 10, "title_fr": "Online Banking", "title_nl": "Online Banking", "sort_order": 5, "text_nl": "<h4><b>How it works</b></h4><p>Lorem ipsum\\u00a0<b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\u00a0<b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>", "pk": 7, "text_fr": "<h4><b>How it works</b></h4><p>Lorem ipsum\\u00a0<b>dolor sit amet</b>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br/></p><hr/><h5><ul><li><b><i>Benefits</i></b><br/></li></ul></h5><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\\u00a0<b>Duis aute irure dolor in reprehenderi</b>t in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>"}], "email_subtext_fr": "Submit us \\r\\nyour question", "latest_revision_created_at": null, "expire_at": null, "email_title_nl": "Didn't find what you were looking for?", "live": true, "go_live_at": null, "title": "Help", "email_subtext_nl": "Submit us \\r\\nyour question", "locked": false}	\N	10	1
10	f	2016-10-25 13:07:17.427913+02	{"expired": false, "slug": "documents", "first_published_at": null, "owner": 1, "title_nl": "Documents", "url_path": "/default/documents/", "show_in_menus": false, "numchild": 0, "title_fr": "Documents", "seo_title": "", "search_description": "", "document_file": [], "path": "000100010008", "has_unpublished_changes": false, "pk": 11, "subtitle_fr": "Block Subtitle", "depth": 3, "categories": [{"pk": 1, "category": "Categor\\u00eda 1", "cat": 11, "sort_order": 0}, {"pk": 2, "category": "Categor\\u00eda 2", "cat": 11, "sort_order": 1}, {"pk": 3, "category": "Categor\\u00eda 3", "cat": 11, "sort_order": 2}], "subtitle_nl": "Block Subtitle", "content_type": 33, "latest_revision_created_at": null, "expire_at": null, "live": true, "go_live_at": null, "title": "Documents", "locked": false}	\N	11	1
13	f	2016-10-25 13:13:17.513917+02	{"search_subtitle_nl": "results for", "search_title_fr": "Search results", "expired": false, "slug": "search-page", "first_published_at": null, "owner": 1, "url_path": "/default/search-page/", "show_in_menus": false, "numchild": 0, "content_type": 41, "search_subtitle_fr": "results for", "seo_title": "", "search_description": "", "search_title_nl": "Search results", "path": "00010001000A", "has_unpublished_changes": false, "pk": 13, "depth": 3, "latest_revision_created_at": null, "expire_at": null, "live": true, "go_live_at": null, "title": "Search Page", "locked": false}	\N	13	1
11	f	2016-10-25 13:08:46.467388+02	{"expired": false, "slug": "documents", "first_published_at": "2016-10-25T11:07:17.521Z", "owner": 1, "title_nl": "Documents", "url_path": "/default/documents/", "show_in_menus": false, "numchild": 0, "title_fr": "Documents", "seo_title": "", "search_description": "", "document_file": [{"doc_file": null, "sort_order": 0, "doc": 11, "pk": null, "docCategory": 1, "doc_title_fr": "More details and term and conditions", "doc_title_nl": "More details and term and conditions"}, {"doc_file": null, "sort_order": 1, "doc": 11, "pk": null, "docCategory": 1, "doc_title_fr": "More details and term and conditions", "doc_title_nl": "More details and term and conditions"}, {"doc_file": null, "sort_order": 2, "doc": 11, "pk": null, "docCategory": 2, "doc_title_fr": "More details and term and conditions", "doc_title_nl": "More details and term and conditions"}, {"doc_file": null, "sort_order": 3, "doc": 11, "pk": null, "docCategory": 3, "doc_title_fr": "More details and term and conditions", "doc_title_nl": "More details and term and conditions"}, {"doc_file": null, "sort_order": 4, "doc": 11, "pk": null, "docCategory": 3, "doc_title_fr": "More details and term and conditions", "doc_title_nl": "More details and term and conditions"}, {"doc_file": null, "sort_order": 5, "doc": 11, "pk": null, "docCategory": 3, "doc_title_fr": "More details and term and conditions", "doc_title_nl": "More details and term and conditions"}], "path": "000100010008", "has_unpublished_changes": false, "pk": 11, "subtitle_fr": "Block Subtitle", "depth": 3, "categories": [{"pk": 1, "category": "Categor\\u00eda 1", "cat": 11, "sort_order": 0}, {"pk": 2, "category": "Categor\\u00eda 2", "cat": 11, "sort_order": 1}, {"pk": 3, "category": "Categor\\u00eda 3", "cat": 11, "sort_order": 2}], "subtitle_nl": "Block Subtitle", "content_type": 33, "latest_revision_created_at": "2016-10-25T11:07:17.427Z", "expire_at": null, "live": true, "go_live_at": null, "title": "Documents", "locked": false}	\N	11	1
12	f	2016-10-25 13:12:49.826675+02	{"about_us_title_fr": "About us", "reason_title_fr": "Why Santander?", "expired": false, "slug": "about-us", "reason_items": [{"image": 15, "subtext_fr": "Lorem ipsum dolor sit aemet.\\r\\nLorem ipsum dolor sit aemet.", "text_fr": "Online Banking", "sort_order": 0, "text_nl": "Online Banking", "pk": 1, "subtext_nl": "Lorem ipsum dolor sit aemet.\\r\\nLorem ipsum dolor sit aemet.", "page": 12}, {"image": 10, "subtext_fr": "Lorem ipsum dolor sit aemet.\\r\\nLorem ipsum dolor sit aemet.", "text_fr": "Online Banking", "sort_order": 1, "text_nl": "Online Banking", "pk": 2, "subtext_nl": "Lorem ipsum dolor sit aemet.\\r\\nLorem ipsum dolor sit aemet.", "page": 12}, {"image": 16, "subtext_fr": "Lorem ipsum dolor sit aemet.\\r\\nLorem ipsum dolor sit aemet.", "text_fr": "Online Banking", "sort_order": 2, "text_nl": "Online Banking", "pk": 3, "subtext_nl": "Lorem ipsum dolor sit aemet.\\r\\nLorem ipsum dolor sit aemet.", "page": 12}, {"image": 10, "subtext_fr": "Lorem ipsum dolor sit aemet.\\r\\nLorem ipsum dolor sit aemet.", "text_fr": "Online Banking", "sort_order": 3, "text_nl": "Online Banking", "pk": 4, "subtext_nl": "Lorem ipsum dolor sit aemet.\\r\\nLorem ipsum dolor sit aemet.", "page": 12}], "text_image_fr": "lorem ipsum \\r\\nsimple, personal & fair", "first_published_at": null, "owner": 1, "text_image_nl": "lorem ipsum \\r\\nsimple, personal & fair", "testimonials_elements": [{"imageTestimonials": 18, "testimonials_text_nl": "Lorem Ipsum dolor sit aemet.\\r\\nLorem Ipsum dolor sit aemet.", "testimonial": 12, "testimonials_name": "Arthur Van Meenen", "sort_order": 0, "pk": 1, "testimonials_text_fr": "Lorem Ipsum dolor sit aemet.\\r\\nLorem Ipsum dolor sit aemet."}, {"imageTestimonials": 18, "testimonials_text_nl": "Lorem Ipsum dolor sit aemet.\\r\\nLorem Ipsum dolor sit aemet.", "testimonial": 12, "testimonials_name": "Arthur Van Meenen", "sort_order": 1, "pk": 2, "testimonials_text_fr": "Lorem Ipsum dolor sit aemet.\\r\\nLorem Ipsum dolor sit aemet."}, {"imageTestimonials": 18, "testimonials_text_nl": "Lorem Ipsum dolor sit aemet.\\r\\nLorem Ipsum dolor sit aemet.", "testimonial": 12, "testimonials_name": "Arthur Van Meenen", "sort_order": 2, "pk": 3, "testimonials_text_fr": "Lorem Ipsum dolor sit aemet.\\r\\nLorem Ipsum dolor sit aemet."}], "url_path": "/default/about-us/", "show_in_menus": false, "numchild": 0, "info_content_nl": "<p><b>Santander is the 4th largest banking group in the world!\\u00a0</b></p><p>Somos el socio de su lado cuando se trata de sus finanzas. Ofrecemos la soluci\\u00f3n perfecta para sus operaciones bancarias, por lo que estamos en el largo plazo siempre en buenas manos.<b>\\u00a0Su confianza es nuestra motivaci\\u00f3n.</b><br/></p><p>Como una rama de Santander Consumer Bank, tenemos d\\u00e9cadas de experiencia como proveedor de servicios financieros. En combinaci\\u00f3n con la alta transparencia, productos de bajo consumo y la banca sin complicaciones, esto nos hace que su socio ideal cuando se trata de finanzas.</p>", "content_type": 24, "testimonials_title_nl": "The happiness of our customer is our happiness", "info_subtitle_fr": "Who we are  SUBTITLE", "seo_title": "", "search_description": "", "testimonials_title_fr": "The happiness of our customer is our happiness", "info_title_fr": "Who we are", "about_us_title_nl": "About us", "path": "000100010009", "has_unpublished_changes": false, "info_subtitle_nl": "Who we are  SUBTITLE", "pk": 12, "info_title_nl": "Who we are", "reason_title_nl": "Why Santander?", "depth": 3, "image": 17, "latest_revision_created_at": null, "info_content_fr": "<p><b>Santander is the 4th largest banking group in the world!\\u00a0</b></p><p>Somos el socio de su lado cuando se trata de sus finanzas. Ofrecemos la soluci\\u00f3n perfecta para sus operaciones bancarias, por lo que estamos en el largo plazo siempre en buenas manos.<b>\\u00a0Su confianza es nuestra motivaci\\u00f3n.</b><br/></p><p>Como una rama de Santander Consumer Bank, tenemos d\\u00e9cadas de experiencia como proveedor de servicios financieros. En combinaci\\u00f3n con la alta transparencia, productos de bajo consumo y la banca sin complicaciones, esto nos hace que su socio ideal cuando se trata de finanzas.</p>", "expire_at": null, "live": true, "go_live_at": null, "title": "About us", "locked": false}	\N	12	1
14	f	2016-10-25 13:14:34.857954+02	{"show_in_menus": false, "expired": false, "slug": "contact-us", "day_items": [{"days_nl": "Monday - Saturday", "hours_fr": "8:00 hrs - 22:00 hrs", "sort_order": 0, "pk": 1, "days_fr": "Monday - Saturday", "page": 14, "hours_nl": "8:00 hrs - 22:00 hrs"}], "first_published_at": null, "owner": 1, "phone_numbers": [{"pk": 1, "country": "FR", "phone": "09 235 00 000", "page": 14, "sort_order": 0}, {"pk": 2, "country": "NL", "phone": "09 235 00 000", "page": 14, "sort_order": 1}], "url_path": "/default/contact-us/", "depth": 3, "numchild": 0, "content_type": 19, "seo_title": "", "search_description": "", "email_subtext_nl": "any time and we will get intouch with you asap.", "path": "00010001000B", "email_title_fr": "E-mail us", "has_unpublished_changes": false, "email_address": "info@santander.be", "pk": 14, "form_fields": [], "to_address": "", "contact_us_title_fr": "Contact us!", "email_subtext_fr": "any time and we will get intouch with you asap.", "from_address": "", "contact_us_title_nl": "Contact us!", "latest_revision_created_at": null, "expire_at": null, "email_title_nl": "E-mail us", "live": true, "go_live_at": null, "title": "Contact us", "subject": "", "locked": false}	\N	14	1
15	f	2016-10-25 13:15:28.509051+02	{"expired": false, "slug": "products-config", "compte_prime_VIR": "0.58", "first_published_at": null, "owner": 1, "url_path": "/default/products-config/", "compte_fidelite_VIR": "0.60", "show_in_menus": false, "numchild": 0, "content_type": 36, "seo_title": "", "search_description": "", "path": "00010001000C", "has_unpublished_changes": false, "pk": 15, "countries_TIN": [], "depth": 3, "compte_prime_TAE": "0.03", "go_live_at": null, "latest_revision_created_at": null, "expire_at": null, "live": true, "compte_fidelite_TAE": "0.05", "title": "Products Config", "locked": false}	\N	15	1
16	f	2016-10-25 13:46:50.671973+02	{"expired": false, "slug": "welcome-page", "first_published_at": "2016-10-25T10:04:47.496Z", "owner": 1, "url_path": "/default/welcome/", "show_in_menus": false, "logo_image": 2, "numchild": 0, "text_nl": "<p>Welkom op onze site.</p><p>Ik wil deze site in het\\u00a0<b>Nederlands\\u00a0</b>te zien.</p>", "content_type": 17, "background_image": 1, "seo_title": "", "search_description": "", "path": "000100010001", "has_unpublished_changes": false, "pk": 3, "depth": 3, "latest_revision_created_at": "2016-10-25T10:04:47.415Z", "expire_at": null, "text_fr": "<p>Bienvenue sur notre site.</p><p>Je veux voir ce site en\\u00a0<b>Fran\\u00e7ais</b>.</p>", "live": true, "go_live_at": null, "title": "Welcome", "locked": false}	\N	3	1
\.


--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('wagtailcore_pagerevision_id_seq', 16, true);


--
-- Data for Name: wagtailcore_pageviewrestriction; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY wagtailcore_pageviewrestriction (id, password, page_id) FROM stdin;
\.


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('wagtailcore_pageviewrestriction_id_seq', 1, false);


--
-- Data for Name: wagtailcore_site; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY wagtailcore_site (id, hostname, port, is_default_site, root_page_id, site_name) FROM stdin;
1	localhost	80	t	2	\N
\.


--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('wagtailcore_site_id_seq', 1, true);


--
-- Data for Name: wagtaildocs_document; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY wagtaildocs_document (id, title, file, created_at, uploaded_by_user_id, collection_id) FROM stdin;
\.


--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('wagtaildocs_document_id_seq', 1, false);


--
-- Data for Name: wagtailembeds_embed; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY wagtailembeds_embed (id, url, max_width, type, html, title, author_name, provider_name, thumbnail_url, width, height, last_updated) FROM stdin;
\.


--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('wagtailembeds_embed_id_seq', 1, false);


--
-- Data for Name: wagtailforms_formsubmission; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY wagtailforms_formsubmission (id, form_data, submit_time, page_id) FROM stdin;
\.


--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('wagtailforms_formsubmission_id_seq', 1, false);


--
-- Data for Name: wagtailimages_filter; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY wagtailimages_filter (id, spec) FROM stdin;
1	max-165x165
2	original
3	max-800x600
4	max-130x100
5	max-130x130
6	width-300|original
7	width-960|original
\.


--
-- Name: wagtailimages_filter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('wagtailimages_filter_id_seq', 7, true);


--
-- Data for Name: wagtailimages_image; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY wagtailimages_image (id, title, file, width, height, created_at, focal_point_x, focal_point_y, focal_point_width, focal_point_height, uploaded_by_user_id, file_size, collection_id) FROM stdin;
1	welcome background	original_images/513438527_ficexfi.png	1200	800	2016-10-25 12:03:57.413879+02	\N	\N	\N	\N	1	\N	1
2	Logo welcome	original_images/banner_mobile_icon_lqRIZsr.png	206	36	2016-10-25 12:04:29.206342+02	\N	\N	\N	\N	1	\N	1
3	Logo header	original_images/banner_top_desktop_image_rt6MTDt.png	267	30	2016-10-25 12:07:20.799191+02	\N	\N	\N	\N	1	\N	1
4	Logo mobile	original_images/logo_mobile_bar_ABJqlyt.png	22	20	2016-10-25 12:08:36.054948+02	\N	\N	\N	\N	1	\N	1
5	manuals	original_images/Manuals.original.jpg	320	180	2016-10-25 12:16:13.180702+02	\N	\N	\N	\N	1	7288	1
6	slider 1	original_images/unsplash_Parents.png	960	320	2016-10-25 12:22:04.370357+02	\N	\N	\N	\N	1	\N	1
7	slider 2	original_images/unsplash_Parents2_qLWFAOz.png	960	320	2016-10-25 12:23:05.174127+02	\N	\N	\N	\N	1	\N	1
8	slider 3	original_images/unsplash_Parents3_rx087vL.png	960	320	2016-10-25 12:24:01.306327+02	\N	\N	\N	\N	1	\N	1
9	red cards	original_images/red-cards.png	240	242	2016-10-25 12:27:05.840248+02	\N	\N	\N	\N	1	\N	1
10	clock	original_images/reloj.png	364	319	2016-10-25 12:27:27.355559+02	\N	\N	\N	\N	1	\N	1
11	smartphone	original_images/red-smartphone.png	364	319	2016-10-25 12:27:47.434339+02	\N	\N	\N	\N	1	\N	1
12	apple store	original_images/available_apple_mVwqQAl.png	128	38	2016-10-25 12:30:13.898892+02	\N	\N	\N	\N	1	\N	1
13	google play	original_images/2000px-Get_it_on_Google_play_kFh2O0m.png	128	38	2016-10-25 12:30:25.952386+02	\N	\N	\N	\N	1	\N	1
14	slider image	original_images/unsplash_Parents4.png	960	279	2016-10-25 12:42:41.686428+02	\N	\N	\N	\N	1	\N	1
15	stats	original_images/increasing-stocks-graphic-of-bars.png	512	512	2016-10-25 12:54:18.37323+02	\N	\N	\N	\N	1	\N	1
16	coins	original_images/coin-stack.png	512	512	2016-10-25 12:55:33.901313+02	\N	\N	\N	\N	1	\N	1
17	sede noche	original_images/sede-rojo-noche.png	960	320	2016-10-25 13:09:35.440593+02	\N	\N	\N	\N	1	\N	1
18	woman	original_images/woman_call_image.png	241	241	2016-10-25 13:12:08.615756+02	\N	\N	\N	\N	1	\N	1
\.


--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('wagtailimages_image_id_seq', 18, true);


--
-- Data for Name: wagtailimages_rendition; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY wagtailimages_rendition (id, file, width, height, focal_point_key, filter_id, image_id) FROM stdin;
1	images/513438527_ficexfi.max-165x165.png	165	110		1	1
2	images/banner_mobile_icon_lqRIZsr.max-165x165.png	165	28		1	2
3	images/banner_top_desktop_image_rt6MTDt.max-165x165.png	165	18		1	3
4	images/logo_mobile_bar_ABJqlyt.max-165x165.png	22	20		1	4
5	images/Manuals.original.max-165x165.jpg	165	92		1	5
6	images/Manuals.original.original.jpg	320	180		2	5
7	images/Manuals.original.max-800x600.jpg	320	180		3	5
8	images/unsplash_Parents.max-165x165.png	165	55		1	6
9	images/unsplash_Parents2_qLWFAOz.max-165x165.png	165	55		1	7
10	images/unsplash_Parents3_rx087vL.max-165x165.png	165	55		1	8
11	images/red-cards.max-165x165.png	163	165		1	9
12	images/reloj.max-165x165.png	165	144		1	10
13	images/red-smartphone.max-165x165.png	165	144		1	11
14	images/Manuals.original.max-130x100.jpg	130	73		4	5
15	images/available_apple_mVwqQAl.max-165x165.png	128	38		1	12
16	images/2000px-Get_it_on_Google_play_kFh2O0m.max-165x165.png	128	38		1	13
17	images/banner_top_desktop_image_rt6MTDt.original.png	267	30		2	3
18	images/logo_mobile_bar_ABJqlyt.original.png	22	20		2	4
19	images/banner_mobile_icon_lqRIZsr.original.png	206	36		2	2
20	images/unsplash_Parents4.max-165x165.png	165	47		1	14
21	images/Manuals.original.max-130x130.jpg	130	73		5	5
22	images/increasing-stocks-graphic-of-bars.max-165x165.png	165	165		1	15
23	images/coin-stack.max-165x165.png	165	165		1	16
24	images/sede-rojo-noche.max-165x165.png	165	55		1	17
25	images/woman_call_image.max-165x165.png	165	165		1	18
26	images/513438527_ficexfi.original.png	1200	800		2	1
27	images/banner_mobile_icon_lqRIZsr.width-300.original.png	206	36		6	2
28	images/unsplash_Parents.width-960.original.png	960	320		7	6
29	images/unsplash_Parents2_qLWFAOz.width-960.original.png	960	320		7	7
30	images/unsplash_Parents3_rx087vL.width-960.original.png	960	320		7	8
31	images/red-cards.original.png	240	242		2	9
32	images/reloj.original.png	364	319		2	10
33	images/red-smartphone.original.png	364	319		2	11
\.


--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('wagtailimages_rendition_id_seq', 33, true);


--
-- Data for Name: wagtailredirects_redirect; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY wagtailredirects_redirect (id, old_path, is_permanent, redirect_link, redirect_page_id, site_id) FROM stdin;
\.


--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('wagtailredirects_redirect_id_seq', 1, false);


--
-- Data for Name: wagtailsearch_editorspick; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY wagtailsearch_editorspick (id, sort_order, description, page_id, query_id) FROM stdin;
\.


--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('wagtailsearch_editorspick_id_seq', 1, false);


--
-- Data for Name: wagtailsearch_query; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY wagtailsearch_query (id, query_string) FROM stdin;
\.


--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('wagtailsearch_query_id_seq', 1, false);


--
-- Data for Name: wagtailsearch_querydailyhits; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY wagtailsearch_querydailyhits (id, date, hits, query_id) FROM stdin;
\.


--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('wagtailsearch_querydailyhits_id_seq', 1, false);


--
-- Data for Name: wagtailusers_userprofile; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY wagtailusers_userprofile (id, submitted_notifications, approved_notifications, rejected_notifications, user_id) FROM stdin;
\.


--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: benelux
--

SELECT pg_catalog.setval('wagtailusers_userprofile_id_seq', 1, false);


--
-- Data for Name: welcome_welcomepage; Type: TABLE DATA; Schema: public; Owner: benelux
--

COPY welcome_welcomepage (page_ptr_id, text_fr, text_nl, background_image_id, logo_image_id) FROM stdin;
3	<p>Bienvenue sur notre site.</p><p>Je veux voir ce site en <b>Français</b>.</p>	<p>Welkom op onze site.</p><p>Ik wil deze site in het <b>Nederlands </b>te zien.</p>	1	2
\.


--
-- Name: AOP_aop_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY "AOP_aop"
    ADD CONSTRAINT "AOP_aop_pkey" PRIMARY KEY (id);


--
-- Name: aboutus_aboutus_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY aboutus_aboutus
    ADD CONSTRAINT aboutus_aboutus_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: aboutus_reasonblock_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY aboutus_reasonblock
    ADD CONSTRAINT aboutus_reasonblock_pkey PRIMARY KEY (id);


--
-- Name: aboutus_testimonialselement_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY aboutus_testimonialselement
    ADD CONSTRAINT aboutus_testimonialselement_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: compte_benefitselements_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY compte_benefitselements
    ADD CONSTRAINT compte_benefitselements_pkey PRIMARY KEY (id);


--
-- Name: compte_comptepage_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY compte_comptepage
    ADD CONSTRAINT compte_comptepage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: compte_helpquestions_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY compte_helpquestions
    ADD CONSTRAINT compte_helpquestions_pkey PRIMARY KEY (id);


--
-- Name: contactus_contactus_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY contactus_contactus
    ADD CONSTRAINT contactus_contactus_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: contactus_daysblock_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY contactus_daysblock
    ADD CONSTRAINT contactus_daysblock_pkey PRIMARY KEY (id);


--
-- Name: contactus_phonenumber_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY contactus_phonenumber
    ADD CONSTRAINT contactus_phonenumber_pkey PRIMARY KEY (id);


--
-- Name: contactus_submitformfield_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY contactus_submitformfield
    ADD CONSTRAINT contactus_submitformfield_pkey PRIMARY KEY (id);


--
-- Name: cookies_cookies_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY cookies_cookies
    ADD CONSTRAINT cookies_cookies_pkey PRIMARY KEY (id);


--
-- Name: cookies_page_cookieselement_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY cookies_page_cookieselement
    ADD CONSTRAINT cookies_page_cookieselement_pkey PRIMARY KEY (id);


--
-- Name: cookies_page_cookiespage_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY cookies_page_cookiespage
    ADD CONSTRAINT cookies_page_cookiespage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: countries_countries_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY countries_countries
    ADD CONSTRAINT countries_countries_pkey PRIMARY KEY (id);


--
-- Name: countries_country_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY countries_country
    ADD CONSTRAINT countries_country_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: documents_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY documents_categories
    ADD CONSTRAINT documents_categories_pkey PRIMARY KEY (id);


--
-- Name: documents_categoriespart_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY documents_categoriespart
    ADD CONSTRAINT documents_categoriespart_pkey PRIMARY KEY (categories_ptr_id);


--
-- Name: documents_documentpart_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY documents_documentpart
    ADD CONSTRAINT documents_documentpart_pkey PRIMARY KEY (id);


--
-- Name: documents_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY documents_documents
    ADD CONSTRAINT documents_documents_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: footer_footer_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY footer_footer
    ADD CONSTRAINT footer_footer_pkey PRIMARY KEY (id);


--
-- Name: footer_footerlink_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY footer_footerlink
    ADD CONSTRAINT footer_footerlink_pkey PRIMARY KEY (id);


--
-- Name: header_header_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY header_header
    ADD CONSTRAINT header_header_pkey PRIMARY KEY (id);


--
-- Name: header_languageitem_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY header_languageitem
    ADD CONSTRAINT header_languageitem_pkey PRIMARY KEY (id);


--
-- Name: header_menuitem_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY header_menuitem
    ADD CONSTRAINT header_menuitem_pkey PRIMARY KEY (id);


--
-- Name: help_helppage_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY help_helppage
    ADD CONSTRAINT help_helppage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: help_helpquestions_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY help_helpquestions
    ADD CONSTRAINT help_helpquestions_pkey PRIMARY KEY (id);


--
-- Name: help_videoelement_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY help_videoelement
    ADD CONSTRAINT help_videoelement_pkey PRIMARY KEY (id);


--
-- Name: home_appbuttonelement_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY home_appbuttonelement
    ADD CONSTRAINT home_appbuttonelement_pkey PRIMARY KEY (id);


--
-- Name: home_benefitselements_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY home_benefitselements
    ADD CONSTRAINT home_benefitselements_pkey PRIMARY KEY (id);


--
-- Name: home_homepage_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY home_homepage
    ADD CONSTRAINT home_homepage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: home_sliderelements_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY home_sliderelements
    ADD CONSTRAINT home_sliderelements_pkey PRIMARY KEY (id);


--
-- Name: home_videoelement_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY home_videoelement
    ADD CONSTRAINT home_videoelement_pkey PRIMARY KEY (id);


--
-- Name: page_search_searchpage_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY page_search_searchpage
    ADD CONSTRAINT page_search_searchpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: products_config_countriestin_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY products_config_countriestin
    ADD CONSTRAINT products_config_countriestin_pkey PRIMARY KEY (id);


--
-- Name: products_config_productsconfig_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY products_config_productsconfig
    ADD CONSTRAINT products_config_productsconfig_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: wagtail_embed_videos_embedvideo_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtail_embed_videos_embedvideo
    ADD CONSTRAINT wagtail_embed_videos_embedvideo_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collection_path_key; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_path_key UNIQUE (path);


--
-- Name: wagtailcore_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_groupcollectionpermission_group_id_a21cefe9_uniq; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionpermission_group_id_a21cefe9_uniq UNIQUE (group_id, collection_id, permission_id);


--
-- Name: wagtailcore_groupcollectionpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionpermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_grouppagepermission_group_id_0898bdf8_uniq; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermission_group_id_0898bdf8_uniq UNIQUE (group_id, page_id, permission_type);


--
-- Name: wagtailcore_grouppagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_page_path_key; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_path_key UNIQUE (path);


--
-- Name: wagtailcore_page_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pagerevision_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_site_hostname_2c626d70_uniq; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_hostname_2c626d70_uniq UNIQUE (hostname, port);


--
-- Name: wagtailcore_site_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_pkey PRIMARY KEY (id);


--
-- Name: wagtaildocs_document_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed_url_8a2922d8_uniq; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_url_8a2922d8_uniq UNIQUE (url, max_width);


--
-- Name: wagtailforms_formsubmission_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsubmission_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_filter_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailimages_filter
    ADD CONSTRAINT wagtailimages_filter_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_filter_spec_42ad6e02_uniq; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailimages_filter
    ADD CONSTRAINT wagtailimages_filter_spec_42ad6e02_uniq UNIQUE (spec);


--
-- Name: wagtailimages_image_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_rendition_image_id_03110280_uniq; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_image_id_03110280_uniq UNIQUE (image_id, filter_id, focal_point_key);


--
-- Name: wagtailimages_rendition_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_pkey PRIMARY KEY (id);


--
-- Name: wagtailredirects_redirect_old_path_783622d7_uniq; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_old_path_783622d7_uniq UNIQUE (old_path, site_id);


--
-- Name: wagtailredirects_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_editorspick_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editorspick_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query_query_string_key; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_query_string_key UNIQUE (query_string);


--
-- Name: wagtailsearch_querydailyhits_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_querydailyhits_query_id_1dd232e6_uniq; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_query_id_1dd232e6_uniq UNIQUE (query_id, date);


--
-- Name: wagtailusers_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_pkey PRIMARY KEY (id);


--
-- Name: wagtailusers_userprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_key UNIQUE (user_id);


--
-- Name: welcome_welcomepage_pkey; Type: CONSTRAINT; Schema: public; Owner: benelux; Tablespace: 
--

ALTER TABLE ONLY welcome_welcomepage
    ADD CONSTRAINT welcome_welcomepage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: AOP_aop_121087a8; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX "AOP_aop_121087a8" ON "AOP_aop" USING btree (link_document_id);


--
-- Name: AOP_aop_47bdbd27; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX "AOP_aop_47bdbd27" ON "AOP_aop" USING btree (congrats_steps_image_id);


--
-- Name: AOP_aop_64b6be7e; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX "AOP_aop_64b6be7e" ON "AOP_aop" USING btree (link_contact_us_id);


--
-- Name: aboutus_aboutus_f33175e6; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX aboutus_aboutus_f33175e6 ON aboutus_aboutus USING btree (image_id);


--
-- Name: aboutus_reasonblock_1a63c800; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX aboutus_reasonblock_1a63c800 ON aboutus_reasonblock USING btree (page_id);


--
-- Name: aboutus_reasonblock_f33175e6; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX aboutus_reasonblock_f33175e6 ON aboutus_reasonblock USING btree (image_id);


--
-- Name: aboutus_testimonialselement_061f981a; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX aboutus_testimonialselement_061f981a ON aboutus_testimonialselement USING btree (testimonial_id);


--
-- Name: aboutus_testimonialselement_e0f3a2a8; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX aboutus_testimonialselement_e0f3a2a8 ON aboutus_testimonialselement USING btree ("imageTestimonials_id");


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: compte_benefitselements_136ec6a3; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX compte_benefitselements_136ec6a3 ON compte_benefitselements USING btree (benefits_id);


--
-- Name: compte_benefitselements_f33175e6; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX compte_benefitselements_f33175e6 ON compte_benefitselements USING btree (image_id);


--
-- Name: compte_comptepage_00cae7dd; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX compte_comptepage_00cae7dd ON compte_comptepage USING btree (document_url_id);


--
-- Name: compte_comptepage_24e61e83; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX compte_comptepage_24e61e83 ON compte_comptepage USING btree (info_block_image_id);


--
-- Name: compte_comptepage_9bea82de; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX compte_comptepage_9bea82de ON compte_comptepage USING btree (product_id);


--
-- Name: compte_comptepage_f862e616; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX compte_comptepage_f862e616 ON compte_comptepage USING btree (contact_url_id);


--
-- Name: compte_helpquestions_390f3732; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX compte_helpquestions_390f3732 ON compte_helpquestions USING btree (questions_id);


--
-- Name: contactus_daysblock_1a63c800; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX contactus_daysblock_1a63c800 ON contactus_daysblock USING btree (page_id);


--
-- Name: contactus_phonenumber_1a63c800; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX contactus_phonenumber_1a63c800 ON contactus_phonenumber USING btree (page_id);


--
-- Name: contactus_submitformfield_1a63c800; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX contactus_submitformfield_1a63c800 ON contactus_submitformfield USING btree (page_id);


--
-- Name: cookies_page_cookieselement_b4c57dab; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX cookies_page_cookieselement_b4c57dab ON cookies_page_cookieselement USING btree (elements_id);


--
-- Name: countries_country_df87fe30; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX countries_country_df87fe30 ON countries_country USING btree (countries_id);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: documents_categoriespart_05e7bb57; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX documents_categoriespart_05e7bb57 ON documents_categoriespart USING btree (cat_id);


--
-- Name: documents_documentpart_10906f6c; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX documents_documentpart_10906f6c ON documents_documentpart USING btree ("docCategory_id");


--
-- Name: documents_documentpart_860d1885; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX documents_documentpart_860d1885 ON documents_documentpart USING btree (doc_id);


--
-- Name: documents_documentpart_904197b0; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX documents_documentpart_904197b0 ON documents_documentpart USING btree (doc_file_id);


--
-- Name: footer_footerlink_121087a8; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX footer_footerlink_121087a8 ON footer_footerlink USING btree (link_document_id);


--
-- Name: footer_footerlink_b8bfbea0; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX footer_footerlink_b8bfbea0 ON footer_footerlink USING btree (footer_id);


--
-- Name: header_header_05c75e25; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX header_header_05c75e25 ON header_header USING btree (login_url_id);


--
-- Name: header_header_613716a1; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX header_header_613716a1 ON header_header USING btree (banner_header_id);


--
-- Name: header_header_8c0ff365; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX header_header_8c0ff365 ON header_header USING btree (logo_id);


--
-- Name: header_header_a946fdac; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX header_header_a946fdac ON header_header USING btree (banner_phone_id);


--
-- Name: header_header_f862e616; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX header_header_f862e616 ON header_header USING btree (contact_url_id);


--
-- Name: header_languageitem_cddb115a; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX header_languageitem_cddb115a ON header_languageitem USING btree (header_id);


--
-- Name: header_menuitem_121087a8; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX header_menuitem_121087a8 ON header_menuitem USING btree (link_document_id);


--
-- Name: header_menuitem_5b76e141; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX header_menuitem_5b76e141 ON header_menuitem USING btree (link_page_id);


--
-- Name: header_menuitem_cddb115a; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX header_menuitem_cddb115a ON header_menuitem USING btree (header_id);


--
-- Name: help_helpquestions_390f3732; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX help_helpquestions_390f3732 ON help_helpquestions USING btree (questions_id);


--
-- Name: help_videoelement_7e53bca2; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX help_videoelement_7e53bca2 ON help_videoelement USING btree (block_id);


--
-- Name: help_videoelement_99dc9a93; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX help_videoelement_99dc9a93 ON help_videoelement USING btree (video_link_id);


--
-- Name: home_appbuttonelement_52034fe0; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX home_appbuttonelement_52034fe0 ON home_appbuttonelement USING btree (link_id);


--
-- Name: home_appbuttonelement_f24e3a94; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX home_appbuttonelement_f24e3a94 ON home_appbuttonelement USING btree ("imageApp_id");


--
-- Name: home_benefitselements_136ec6a3; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX home_benefitselements_136ec6a3 ON home_benefitselements USING btree (benefits_id);


--
-- Name: home_benefitselements_f33175e6; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX home_benefitselements_f33175e6 ON home_benefitselements USING btree (image_id);


--
-- Name: home_homepage_4c26e8f9; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX home_homepage_4c26e8f9 ON home_homepage USING btree (c1_aop_id);


--
-- Name: home_homepage_77318dfd; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX home_homepage_77318dfd ON home_homepage USING btree (c2_aop_id);


--
-- Name: home_sliderelements_1a63c800; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX home_sliderelements_1a63c800 ON home_sliderelements USING btree (page_id);


--
-- Name: home_sliderelements_f33175e6; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX home_sliderelements_f33175e6 ON home_sliderelements USING btree (image_id);


--
-- Name: home_videoelement_7e53bca2; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX home_videoelement_7e53bca2 ON home_videoelement USING btree (block_id);


--
-- Name: home_videoelement_99dc9a93; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX home_videoelement_99dc9a93 ON home_videoelement USING btree (video_link_id);


--
-- Name: products_config_countriestin_df87fe30; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX products_config_countriestin_df87fe30 ON products_config_countriestin USING btree (countries_id);


--
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_417f1b1c; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX taggit_taggeditem_417f1b1c ON taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_76f094bc; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX taggit_taggeditem_76f094bc ON taggit_taggeditem USING btree (tag_id);


--
-- Name: taggit_taggeditem_af31437c; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX taggit_taggeditem_af31437c ON taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_content_type_id_196cc965_idx; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX taggit_taggeditem_content_type_id_196cc965_idx ON taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: wagtail_embed_videos_embedvideo_ef01e2b6; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtail_embed_videos_embedvideo_ef01e2b6 ON wagtail_embed_videos_embedvideo USING btree (uploaded_by_user_id);


--
-- Name: wagtail_embed_videos_embedvideo_f2ee6af1; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtail_embed_videos_embedvideo_f2ee6af1 ON wagtail_embed_videos_embedvideo USING btree (thumbnail_id);


--
-- Name: wagtailcore_collection_path_d848dc19_like; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailcore_collection_path_d848dc19_like ON wagtailcore_collection USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_groupcollectionpermission_0a1a4dd8; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailcore_groupcollectionpermission_0a1a4dd8 ON wagtailcore_groupcollectionpermission USING btree (collection_id);


--
-- Name: wagtailcore_groupcollectionpermission_0e939a4f; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailcore_groupcollectionpermission_0e939a4f ON wagtailcore_groupcollectionpermission USING btree (group_id);


--
-- Name: wagtailcore_groupcollectionpermission_8373b171; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailcore_groupcollectionpermission_8373b171 ON wagtailcore_groupcollectionpermission USING btree (permission_id);


--
-- Name: wagtailcore_grouppagepermission_0e939a4f; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailcore_grouppagepermission_0e939a4f ON wagtailcore_grouppagepermission USING btree (group_id);


--
-- Name: wagtailcore_grouppagepermission_1a63c800; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailcore_grouppagepermission_1a63c800 ON wagtailcore_grouppagepermission USING btree (page_id);


--
-- Name: wagtailcore_page_2dbcba41; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailcore_page_2dbcba41 ON wagtailcore_page USING btree (slug);


--
-- Name: wagtailcore_page_417f1b1c; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailcore_page_417f1b1c ON wagtailcore_page USING btree (content_type_id);


--
-- Name: wagtailcore_page_5e7b1936; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailcore_page_5e7b1936 ON wagtailcore_page USING btree (owner_id);


--
-- Name: wagtailcore_page_first_published_at_2b5dd637_uniq; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailcore_page_first_published_at_2b5dd637_uniq ON wagtailcore_page USING btree (first_published_at);


--
-- Name: wagtailcore_page_path_98eba2c8_like; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailcore_page_path_98eba2c8_like ON wagtailcore_page USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_page_slug_e7c11b8f_like; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailcore_page_slug_e7c11b8f_like ON wagtailcore_page USING btree (slug varchar_pattern_ops);


--
-- Name: wagtailcore_pagerevision_1a63c800; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailcore_pagerevision_1a63c800 ON wagtailcore_pagerevision USING btree (page_id);


--
-- Name: wagtailcore_pagerevision_e8701ad4; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailcore_pagerevision_e8701ad4 ON wagtailcore_pagerevision USING btree (user_id);


--
-- Name: wagtailcore_pagerevision_submitted_for_moderation_c682e44c_uniq; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailcore_pagerevision_submitted_for_moderation_c682e44c_uniq ON wagtailcore_pagerevision USING btree (submitted_for_moderation);


--
-- Name: wagtailcore_pageviewrestriction_1a63c800; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailcore_pageviewrestriction_1a63c800 ON wagtailcore_pageviewrestriction USING btree (page_id);


--
-- Name: wagtailcore_site_0897acf4; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailcore_site_0897acf4 ON wagtailcore_site USING btree (hostname);


--
-- Name: wagtailcore_site_8372b497; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailcore_site_8372b497 ON wagtailcore_site USING btree (root_page_id);


--
-- Name: wagtailcore_site_hostname_96b20b46_like; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailcore_site_hostname_96b20b46_like ON wagtailcore_site USING btree (hostname varchar_pattern_ops);


--
-- Name: wagtaildocs_document_0a1a4dd8; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtaildocs_document_0a1a4dd8 ON wagtaildocs_document USING btree (collection_id);


--
-- Name: wagtaildocs_document_ef01e2b6; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtaildocs_document_ef01e2b6 ON wagtaildocs_document USING btree (uploaded_by_user_id);


--
-- Name: wagtailforms_formsubmission_1a63c800; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailforms_formsubmission_1a63c800 ON wagtailforms_formsubmission USING btree (page_id);


--
-- Name: wagtailimages_image_0a1a4dd8; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailimages_image_0a1a4dd8 ON wagtailimages_image USING btree (collection_id);


--
-- Name: wagtailimages_image_created_at_86fa6cd4_uniq; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailimages_image_created_at_86fa6cd4_uniq ON wagtailimages_image USING btree (created_at);


--
-- Name: wagtailimages_image_ef01e2b6; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailimages_image_ef01e2b6 ON wagtailimages_image USING btree (uploaded_by_user_id);


--
-- Name: wagtailimages_rendition_0a317463; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailimages_rendition_0a317463 ON wagtailimages_rendition USING btree (filter_id);


--
-- Name: wagtailimages_rendition_f33175e6; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailimages_rendition_f33175e6 ON wagtailimages_rendition USING btree (image_id);


--
-- Name: wagtailredirects_redirect_2fd79f37; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailredirects_redirect_2fd79f37 ON wagtailredirects_redirect USING btree (redirect_page_id);


--
-- Name: wagtailredirects_redirect_9365d6e7; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailredirects_redirect_9365d6e7 ON wagtailredirects_redirect USING btree (site_id);


--
-- Name: wagtailredirects_redirect_old_path_bb35247b_like; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailredirects_redirect_old_path_bb35247b_like ON wagtailredirects_redirect USING btree (old_path varchar_pattern_ops);


--
-- Name: wagtailsearch_editorspick_0bbeda9c; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailsearch_editorspick_0bbeda9c ON wagtailsearch_editorspick USING btree (query_id);


--
-- Name: wagtailsearch_editorspick_1a63c800; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailsearch_editorspick_1a63c800 ON wagtailsearch_editorspick USING btree (page_id);


--
-- Name: wagtailsearch_query_query_string_e785ea07_like; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailsearch_query_query_string_e785ea07_like ON wagtailsearch_query USING btree (query_string varchar_pattern_ops);


--
-- Name: wagtailsearch_querydailyhits_0bbeda9c; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX wagtailsearch_querydailyhits_0bbeda9c ON wagtailsearch_querydailyhits USING btree (query_id);


--
-- Name: welcome_welcomepage_560be1e0; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX welcome_welcomepage_560be1e0 ON welcome_welcomepage USING btree (background_image_id);


--
-- Name: welcome_welcomepage_5794ad09; Type: INDEX; Schema: public; Owner: benelux; Tablespace: 
--

CREATE INDEX welcome_welcomepage_5794ad09 ON welcome_welcomepage USING btree (logo_image_id);


--
-- Name: AOP__congrats_steps_image_id_2f9da1eb_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY "AOP_aop"
    ADD CONSTRAINT "AOP__congrats_steps_image_id_2f9da1eb_fk_wagtailimages_image_id" FOREIGN KEY (congrats_steps_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: AOP_aop_link_contact_us_id_06053908_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY "AOP_aop"
    ADD CONSTRAINT "AOP_aop_link_contact_us_id_06053908_fk_wagtailcore_page_id" FOREIGN KEY (link_contact_us_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: AOP_aop_link_document_id_9f776dfa_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY "AOP_aop"
    ADD CONSTRAINT "AOP_aop_link_document_id_9f776dfa_fk_wagtailcore_page_id" FOREIGN KEY (link_document_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: aboutus__testimonial_id_e6eaec32_fk_aboutus_aboutus_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY aboutus_testimonialselement
    ADD CONSTRAINT aboutus__testimonial_id_e6eaec32_fk_aboutus_aboutus_page_ptr_id FOREIGN KEY (testimonial_id) REFERENCES aboutus_aboutus(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: aboutus_aboutus_image_id_ba37f04f_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY aboutus_aboutus
    ADD CONSTRAINT aboutus_aboutus_image_id_ba37f04f_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: aboutus_aboutus_page_ptr_id_fdfe9321_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY aboutus_aboutus
    ADD CONSTRAINT aboutus_aboutus_page_ptr_id_fdfe9321_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: aboutus_imageTestimonials_id_fa52def4_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY aboutus_testimonialselement
    ADD CONSTRAINT "aboutus_imageTestimonials_id_fa52def4_fk_wagtailimages_image_id" FOREIGN KEY ("imageTestimonials_id") REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: aboutus_reasonb_page_id_53b795c7_fk_aboutus_aboutus_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY aboutus_reasonblock
    ADD CONSTRAINT aboutus_reasonb_page_id_53b795c7_fk_aboutus_aboutus_page_ptr_id FOREIGN KEY (page_id) REFERENCES aboutus_aboutus(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: aboutus_reasonblock_image_id_5c453f83_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY aboutus_reasonblock
    ADD CONSTRAINT aboutus_reasonblock_image_id_5c453f83_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ccbeb8d5ff13c466d95cb810bc4dcc75; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY products_config_countriestin
    ADD CONSTRAINT ccbeb8d5ff13c466d95cb810bc4dcc75 FOREIGN KEY (countries_id) REFERENCES products_config_productsconfig(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: co_elements_id_b87ae447_fk_cookies_page_cookiespage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY cookies_page_cookieselement
    ADD CONSTRAINT co_elements_id_b87ae447_fk_cookies_page_cookiespage_page_ptr_id FOREIGN KEY (elements_id) REFERENCES cookies_page_cookiespage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: compte_be_benefits_id_bfa54aa6_fk_compte_comptepage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY compte_benefitselements
    ADD CONSTRAINT compte_be_benefits_id_bfa54aa6_fk_compte_comptepage_page_ptr_id FOREIGN KEY (benefits_id) REFERENCES compte_comptepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: compte_benefitselem_image_id_86ec195c_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY compte_benefitselements
    ADD CONSTRAINT compte_benefitselem_image_id_86ec195c_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: compte_c_info_block_image_id_ae2ad8fa_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY compte_comptepage
    ADD CONSTRAINT compte_c_info_block_image_id_ae2ad8fa_fk_wagtailimages_image_id FOREIGN KEY (info_block_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: compte_comptepa_document_url_id_352122dc_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY compte_comptepage
    ADD CONSTRAINT compte_comptepa_document_url_id_352122dc_fk_wagtailcore_page_id FOREIGN KEY (document_url_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: compte_comptepag_contact_url_id_62ace187_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY compte_comptepage
    ADD CONSTRAINT compte_comptepag_contact_url_id_62ace187_fk_wagtailcore_page_id FOREIGN KEY (contact_url_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: compte_comptepage_page_ptr_id_28fcfe65_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY compte_comptepage
    ADD CONSTRAINT compte_comptepage_page_ptr_id_28fcfe65_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: compte_comptepage_product_id_4ea72fab_fk_AOP_aop_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY compte_comptepage
    ADD CONSTRAINT "compte_comptepage_product_id_4ea72fab_fk_AOP_aop_id" FOREIGN KEY (product_id) REFERENCES "AOP_aop"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: compte_h_questions_id_a55e73d2_fk_compte_comptepage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY compte_helpquestions
    ADD CONSTRAINT compte_h_questions_id_a55e73d2_fk_compte_comptepage_page_ptr_id FOREIGN KEY (questions_id) REFERENCES compte_comptepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: contactus_contactus_page_ptr_id_3451e7b7_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY contactus_contactus
    ADD CONSTRAINT contactus_contactus_page_ptr_id_3451e7b7_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: contactus_d_page_id_ebe5ea14_fk_contactus_contactus_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY contactus_daysblock
    ADD CONSTRAINT contactus_d_page_id_ebe5ea14_fk_contactus_contactus_page_ptr_id FOREIGN KEY (page_id) REFERENCES contactus_contactus(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: contactus_p_page_id_19ae5f12_fk_contactus_contactus_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY contactus_phonenumber
    ADD CONSTRAINT contactus_p_page_id_19ae5f12_fk_contactus_contactus_page_ptr_id FOREIGN KEY (page_id) REFERENCES contactus_contactus(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: contactus_s_page_id_ef209cca_fk_contactus_contactus_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY contactus_submitformfield
    ADD CONSTRAINT contactus_s_page_id_ef209cca_fk_contactus_contactus_page_ptr_id FOREIGN KEY (page_id) REFERENCES contactus_contactus(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cookies_page_cookie_page_ptr_id_c1aa6f58_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY cookies_page_cookiespage
    ADD CONSTRAINT cookies_page_cookie_page_ptr_id_c1aa6f58_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: countries_count_countries_id_5dfb58b2_fk_countries_countries_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY countries_country
    ADD CONSTRAINT countries_count_countries_id_5dfb58b2_fk_countries_countries_id FOREIGN KEY (countries_id) REFERENCES countries_countries(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: documents_ca_cat_id_cb3bb468_fk_documents_documents_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY documents_categoriespart
    ADD CONSTRAINT documents_ca_cat_id_cb3bb468_fk_documents_documents_page_ptr_id FOREIGN KEY (cat_id) REFERENCES documents_documents(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: documents_categories_ptr_id_72c8df8c_fk_documents_categories_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY documents_categoriespart
    ADD CONSTRAINT documents_categories_ptr_id_72c8df8c_fk_documents_categories_id FOREIGN KEY (categories_ptr_id) REFERENCES documents_categories(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: documents_do_docCategory_id_50cc0a49_fk_documents_categories_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY documents_documentpart
    ADD CONSTRAINT "documents_do_docCategory_id_50cc0a49_fk_documents_categories_id" FOREIGN KEY ("docCategory_id") REFERENCES documents_categories(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: documents_do_doc_id_730eebcb_fk_documents_documents_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY documents_documentpart
    ADD CONSTRAINT documents_do_doc_id_730eebcb_fk_documents_documents_page_ptr_id FOREIGN KEY (doc_id) REFERENCES documents_documents(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: documents_docum_doc_file_id_1934f403_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY documents_documentpart
    ADD CONSTRAINT documents_docum_doc_file_id_1934f403_fk_wagtaildocs_document_id FOREIGN KEY (doc_file_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: documents_documents_page_ptr_id_7ac469a1_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY documents_documents
    ADD CONSTRAINT documents_documents_page_ptr_id_7ac469a1_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: footer_footerl_link_document_id_b6430207_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY footer_footerlink
    ADD CONSTRAINT footer_footerl_link_document_id_b6430207_fk_wagtailcore_page_id FOREIGN KEY (link_document_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: footer_footerlink_footer_id_fbd57ff3_fk_footer_footer_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY footer_footerlink
    ADD CONSTRAINT footer_footerlink_footer_id_fbd57ff3_fk_footer_footer_id FOREIGN KEY (footer_id) REFERENCES footer_footer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: he_video_link_id_3cd63756_fk_wagtail_embed_videos_embedvideo_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY help_videoelement
    ADD CONSTRAINT he_video_link_id_3cd63756_fk_wagtail_embed_videos_embedvideo_id FOREIGN KEY (video_link_id) REFERENCES wagtail_embed_videos_embedvideo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: header_head_banner_header_id_57b56ce6_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY header_header
    ADD CONSTRAINT header_head_banner_header_id_57b56ce6_fk_wagtailimages_image_id FOREIGN KEY (banner_header_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: header_heade_banner_phone_id_9615cf8c_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY header_header
    ADD CONSTRAINT header_heade_banner_phone_id_9615cf8c_fk_wagtailimages_image_id FOREIGN KEY (banner_phone_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: header_header_contact_url_id_e17aefdb_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY header_header
    ADD CONSTRAINT header_header_contact_url_id_e17aefdb_fk_wagtailcore_page_id FOREIGN KEY (contact_url_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: header_header_login_url_id_f2966826_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY header_header
    ADD CONSTRAINT header_header_login_url_id_f2966826_fk_wagtailcore_page_id FOREIGN KEY (login_url_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: header_header_logo_id_4deed814_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY header_header
    ADD CONSTRAINT header_header_logo_id_4deed814_fk_wagtailimages_image_id FOREIGN KEY (logo_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: header_languageitem_header_id_40395d43_fk_header_header_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY header_languageitem
    ADD CONSTRAINT header_languageitem_header_id_40395d43_fk_header_header_id FOREIGN KEY (header_id) REFERENCES header_header(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: header_men_link_document_id_09d051d0_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY header_menuitem
    ADD CONSTRAINT header_men_link_document_id_09d051d0_fk_wagtaildocs_document_id FOREIGN KEY (link_document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: header_menuitem_header_id_1ec4dd39_fk_header_header_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY header_menuitem
    ADD CONSTRAINT header_menuitem_header_id_1ec4dd39_fk_header_header_id FOREIGN KEY (header_id) REFERENCES header_header(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: header_menuitem_link_page_id_0b15867f_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY header_menuitem
    ADD CONSTRAINT header_menuitem_link_page_id_0b15867f_fk_wagtailcore_page_id FOREIGN KEY (link_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: help_helppage_page_ptr_id_5c8854c6_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY help_helppage
    ADD CONSTRAINT help_helppage_page_ptr_id_5c8854c6_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: help_helpque_questions_id_00f70fc5_fk_help_helppage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY help_helpquestions
    ADD CONSTRAINT help_helpque_questions_id_00f70fc5_fk_help_helppage_page_ptr_id FOREIGN KEY (questions_id) REFERENCES help_helppage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: help_videoelemen_block_id_f48a40c6_fk_help_helppage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY help_videoelement
    ADD CONSTRAINT help_videoelemen_block_id_f48a40c6_fk_help_helppage_page_ptr_id FOREIGN KEY (block_id) REFERENCES help_helppage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ho_video_link_id_8497dd8d_fk_wagtail_embed_videos_embedvideo_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY home_videoelement
    ADD CONSTRAINT ho_video_link_id_8497dd8d_fk_wagtail_embed_videos_embedvideo_id FOREIGN KEY (video_link_id) REFERENCES wagtail_embed_videos_embedvideo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_appbuttonel_imageApp_id_f7e15175_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY home_appbuttonelement
    ADD CONSTRAINT "home_appbuttonel_imageApp_id_f7e15175_fk_wagtailimages_image_id" FOREIGN KEY ("imageApp_id") REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_appbuttonele_link_id_d1c8355a_fk_home_homepage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY home_appbuttonelement
    ADD CONSTRAINT home_appbuttonele_link_id_d1c8355a_fk_home_homepage_page_ptr_id FOREIGN KEY (link_id) REFERENCES home_homepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_benefits_benefits_id_119c3355_fk_home_homepage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY home_benefitselements
    ADD CONSTRAINT home_benefits_benefits_id_119c3355_fk_home_homepage_page_ptr_id FOREIGN KEY (benefits_id) REFERENCES home_homepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_benefitselemen_image_id_f32b2ee8_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY home_benefitselements
    ADD CONSTRAINT home_benefitselemen_image_id_f32b2ee8_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_homepage_c1_aop_id_d2627979_fk_AOP_aop_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY home_homepage
    ADD CONSTRAINT "home_homepage_c1_aop_id_d2627979_fk_AOP_aop_id" FOREIGN KEY (c1_aop_id) REFERENCES "AOP_aop"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_homepage_c2_aop_id_64caf21d_fk_AOP_aop_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY home_homepage
    ADD CONSTRAINT "home_homepage_c2_aop_id_64caf21d_fk_AOP_aop_id" FOREIGN KEY (c2_aop_id) REFERENCES "AOP_aop"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_homepage_page_ptr_id_e5b77cf7_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY home_homepage
    ADD CONSTRAINT home_homepage_page_ptr_id_e5b77cf7_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_sliderelemen_page_id_1519b38c_fk_home_homepage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY home_sliderelements
    ADD CONSTRAINT home_sliderelemen_page_id_1519b38c_fk_home_homepage_page_ptr_id FOREIGN KEY (page_id) REFERENCES home_homepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_sliderelements_image_id_3768abd2_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY home_sliderelements
    ADD CONSTRAINT home_sliderelements_image_id_3768abd2_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_videoelemen_block_id_82399ad8_fk_home_homepage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY home_videoelement
    ADD CONSTRAINT home_videoelemen_block_id_82399ad8_fk_home_homepage_page_ptr_id FOREIGN KEY (block_id) REFERENCES home_homepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_search_searchp_page_ptr_id_d3dff044_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY page_search_searchpage
    ADD CONSTRAINT page_search_searchp_page_ptr_id_d3dff044_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_config_pro_page_ptr_id_85a5ab03_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY products_config_productsconfig
    ADD CONSTRAINT products_config_pro_page_ptr_id_85a5ab03_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_tagge_content_type_id_9957a03c_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY taggit_taggeditem
    ADD CONSTRAINT taggit_tagge_content_type_id_9957a03c_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtail_embed_v_thumbnail_id_62034b40_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtail_embed_videos_embedvideo
    ADD CONSTRAINT wagtail_embed_v_thumbnail_id_62034b40_fk_wagtailimages_image_id FOREIGN KEY (thumbnail_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtail_embed_vide_uploaded_by_user_id_6670ced4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtail_embed_videos_embedvideo
    ADD CONSTRAINT wagtail_embed_vide_uploaded_by_user_id_6670ced4_fk_auth_user_id FOREIGN KEY (uploaded_by_user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore__content_type_id_c28424df_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailcore_page
    ADD CONSTRAINT wagtailcore__content_type_id_c28424df_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collection_id_5423575a_fk_wagtailcore_collection_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_collection_id_5423575a_fk_wagtailcore_collection_id FOREIGN KEY (collection_id) REFERENCES wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupc_permission_id_1b626275_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupc_permission_id_1b626275_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionp_group_id_05d61460_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionp_group_id_05d61460_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppagepe_page_id_710b114a_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepe_page_id_710b114a_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppagepermiss_group_id_fc07e671_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermiss_group_id_fc07e671_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagerevisio_page_id_d421cc1d_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevisio_page_id_d421cc1d_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewres_page_id_15a8bea6_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageviewres_page_id_15a8bea6_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id FOREIGN KEY (root_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_collection_id_23881625_fk_wagtailcore_collection_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_collection_id_23881625_fk_wagtailcore_collection_id FOREIGN KEY (collection_id) REFERENCES wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_docume_uploaded_by_user_id_17258b41_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_docume_uploaded_by_user_id_17258b41_fk_auth_user_id FOREIGN KEY (uploaded_by_user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailforms_formsubmis_page_id_e48e93e7_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsubmis_page_id_e48e93e7_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimag_collection_id_c2f8af7e_fk_wagtailcore_collection_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailimages_image
    ADD CONSTRAINT wagtailimag_collection_id_c2f8af7e_fk_wagtailcore_collection_id FOREIGN KEY (collection_id) REFERENCES wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_imag_uploaded_by_user_id_5d73dc75_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailimages_image
    ADD CONSTRAINT wagtailimages_imag_uploaded_by_user_id_5d73dc75_fk_auth_user_id FOREIGN KEY (uploaded_by_user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_ren_filter_id_7fc52567_fk_wagtailimages_filter_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_ren_filter_id_7fc52567_fk_wagtailimages_filter_id FOREIGN KEY (filter_id) REFERENCES wagtailimages_filter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_rendi_image_id_3e1fd774_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendi_image_id_3e1fd774_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirec_redirect_page_id_b5728a8f_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirec_redirect_page_id_b5728a8f_fk_wagtailcore_page_id FOREIGN KEY (redirect_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirects_redire_site_id_780a0e1e_fk_wagtailcore_site_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redire_site_id_780a0e1e_fk_wagtailcore_site_id FOREIGN KEY (site_id) REFERENCES wagtailcore_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_edito_query_id_c6eee4a0_fk_wagtailsearch_query_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_edito_query_id_c6eee4a0_fk_wagtailsearch_query_id FOREIGN KEY (query_id) REFERENCES wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_editorspi_page_id_28cbc274_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editorspi_page_id_28cbc274_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_query_query_id_2185994b_fk_wagtailsearch_query_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_query_query_id_2185994b_fk_wagtailsearch_query_id FOREIGN KEY (query_id) REFERENCES wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: welcome__background_image_id_b9340c11_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY welcome_welcomepage
    ADD CONSTRAINT welcome__background_image_id_b9340c11_fk_wagtailimages_image_id FOREIGN KEY (background_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: welcome_welcom_logo_image_id_4aa59fa2_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY welcome_welcomepage
    ADD CONSTRAINT welcome_welcom_logo_image_id_4aa59fa2_fk_wagtailimages_image_id FOREIGN KEY (logo_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: welcome_welcomepage_page_ptr_id_27d32fbc_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: benelux
--

ALTER TABLE ONLY welcome_welcomepage
    ADD CONSTRAINT welcome_welcomepage_page_ptr_id_27d32fbc_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

