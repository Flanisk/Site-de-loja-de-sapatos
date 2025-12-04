import { Controller, Get, Post, Body, Query } from '@nestjs/common';
import { PedidosService } from './pedidos.service';

@Controller('pedidos')
export class PedidosController {
  constructor(private readonly pedidosService: PedidosService) {}

  @Post()
  create(@Body() data: any) {
    return this.pedidosService.create(data);
  }

  @Get()
  findAll() {
    return this.pedidosService.findAll();
  }

  // rota: /pedidos/filtrar?data=2025-10-01&id_produto=1001
  @Get('filtrar')
  filtrar(@Query('data') data: string, @Query('id_produto') idProduto: string) {
    return this.pedidosService.filtrar(data, idProduto);
  }
}
