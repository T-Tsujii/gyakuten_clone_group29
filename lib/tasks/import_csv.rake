require "import.rb"

namespace :import_csv do

  desc "awstextインポートするタスク"
  task aws_text: :environment do
    list = Import.csv_data(path: "db/csv_data/aws_text_data.csv")
    AwsText.create!(list)
  end

  desc "movieインポートするタスク"
  task movie: :environment do
    list = Import.csv_data(path: "db/csv_data/movie_data.csv")
    Movie.create!(list)
  end

end
