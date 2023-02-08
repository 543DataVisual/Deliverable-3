#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Feb  8 13:08:21 2023

@author: annareeder
"""

import pandas as pd
gitCloudRepo='https://github.com/543DataVisual/Deliverable1/raw/main/'
filename='copy_tractassignments.csv'

tractassignments=pd.read_csv(gitCloudRepo + filename)
tractassignments.columns
tractassignments

tractassignments.columns=tractassignments.columns.str.replace(pat="school_district", 
                                 repl="NAME", 
                                 regex=False)
tractassignments.columns

tractassignments["NAME"] = tractassignments["NAME"].str.upper()

tractassignments.head()



tractassignments=tractassignments.iloc[:32,:]


tractassignments.to_csv("cleanedtractsfiledeliverable3.2.csv", index=False)
