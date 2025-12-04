import { Entity, Column, PrimaryColumn, OneToMany } from 'typeorm';
import { Pedido } from '../../pedidos/entities/pedido.entity';

@Entity()
export class Produto {
  @PrimaryColumn() // PrimaryColumn pq o código é manual SKU e não auto-increment
  codigo: number;

  @Column()
  nome: string;

  @Column()
  categoria: string;

  @Column('decimal', { precision: 10, scale: 2 })
  preco: number;

  @Column()
  estoque: number;

  @OneToMany(() => Pedido, (pedido) => pedido.produto)
  pedidos: Pedido[];
}
