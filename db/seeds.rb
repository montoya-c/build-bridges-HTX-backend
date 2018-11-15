# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ResourceCategory.delete_all

ResourceDetail.delete_all
CategoryDetail.delete_all
Resource.delete_all
Category.delete_all
User.delete_all
Language.delete_all

user1 = User.create(username:"Amaanah", password_digest: BCrypt::Password.create('a123'), email:"info@refugeelink.com", organization_name:"Amaanah Refugee Services")
user2 = User.create(username:"Tahirih", password_digest: BCrypt::Password.create('t123'), email:"houston@tahirih.org", organization_name:"Tahirih Justice Center")
user3 = User.create(username:"BEI", password: BCrypt::Password.create('b123'), email:"refugee@bei.edu", organization_name:"Bilingual Education Institute")


resource1 =Resource.create(longitude:"-95.51719809999997", latitude:"29.701873", user_id: user1.id)
resource2 =Resource.create(longitude:"-95.51719809999997", latitude:"29.701873", user_id: user1.id)
resource3 =Resource.create(longitude:"-95.47278419999998", latitude:"29.748458", user_id: user2.id)
resource4 =Resource.create(longitude:"-95.48671109999998", latitude:"29.73236739999999", user_id: user3.id)

# category1 = Category.create(category_id: category1.id)
# category2 = Category.create(category_id: category2.id)
# category3 = Category.create(category_id: category3.id)
# category4 = Category.create(category_id: category4.id)
# category5 = Category.create(category_id: category5.id)
# category6 = Category.create(category_id: category6.id)
# category7 = Category.create(category_id: category7.id)


language1 = Language.create(name:"English", code:"en")
language2 = Language.create(name:"Spanish", code:"es")

# categoryDetail1 = CategoryDetail.create(name:"Housing", language_id:language1.id,category_id:category1.id)
# categoryDetail2 = CategoryDetail.create(name:"Vivienda", language_id:language2.id,category_id:category1.id)
# categoryDetail3 = CategoryDetail.create(name:"Career/Vocational Training", language_id:language1.id,category_id:category3.id)
# categoryDetail4 = CategoryDetail.create(name:"Legal Aid & Immigration Services", language_id:language1.id,category_id:category4.id)
# categoryDetail5 = CategoryDetail.create(name:"Women's Resources", language_id:language1.id,category_id: category4.id)
# categoryDetail6 = CategoryDetail.create(name:"Youth services", language_id:language1.id,category_id:category6.id)
# categoryDetail7 = CategoryDetail.create(name:"Transportation", language_id:language1.id,category_id: category7.id)



