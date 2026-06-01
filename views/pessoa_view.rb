require_relative "../lib/pessoa"

class PessoaView
  
  def initialize(data)
    @data = data
  end
  
  def menu_pessoa
   
    loop do
      print "Esolha: 1 - Listar | 2 - Cadastrar | 0 - Voltar"
      escolha = gets.chomp.to_i
     case escolha
     when 1 
      puts @data.listar
     when 2
      print "Informe o CPF/CNPJ: "  
      registro = gets.chomp
      print" Informe o seu nome: "
      nome = gets.chomp
      @data.add Pessoa.new registro, nome
     when 0 
       break
     else 
       puts "Opçao Invalida"
     end
    
    end
  end
end  
