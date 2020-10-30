require "import.rb"

namespace :import_csv do

  desc "awstextインポートするタスク"
  task aws_text: :environment do
    list = Import.csv_data(path: "db/csv_data/aws_text_data.csv")
    AwsText.create!(list)
  end

  desc "movieインポートするタスク"
  task movie: :environment do
    Movie.destroy_all
    list = Import.csv_data(path: "db/csv_data/all_movie_data.csv")
    Movie.create!(list)
  end

  desc "import textdata"
  task textdata: :environment do
    list = Import.csv_data(path: "db/csv_data/text_data.csv")
    TextBook.create!(list)
  end

  desc "import linedata"
  task linedata: :environment do
    list = Import.csv_data(path: "db/csv_data/line_data.csv")
    LineText.create!(list)
  end

  desc "import questiondata"
  task questiondata: :environment do
    list = Import.csv_data(path: "db/csv_data/question_data.csv")
    Question.create!(list)
  end
end
