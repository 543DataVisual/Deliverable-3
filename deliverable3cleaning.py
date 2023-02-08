#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Feb  8 12:28:39 2023

@author: annareeder
"""
import pandas as pd
gitCloudRepo='https://github.com/543DataVisual/Deliverable1/raw/main/'
filename='copy_tractassignments.csv'

tractassignments=pd.read_csv(gitCloudRepo + filename)
tractassignments.columns


tractassignments.columns=tractassignments.columns.str.replace(pat="school_district", 
                                 repl="NAME", 
                                 regex=False)
tractassignments.columns

tractassignments["NAME"] = tractassignments["NAME"].str.upper()

tractassignments.head()

tractassignments.to_csv("cleanedtractsfile-deliverable3.csv", index=False)