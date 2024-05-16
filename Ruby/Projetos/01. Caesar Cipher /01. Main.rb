def caesar_cipher(inputString, shiftAmount)
  letrasMinusculas = ("a".."z").to_a
  letrasMaiusculas = ("A".."Z").to_a
  encriptadoString = ""

  inputString.each_char do |letra|
    if letrasMaiusculas.include? letra
      encriptadoString += letrasMaiusculas[(letrasMaiusculas.index(letra) + shiftAmount) % 26]
    elsif letrasMinusculas.include? letra
      encriptadoString += letrasMinusculas[(letrasMinusculas.index(letra) + shiftAmount) % 26]
    else
      encriptadoString += letra
    end
  end

  encriptadoString
end

puts(caesar_cipher('TEste de string!@#$@', 1002))
# => "Bmfy f xywnsl!"
