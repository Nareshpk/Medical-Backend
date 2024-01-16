import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { AllowanceDTO } from "src/dto/Allowance.dto";
import { Allowance001mb } from "src/entity/Allowance001mb";
import { Repository } from "typeorm";

@Injectable()
export class AllowanceService {
    constructor(
        @InjectRepository(Allowance001mb) private readonly allowanceRepository: Repository<Allowance001mb>) {
    }

    async create(allowanceDTO: AllowanceDTO): Promise<Allowance001mb> {
        const allowance001mb = new Allowance001mb();
        allowance001mb.setProperties(allowanceDTO);
        return this.allowanceRepository.save(allowance001mb);
    }

    async update(allowanceDTO: AllowanceDTO): Promise<Allowance001mb> {
        const allowance001mb = new Allowance001mb();
        allowance001mb.setProperties(allowanceDTO);
        await this.allowanceRepository.update({ slNo: allowance001mb.slNo }, allowance001mb);
        return allowance001mb;
    }

    async findAll(unitslno: any): Promise<Allowance001mb[]> {
        return await this.allowanceRepository.find({ order: { slNo: "DESC" },where: { unitslno: unitslno } })
    }

    findOne(id: number): Promise<Allowance001mb> {
        return this.allowanceRepository.findOne(id);
    }

    async remove(id: string): Promise<void> {
        await this.allowanceRepository.delete(id);
    }
}