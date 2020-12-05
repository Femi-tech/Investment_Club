import numpy as np
import pandas as pd
from pandas_datareader import data as web
import os
from datetime import datetime, timedelta
import yfinance as yf

#Dataframe
stocks = ['ETH','AXP', 'AMGN', 'AAPL', 'BA', 'CAT', 'CSCO','CVX','GS','HD','HON','IBM','INTC','JNJ', 'KO', 'JPM', 'MCD', 'MMM', 'MRK', 'MSFT', 
          'NKE', 'PG', 'TRV', 'UNH', 'CRM', 'VZ', 'V', 'WBA', 'WMT', 'DIS', 'DOW']
end_date = datetime.now()
start_date = end_date + timedelta(-100)
data = yf.download(stocks, start=start_date, end=end_date)
stocks_df = data['Close'].dropna()

def token_latest_value(inception_date,initial_investment_ETH, member, stock_1, stock_2, stock_3, stock_4):
    a = stocks_df[stock_1]/stocks_df['ETH']
    b = stocks_df[stock_2]/stocks_df['ETH']
    c = stocks_df[stock_3]/stocks_df['ETH']
    d = stocks_df[stock_4]/stocks_df['ETH']
    price_index =(a/a[inception_date])+(b/b[inception_date])+(c/c[inception_date])+(d/d[inception_date])
    fund_value = (1/member)*initial_investment_ETH*price_index
    fund_last_value =fund_value[-1]
    token_last_value =fund_last_value/member
    return token_last_value

def token_return_since_inception(inception_date,initial_investment_ETH, member, stock_1, stock_2, stock_3, stock_4):
    a = stocks_df[stock_1]/stocks_df['ETH']
    b = stocks_df[stock_2]/stocks_df['ETH']
    c = stocks_df[stock_3]/stocks_df['ETH']
    d = stocks_df[stock_4]/stocks_df['ETH']
    price_index =(a/a[inception_date])+(b/b[inception_date])+(c/c[inception_date])+(d/d[inception_date])
    fund_value = (1/member)*initial_investment_ETH*price_index
    fund_last_value =fund_value[-1]
    fund_since_inception_return = (fund_last_value/initial_investment_ETH-1)*100
    return fund_since_inception_return

def token_return_1D(inception_date,initial_investment_ETH, member, stock_1, stock_2, stock_3, stock_4):
    a = stocks_df[stock_1]/stocks_df['ETH']
    b = stocks_df[stock_2]/stocks_df['ETH']
    c = stocks_df[stock_3]/stocks_df['ETH']
    d = stocks_df[stock_4]/stocks_df['ETH']
    price_index =(a/a[inception_date])+(b/b[inception_date])+(c/c[inception_date])+(d/d[inception_date])
    fund_value = (1/member)*initial_investment_ETH*price_index
    fund_last_value =fund_value[-2]
    fund_since_inception_return = (fund_last_value/initial_investment_ETH-1)*100
    return fund_since_inception_return

def token_return_1W(inception_date,initial_investment_ETH, member, stock_1, stock_2, stock_3, stock_4):
    a = stocks_df[stock_1]/stocks_df['ETH']
    b = stocks_df[stock_2]/stocks_df['ETH']
    c = stocks_df[stock_3]/stocks_df['ETH']
    d = stocks_df[stock_4]/stocks_df['ETH']
    price_index =(a/a[inception_date])+(b/b[inception_date])+(c/c[inception_date])+(d/d[inception_date])
    fund_value = (1/member)*initial_investment_ETH*price_index
    fund_last_value =fund_value[-5]
    fund_since_inception_return = (fund_last_value/initial_investment_ETH-1)*100
    return fund_since_inception_return

def token_return_1M(inception_date,initial_investment_ETH, member, stock_1, stock_2, stock_3, stock_4):
    a = stocks_df[stock_1]/stocks_df['ETH']
    b = stocks_df[stock_2]/stocks_df['ETH']
    c = stocks_df[stock_3]/stocks_df['ETH']
    d = stocks_df[stock_4]/stocks_df['ETH']
    price_index =(a/a[inception_date])+(b/b[inception_date])+(c/c[inception_date])+(d/d[inception_date])
    fund_value = (1/member)*initial_investment_ETH*price_index
    fund_last_value =fund_value[-25]
    fund_since_inception_return = (fund_last_value/initial_investment_ETH-1)*100
    return fund_since_inception_return