categories = [
  {
    details: [
      {
        language: language1,
        name: 'Houston Refugee Resettlement Agencies'
      },
      {
        language: language2,
        name: 'Agencias de Reasentamiento de Refugiados en Houston'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Community Centers'
      },
      {
        language: language2,
        name: 'Centros Comunitarios'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Community-Based Organizations'
      },
      {
        language: language2,
        name: 'Organizaciones Comunitarias'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Legal Aid/Immigration Services'
      },
      {
        language: language2,
        name: 'Asistencia Legal y Servicios de Inmigración'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Housing Assistance'
      },
      {
        language: language2,
        name: 'Asistencia de Vivienda'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Shelters'
      },
      {
        language: language2,
        name: 'Centros de Acogida y Albergues'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Rental & Utilities Assistance'
      },
      {
        language: language2,
        name: 'Asistencia de Alquiler y Servicios Públicos'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Food Assistance'
      },
      {
        language: language2,
        name: 'Ayuda Alimentaria'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Clothing Assistance'
      },
      {
        language: language2,
        name: 'Asistencia de Ropa'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Healthcare Services'
      },
      {
        language: language2,
        name: 'Servicios de Salud'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Medical'
      },
      {
        language: language2,
        name: 'Servicios Médicos'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Vision'
      },
      {
        language: language2,
        name: 'Servicios Para La Visión'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Dental'
      },
      {
        language: language2,
        name: 'Servicios Dentales'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Prescription Assistance'
      },
      {
        language: language2,
        name: 'Asistencia de Medicamentos'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Counseling Services'
      },
      {
        language: language2,
        name: 'Servicios de Asesoramiento'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Childcare'
      },
      {
        language: language2,
        name: 'Servicios de Guardería'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Transportation'
      },
      {
        language: language2,
        name: 'Asistencia de Transporte'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Youth Services'
      },
      {
        language: language2,
        name: 'Servicios para Jóvenes'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Adult Education'
      },
      {
        language: language2,
        name: 'Programas de Educación para Adultos'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'ESL'
      },
      {
        language: language2,
        name: 'Cursos de Inglés Como Segunda Lengua y Alfabetización'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'GED/Pre-GED'
      },
      {
        language: language2,
        name: 'Programas de GED/Pre-GED'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Family Literacy'
      },
      {
        language: language2,
        name: 'Educación Familiar'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Career/Vocational Training'
      },
      {
        language: language2,
        name: 'Programas de Formación y Capacitación Profesional'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Employment Services'
      },
      {
        language: language2,
        name: 'Servicios de Colocación Laboral y Asesoramiento'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Educational/Cultural Programs'
      },
      {
        language: language2,
        name: 'Programas Educativos y Culturales'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Translation and Interpretation Services'
      },
      {
        language: language2,
        name: 'Servicios de Traducción e Interpretación'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Community Gardens'
      },
      {
        language: language2,
        name: 'Huertas Comunitarias'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Citizenship'
      },
      {
        language: language2,
        name: 'Ciudadanía'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Women’s Resources'
      },
      {
        language: language2,
        name: 'Recursos Dirigidos a Mujeres'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'LGBTQ'
      },
      {
        language: language2,
        name: 'LGBTQ'
      }
    ]
  },
  {
    details: [
      {
        language: language1,
        name: 'Emergency Hotlines'
      },
      {
        language: language2,
        name: 'Líneas Telefónicas de Urgencia '
      }
    ]
  }
]


categories.each do | category_hash |
  category = Category.create
  category_hash[:details].each do | details |
    details[:category] = category
    CategoryDetail.create(details)
  end
end


resourceCategory1 = ResourceCategory.create(category_id: Category.first.id, resource_id:resource1.id)
resourceCategory2 = ResourceCategory.create(category_id:Category.second.id, resource_id:resource1.id)
resourceCategory3 = ResourceCategory.create(category_id:Category.last.id, resource_id:resource2.id)
resourceCategory4 = ResourceCategory.create(category_id:Category.first.id, resource_id:resource3.id)
resourceCategory5 = ResourceCategory.create(category_id:Category.second.id, resource_id:resource3.id)


