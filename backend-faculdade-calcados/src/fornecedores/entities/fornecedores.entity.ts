import { Entity, Column, PrimaryGeneratedColumn, OneToMany } from 'typeorm';
import { Pedido } from '../../pedidos/entities/pedido.entity';

@Entity('fornecedor')
export class Fornecedor {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  nome: string;

  @Column({ unique: true })
  cnpj: string;

  @Column()
  cidade: string;

  // eslint-disable-next-line @typescript-eslint/no-unsafe-return
  @OneToMany(() => Pedido, (pedido) => pedido.fornecedor)
  pedidos: Pedido[];
}
