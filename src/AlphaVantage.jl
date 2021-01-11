VERSION >= v"1.0.0"

module AlphaVantage

using ArgCheck
using DelimitedFiles
using HTTP
using HttpCommon
using JSON

include("avclient.jl")
include("utils.jl")
include("stock_time_series.jl")
include("digital_currency.jl")
include("foreign_exchange_currency.jl")
include("stock_technical_indicators.jl")
include("sector_performance.jl")
include("fundamentals.jl")

# avclient
export global_key!, global_entry!, AVClient

# stock_time_series
export time_series_intraday
# `time_series_daily` etc are exported in macro

# digital_currency
export crypto_rating
# `digital_currency_daily` etc are exported in macro

# foreign_exchange_currency
export
    currency_exchange_rate,
    fx_intraday,
    fx_daily
# `fx_weekly` etc are exported in macro

# stock_technical_indicators
# `VWAP` etc are exported in macro

# sector_performance
export sector_performance

# fundamentals
export
    company_overview,
    income_statement,
    balance_sheet,
    cash_flow,
    listing_status

end # module
