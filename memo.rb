require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

# //続きを書いていきましょう！！(ifで条件分岐)

if memo_type == 1
    puts "拡張子を除いたファイルを入力してください"
    file_name = gets.chomp + ".csv"
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dをおします"
    array = []
    
    while sentence = gets
        array << sentence.chomp
    end
    
    CSV.open(file_name, "w") do |csv|
        csv << array
    end

elsif memo_type == 2
    puts "既存のメモの拡張子を除いたファイル名を入力してください"
    file_name = gets.chomp + ".csv"
    puts "追記したい内容を記入してください"
    puts "完了したらCtrl + Dをおします"
    
    array = []

    while sentence = gets
        array << sentence.chomp
    end

    CSV.open(file_name, "a") do |csv|
        csv << array
    end

else
    puts "1,2の数値以外が入力されました。再度ファイルを実行後、1か2の数値を入力してください"
end