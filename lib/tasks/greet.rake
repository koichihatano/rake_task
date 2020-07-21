namespace :greet do
    desc "ありがとうを英語で表示するタスク"
        task say_thanks: :environment do
        puts "Thanks"
    end

    desc "おいしいをフランス語で表示するタスク"
        task say_francais: :environment do
        puts "Delicieux"
    end
end

namespace :greet_when_dating do
    desc "何たべよっかを表示するタスク"
        task say_eat: :environment do
        puts "What do you want to eat ?"
    end

    desc "どこいこっかを表示するタスク"
        task say_go: :environment do
        puts "Where do you want to go ?"
    end
end

