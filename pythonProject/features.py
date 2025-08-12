import pandas as pd
import numpy as np
import seaborn as sns
import datetime as dt
import matplotlib.pyplot as plt


from plotly.offline import iplot, init_notebook_mode, plot, download_plotlyjs
init_notebook_mode()

import plotly.graph_objects as go
import plotly.figure_factory as ff
from plotly import tools
from plotly.subplots import make_subplots

# import sklearn
from sklearn.linear_model import Ridge, LinearRegression, Lasso, ElasticNet
from sklearn.preprocessing import StandardScaler
from sklearn.svm import SVR
from sklearn.pipeline import Pipeline
from sklearn.model_selection import GridSearchCV, train_test_split
from sklearn.feature_selection import SelectKBest, mutual_info_regression

from sklearn.metrics import mean_squared_error, mean_absolute_error, explained_variance_score, r2_score, max_error,median_absolute_error, mean_squared_log_error