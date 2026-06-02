require_relative "../lib/conta" 

class ContaView
  
  def initialize(data)
    @data = data
  end
    
    def menu_conta
     loop do
       print "Escolha: 1 - Listar | 2 - Cadastrar | 0 - Voltar"
       escolha = gets.chomp.to_i

    case escolha
    when 1 
      puts @data.listar
    when 2
      print "Informe seu CPF/CNPJ: "
      registro = gets.chomp
      print " Informe sua senha:  "
      senha = gets.chomp
      @data.add Conta.new registro, senha
      when 0 
      break
    else 
      puts "Opçao Invalida"
    end
  end
 end
end
    
