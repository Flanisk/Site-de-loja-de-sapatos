import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  ManyToOne,
  JoinColumn,
} from 'typeorm';
import { Produto } from '../../produtos/entities/produto.entity';
import { Fornecedor } from '../../fornecedores/entities/fornecedores.entity';

@Entity()
export class Pedido {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ type: 'date' })
  data: string;

  @Column()
  quantidade: number;

  // relacionamento com Produto
  @ManyToOne(() => Produto, (produto) => produto.pedidos)
  @JoinColumn({ name: 'id_produto' })
  produto: Produto;

  @Column()
  id_produto: number; // aux facilitar o insert

  // relacionamento com fornecedor
  @ManyToOne(() => Fornecedor, (fornecedor) => fornecedor.pedidos)
  @JoinColumn({ name: 'id_fornecedor' })
  fornecedor: Fornecedor;

  @Column()
  id_fornecedor: number;
}
