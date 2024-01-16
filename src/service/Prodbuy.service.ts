import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { ProdbuyDTO } from "src/dto/Prodbuy.dto";
import { Prodbuy001mb } from "src/entity/Prodbuy001mb";
import { Repository } from "typeorm";

@Injectable()
export class ProdbuyService {
    constructor(
        @InjectRepository(Prodbuy001mb) private readonly prodbuyRepository: Repository<Prodbuy001mb>) {
    }

    async create(prodbuyDTO: ProdbuyDTO): Promise<Prodbuy001mb> {
        const prodbuy001mb = new Prodbuy001mb();
        prodbuy001mb.setProperties(prodbuyDTO);
        return this.prodbuyRepository.save(prodbuy001mb);
    }

    async update(prodbuyDTO: ProdbuyDTO): Promise<Prodbuy001mb> {
        const prodbuy001mb = new Prodbuy001mb();
        prodbuy001mb.setProperties(prodbuyDTO);
        await this.prodbuyRepository.update({ slNo: prodbuy001mb.slNo }, prodbuy001mb);
        return prodbuy001mb;
    }

    async findAll(unitslno: any): Promise<Prodbuy001mb[]> {
        return await this.prodbuyRepository.find({ order: { slNo: "DESC" },where: { unitslno: unitslno } })
    }

    findOne(id: number): Promise<Prodbuy001mb> {
        return this.prodbuyRepository.findOne(id);
    }

    async remove(id: string): Promise<void> {
        await this.prodbuyRepository.delete(id);
    }
}