import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Produto } from './entities/produto.entity';
import { CreateProdutoDto } from './dto/create-produto.dto';

@Injectable()
export class ProdutosService {
  constructor(
    @InjectRepository(Produto)
    private produtosRepository: Repository<Produto>,
  ) {}

  // recebe o DTO e retorna uma promise de produto
  create(createProdutoDto: CreateProdutoDto): Promise<Produto> {
    return this.produtosRepository.save(createProdutoDto);
  }

  // retorna uma promise de uma lista de produtos
  findAll(): Promise<Produto[]> {
    return this.produtosRepository.find();
  }
}
