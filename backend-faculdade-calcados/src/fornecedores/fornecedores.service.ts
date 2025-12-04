import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Fornecedor } from './entities/fornecedores.entity';
import { CreateFornecedoreDto } from './dto/create-fornecedore.dto';
import { UpdateFornecedoreDto } from './dto/update-fornecedore.dto';

@Injectable()
export class FornecedoresService {
  constructor(
    @InjectRepository(Fornecedor)
    private fornecedoresRepository: Repository<Fornecedor>,
  ) {}

  create(createFornecedoreDto: CreateFornecedoreDto) {
    return this.fornecedoresRepository.save(createFornecedoreDto);
  }

  findAll() {
    return this.fornecedoresRepository.find();
  }

  findOne(id: number) {
    return this.fornecedoresRepository.findOneBy({ id });
  }

  update(id: number, updateFornecedoreDto: UpdateFornecedoreDto) {
    return this.fornecedoresRepository.update(id, updateFornecedoreDto);
  }

  remove(id: number) {
    return this.fornecedoresRepository.delete(id);
  }
}
