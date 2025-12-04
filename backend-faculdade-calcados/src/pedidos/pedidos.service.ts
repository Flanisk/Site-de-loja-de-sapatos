import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Pedido } from './entities/pedido.entity';

@Injectable()
export class PedidosService {
  constructor(
    @InjectRepository(Pedido)
    private repo: Repository<Pedido>,
  ) {}

  create(data: any) {
    return this.repo.save(data);
  }

  findAll() {
    return this.repo.find({ relations: ['produto', 'fornecedor'] });
  }

  // logica de filtro que o xarles pediu na etapa 2
  async filtrar(data?: string, idProduto?: string) {
    const query = this.repo
      .createQueryBuilder('pedido')
      .leftJoinAndSelect('pedido.produto', 'produto')
      .leftJoinAndSelect('pedido.fornecedor', 'fornecedor');

    if (data) {
      query.andWhere('pedido.data = :data', { data });
    }
    if (idProduto) {
      query.andWhere('pedido.id_produto = :idProduto', { idProduto });
    }

    return query.getMany();
  }
}
