#!/usr/bin/env python
# coding: utf-8

# In[1]:


get_ipython().run_line_magic('load_ext', 'sql')


# In[5]:


get_ipython().run_line_magic('sql', 'mysql://root:10012004dat@localhost/chicago')


# In[6]:


import pandas
chicago_socioeconomic_data = pandas.read_csv('https://data.cityofchicago.org/resource/jcxq-k9xf.csv')
get_ipython().run_line_magic('sql', '--persist chicago_socioeconomic_data')


# In[7]:


get_ipython().run_line_magic('sql', 'SELECT * FROM chicago_socioeconomic_data limit 5;')


# In[8]:


get_ipython().run_line_magic('sql', 'select count(*) from chicago_socioeconomic_data')


# In[9]:


get_ipython().run_line_magic('sql', 'select * from chicago_socioeconomic_data')


# In[10]:


get_ipython().run_line_magic('sql', 'select count(*) from chicago_socioeconomic_data where hardship_index > 50')


# In[11]:


get_ipython().run_line_magic('sql', 'select max(hardship_index) from chicago_socioeconomic_data')


# In[14]:


get_ipython().run_line_magic('sql', 'select * from chicago_socioeconomic_data where hardship_index = (select max(hardship_index) from chicago_socioeconomic_data )')


# In[ ]:




