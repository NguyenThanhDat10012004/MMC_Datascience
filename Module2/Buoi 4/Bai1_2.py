#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pymysql
import pandas as pd

conn=pymysql.connect(host='localhost',port=int(3306),user='root',passwd='10012004dat',db='hr')

df=pd.read_sql_query("SELECT * FROM EMPLOYEES ",conn)
df


# In[4]:


get_ipython().run_line_magic('load_ext', 'sql')
get_ipython().run_line_magic('sql', 'mysql://root:10012004dat@localhost/hr')


# In[5]:


get_ipython().run_line_magic('reload_ext', 'sql')



# In[6]:


get_ipython().run_cell_magic('sql', '', "\nCREATE TABLE INTERNATIONAL_STUDENT_TEST_SCORES (\n    country VARCHAR(50),\n    first_name VARCHAR(50),\n    last_name VARCHAR(50),\n    test_score INT\n);\nINSERT INTO INTERNATIONAL_STUDENT_TEST_SCORES (country, first_name, last_name, test_score)\nVALUES\n('United States', 'Marshall', 'Bernadot', 54),\n('Ghana', 'Celinda', 'Malkin', 51),\n('Ukraine', 'Guillermo', 'Furze', 53),\n('Greece', 'Aharon', 'Tunnow', 48),\n('Russia', 'Bail', 'Goodwin', 46),\n('Poland', 'Cole', 'Winteringham', 49),\n('Sweden', 'Emlyn', 'Erricker', 55),\n('Russia', 'Cathee', 'Sivewright', 49),\n('China', 'Barny', 'Ingerson', 57),\n('Uganda', 'Sharla', 'Papaccio', 55),\n('China', 'Stella', 'Youens', 51),\n('Poland', 'Julio', 'Buesden', 48),\n('United States', 'Tiffie', 'Cosely', 58),\n('Poland', 'Auroora', 'Stiffell', 45),\n('China', 'Clarita', 'Huet', 52),\n('Poland', 'Shannon', 'Goulden', 45),\n('Philippines', 'Emylee', 'Privost', 50),\n('France', 'Madelina', 'Burk', 49),\n('China', 'Saunderson', 'Root', 58),\n('Indonesia', 'Bo', 'Waring', 55),\n('China', 'Hollis', 'Domotor', 45),\n('Russia', 'Robbie', 'Collip', 46),\n('Philippines', 'Davon', 'Donisi', 46),\n('China', 'Cristabel', 'Radeliffe', 48),\n('China', 'Wallis', 'Bartleet', 58),\n('Moldova', 'Arleen', 'Stailey', 38),\n('Ireland', 'Mendel', 'Grumble', 58),\n('China', 'Sallyann', 'Exley', 51),\n('Mexico', 'Kain', 'Swaite', 46),\n('Indonesia', 'Alonso', 'Bulteel', 45),\n('Armenia', 'Anatol', 'Tankus', 51),\n('Indonesia', 'Coralyn', 'Dawkins', 48),\n('China', 'Deanne', 'Edwinson', 45),\n('China', 'Georgiana', 'Epple', 51),\n('Portugal', 'Bartlet', 'Breese', 56),\n('Azerbaijan', 'Idalina', 'Lukash', 50),\n('France', 'Livvie', 'Flory', 54),\n('Malaysia', 'Nonie', 'Borit', 48),\n('Indonesia', 'Clio', 'Mugg', 47),\n('Brazil', 'Westley', 'Measor', 48),\n('Philippines', 'Katrinka', 'Sibbert', 51),\n('Poland', 'Valentia', 'Mounch', 50),\n('Norway', 'Sheilah', 'Hedditch', 53),\n('Papua New Guinea', 'Itch', 'Jubb', 50),\n('Latvia', 'Stesha', 'Garnson', 53),\n('Canada', 'Cristionna', 'Wadmore', 46),\n('China', 'Lianna', 'Gatward', 43),\n('Guatemala', 'Tanney', 'Vials', 48),\n('France', 'Alma', 'Zavittieri', 44),\n('China', 'Alvira', 'Tamas', 50),\n('United States', 'Shanon', 'Peres', 45),\n('Sweden', 'Maisey', 'Lynas', 53),\n('Indonesia', 'Kip', 'Hothersall', 46),\n('China', 'Cash', 'Landis', 48),\n('Panama', 'Kennith', 'Digance', 45),\n('China', 'Ulberto', 'Riggeard', 48),\n('Switzerland', 'Judy', 'Gilligan', 49),\n('Philippines', 'Tod', 'Trevaskus', 52),\n('Brazil', 'Herold', 'Heggs', 44),\n('Latvia', 'Verney', 'Note', 50),\n('Poland', 'Temp', 'Ribey', 50),\n('China', 'Conroy', 'Egdal', 48),\n('Japan', 'Gabie', 'Alessandone', 47),\n('Ukraine', 'Devlen', 'Chaperlin', 54),\n('France', 'Babbette', 'Turner', 51),\n('Czech Republic', 'Virgil', 'Scotney', 52),\n('Tajikistan', 'Zorina', 'Bedow', 49),\n('China', 'Aidan', 'Rudeyeard', 50),\n('Ireland', 'Saunder', 'MacLice', 48),\n('France', 'Waly', 'Brunstan', 53),\n('China', 'Gisele', 'Enns', 52),\n('Peru', 'Mina', 'Winchester', 48),\n('Japan', 'Torie', 'MacShirrie', 50),\n('Russia', 'Benjamen', 'Kenford', 51),\n('China', 'Etan', 'Burn', 53),\n('Russia', 'Merralee', 'Chaperlin', 38),\n('Indonesia', 'Lanny', 'Malam', 49),\n('Canada', 'Wilhelm', 'Deeprose', 54),\n('Czech Republic', 'Lari', 'Hillhouse', 48),\n('China', 'Ossie', 'Woodley', 52),\n('Macedonia', 'April', 'Tyer', 50),\n('Vietnam', 'Madelon', 'Dansey', 53),\n('Ukraine', 'Korella', 'McNamee', 52),\n('Jamaica', 'Linnea', 'Cannam', 43),\n('China', 'Mart', 'Coling', 52),\n('Indonesia', 'Marna', 'Causbey', 47),\n('China', 'Berni', 'Daintier', 55),\n('Poland', 'Cynthia', 'Hassell', 49),\n('Canada', 'Carma', 'Schule', 49),\n('Indonesia', 'Malia', 'Blight', 48),\n('China', 'Paulo', 'Seivertsen', 47),\n('Niger', 'Kaylee', 'Hearley', 54),\n('Japan', 'Maure', 'Jandak', 46),\n('Argentina', 'Foss', 'Feavers', 45),\n('Venezuela', 'Ron', 'Leggitt', 60),\n('Russia', 'Flint', 'Gokes', 40),\n('China', 'Linet', 'Conelly', 52),\n('Philippines', 'Nikolas', 'Birtwell', 57),\n('Australia', 'Eduard', 'Leipelt', 53)\n")


# In[7]:


country = "Canada"
get_ipython().run_line_magic('sql', 'select * from INTERNATIONAL_STUDENT_TEST_SCORES where country = :country')


# In[8]:


test_score_distribution = get_ipython().run_line_magic('sql', "SELECT test_score as 'Test Score', count(*) as 'Frequency' from INTERNATIONAL_STUDENT_TEST_SCORES GROUP BY test_score;")


# In[9]:


print(test_score_distribution)


# In[12]:


dataframe = test_score_distribution.DataFrame()

get_ipython().run_line_magic('matplotlib', 'inline')
# uncomment the following line if you get an module error saying seaborn not found
# !pip install seaborn
import seaborn

plot = seaborn.barplot(x='Test Score',y='Frequency', data=dataframe)

