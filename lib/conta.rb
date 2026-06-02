class Conta

  attr_reader :cpf_cnpj, :senha, :tipo

  
  def initialize cpf_cnpj, senha
   @cpf_cnpj = cpf_cnpj
   @senha = senha 
   @tipo = cpf_cnpj.size <= 11 ? "PF" : "PJ"
   end
end


