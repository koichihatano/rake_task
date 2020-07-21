require 'csv'

namespace :import_csv do
    desc "CSVファイルをインポート処理するタスク"
    task users: :environment do
        path = File.join Rails.root, "db/csv_data/csv_data.csv"
            list = []
            CSV.foreach(path, headers: true) do |row|
                list << {
                        name: row["name"],
                        age: row["age"],
                        address: row["address"]
                         }
                
            end
            puts "インポート処理を開始"
            begin
                User.transaction do
                 User.create!(list)
                puts "インポート完了!!"
            end    
            
            rescue ActiveModel::UnknownAttributeError => invalid
                puts "インポート失敗UnknownAttributeError"
            end
        end
    end
