# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seed data goes here"
#betty= User.create( name: 'Betty Ardila', email: 'massagebgalhouse@gmail.com', phone: '7135307789', address: '2243 silverside dr. Katy TX 77449', admin: 'true', password: '12345678')
courses= Course.create([{courseName: 'Terapia Neuromuscular', courseDesc: 'Aprende sobre la técnica de la terapia neuromuscular! En esta clase estudiaremos el origen de esta terapia, el objetivo por la cual se practica, con sus efectos y beneficios. Aprenderás acerca de las técnicas de evaluación, la disfunción neuromuscular, los cinco elementos causantes del dolor, y por ultimo todas las técnicas neuromusculares.'},
{courseName: 'Masaje prenatal', courseDesc:'Esta técnica es muy utilizada hoy en día, y definitivamente esta es una clase donde vas a aprender mucho! En esta clase haremos una introduccion a la terapia del masaje prenatal, estudiaremos los objetivos, y la importancia de este masaje. Estudiaremos las precauciones, y contraindicaciones. Y por ultimo estudiaremos los tipis de masaje prenatal.'},
{courseName: 'Trigger Point', courseDesc:'Aprende sobre la técnica del Trigger point! En esta clase cubriremos los que es un Trigger Point y los tipos del punto gatillo. Estudiaremos las causas y sintomas de los puntos desencadenantes. Tambien estudiaremos las razones pare aplicar esta técnica, con todos sus beneficios. Por ultimo cubriremos los tratamientos post-disparo y las contraindicaciones. Esta es una clase muy completa en la cual vas a poder practicar todo lo que te enseñaremos.'},
{courseName: 'Deep Tissue', courseDesc: 'La técnica del deep tissue es una de las mas comunes, lo cual hace que esta clase sea muy importante!  En esta clase haremos una introduccion a esta técnica, explicaremos su objetivo, con sus efectos y beneficios. Estudiaremos las clases de personas a quienes se les recomienda esta técnica. Cerraremos la clase con practica y con recomendaciones.'},
{courseName: 'Sports Massage', courseDesc: 'Sports massage es una técnica muy requerida. En esta clase haremos una introduccion a esta técnica y estudiaremos el objetivo principal. Tambien cubriremos los efectos y beneficios de esta técnica. tambien estudiaremos las tres aplicaciones basicas del masaje deportivo, y la importancia del masaje deportivo para el rendimiento del deportista. Estudiaremos las técnicas utilizadas en el masaje deportivo previo y posterior a un evento deportivo'},
{courseName: 'Piedras Calientes', courseDesc: 'En esta clase estudiaremos la historia del masaje con piedras calientes. Estudiaremos el objetico principal de esta técnica y como fucniona. Estudiaremos los beneficios y contraindicaciones de esta practica. Y por ultimo estudiaremos como es una sesion con piedras calientes y practicaremos esta técnica.'},
{courseName: 'Drenaje Linfatico', courseDesc: 'En esta clase estudiaremos un poco de la historia de esta técnica. estudiaremos como funciona este sistema, y cual es su funcion principal. Estudiaremos lo que son los ganglios linfaticos y miraremos las localizaciones de los ganglios en el cuerpo humano. Estudiaremos las técnicas del drenaje linfatico y por ultimo estudiaremos y practicaremos la secuencia del drenaje linfatico.'},
{courseName: 'Masaje Reductivo', courseDesc: 'En esta clase estudiaremos la historia de esta técnica, los conceptos y hechos del masaje reductivo. Tambien estudiaremos las estrategias de esta técnica, como son la aparatologia y electro medicina aplicado a la estetica, la electroterapia, productos cosmeticos y los accessorios. Tambien estudiaremos las herramientas y técnicas para esta clase de masaje.'}])



