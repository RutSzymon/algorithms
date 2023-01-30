def transform_date_format(dates)
  dates.map { |date| parse_accepted_date(date)&.strftime('%Y%m%d') }.compact
end

def parse_accepted_date(date)
  accepted_formats = ['%Y/%m/%d', '%d/%m/%Y', '%m-%d-%Y']
  accepted_formats.map { |format| Date.strptime(date, format) rescue nil }.compact.first
end

transform_date_format(["2010/02/20", "19/12/2016", "11-18-2012", "20130720"])
