import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ProdutosModule } from './produtos/produtos.module';
import { FornecedoresModule } from './fornecedores/fornecedores.module';
import { PedidosModule } from './pedidos/pedidos.module';

@Module({
  imports: [
    TypeOrmModule.forRoot({
      type: 'mysql',
      host: 'localhost',
      port: 3306,
      username: 'root',
      password: 'root',
      database: 'comercial_calcados_db',
      entities: [__dirname + '/**/*.entity{.ts,.js}'],
      synchronize: true, // vai criar as tabelas sozinho baseado no script
    }),
    ProdutosModule,
    FornecedoresModule,
    PedidosModule,
  ],
})
export class AppModule {}