resourceDetail1= ResourceDetail.create(program_name:"Transformed program", description:"offer support to single mothers that have arrived through the refugee resettlement process in the areas of financial literacy, employment, language, transportation, and housing.", services:" services are customized based on the specific needs and goals of each Transformed mother. Services include:
- Rental credits
- Utility assistance
- Transportation assistances
- Social integration
- Financial literacy
- Employment referrals
- English as a second language classes",
 address:"7322 Southwest Freeway suite 1560
Houston, Texas 77074", telephone:"(713) 370-3063", website:"www.refugeelink.com/transformed/", hours:"M-F 9:30am - 4:30pm", eligibility:"Must bring I-94/ proof of status,", language_spoken:"English, Spanish, Arabic", resource_id:resource1.id, language_id:language1.id)
resourceDetail2= ResourceDetail.create(program_name:"Awesome Academy", description:"Awesome Academy is an in-school, after-school, and athletic service that provides academic and social support for refugees in elementary and middle schools. We serve 400 students in partnership with Houston and Alief, and Austin Independent School Districts.", services:"support children both socially and academically.
  - Academic program
  - Soccer Program ",
   address:"7322 Southwest Freeway suite 1560
  Houston, Texas 77074", telephone:"713) 370-3063", website:"www.refugeelink.com/awesome-academy/", hours:"M-F 9:30am - 4:30pm", eligibility:"Please contact office for more information.", language_spoken:"English, Spanish, Arabic", resource_id:resource2.id, language_id:language1.id)
resourceDetail3= ResourceDetail.create(program_name:"Tahirih", description:"Pro bono legal services, social services case management for women and girls fleeing gender-based violence.", services:"", address:"1717 St.James Place, suite 450, Houston TX 77056", telephone:"(713)469-0100", website:"www.tahirih.org", hours:"", eligibility:"", language_spoken:"", resource_id: resource3.id, language_id:language1.id)
resourceDetail4= ResourceDetail.create(program_name:"BEI Refugee Program", description:"Free levelled ESL classes and ongoing classes offered in various locations throughout Southwest Houston.", services:"Provides free ESL classes for refugees, asylees, Cuban/Haitian paroles, and VOT.", address:"6060 Richmond Ave., Suite 180, Houston, TX 77057", telephone:"(713) 789-0333", website:"www.bei.edu", hours:"M-F 8:30AM-9:00PM, Sat 8:30AM - 12:00PM", eligibility:"Must bring I-94/ proof of status.", language_spoken:"English, Spanish, Burmese, Arabic, Amharic, French, Tigrinya", resource_id:resource4.id, language_id:language1.id)






resourceDetail1= ResourceDetail.create(program_name:"Transformed program", description:"offer support to single mothers that have arrived through the refugee resettlement process in the areas of financial literacy, employment, language, transportation, and housing.", services:" services are customized based on the specific needs and goals of each Transformed mother. Services include:
- Rental credits
- Utility assistance
- Transportation assistances
- Social integration
- Financial literacy
- Employment referrals
- English as a second language classes",
 address:"7322 Southwest Freeway suite 1560
Houston, Texas 77074", telephone:"(713) 370-3063", website:"www.refugeelink.com/transformed/", hours:"M-F 9:30am - 4:30pm", eligibility:"Must bring I-94/ proof of status,", language_spoken:"English, Spanish, Arabic", resource_id:resource1.id, language_id:language2.id)
resourceDetail2= ResourceDetail.create(program_name:"Awesome Academy", description:"Awesome Academy is an in-school, after-school, and athletic service that provides academic and social support for refugees in elementary and middle schools. We serve 400 students in partnership with Houston and Alief, and Austin Independent School Districts.", services:"support children both socially and academically.
  - Academic program
  - Soccer Program ",
   address:"7322 Southwest Freeway suite 1560
  Houston, Texas 77074", telephone:"713) 370-3063", website:"www.refugeelink.com/awesome-academy/", hours:"M-F 9:30am - 4:30pm", eligibility:"Please contact office for more information.", language_spoken:"English, Spanish, Arabic", resource_id:resource2.id, language_id:language2.id)
resourceDetail3= ResourceDetail.create(program_name:"Tahirih", description:"Pro bono legal services, social services case management for women and girls fleeing gender-based violence.", services:"", address:"1717 St.James Place, suite 450, Houston TX 77056", telephone:"(713)469-0100", website:"www.tahirih.org", hours:"", eligibility:"", language_spoken:"", resource_id: resource3.id, language_id:language2.id)
resourceDetail4= ResourceDetail.create(program_name:"BEI Refugee Program", description:"Free levelled ESL classes and ongoing classes offered in various locations throughout Southwest Houston.", services:"Provides free ESL classes for refugees, asylees, Cuban/Haitian paroles, and VOT.", address:"6060 Richmond Ave., Suite 180, Houston, TX 77057", telephone:"(713) 789-0333", website:"www.bei.edu", hours:"M-F 8:30AM-9:00PM, Sat 8:30AM - 12:00PM", eligibility:"Must bring I-94/ proof of status.", language_spoken:"English, Spanish, Burmese, Arabic, Amharic, French, Tigrinya", resource_id:resource4.id, language_id:language2.id)
