



def chiffre_de_cesar(string,number)

  ascii = string.chars.map(&:ord)


    shifted=ascii.map do |c|
    c+number.to_i < 123 ?
    c+number.to_i :

    c+number.to_i-26
    end



  decalage=shifted.map do |c| c.chr end .join
  puts decalage
end

puts "entrer votre texte"
user_imput=gets.chomp

puts "entrer votre clé de criptage (mettre un nombre entre 0 et 26)"
cle_de_criptage=gets.chomp

chiffre_de_cesar(user_imput,cle_de_criptage)
