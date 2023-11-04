import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { TreatmenttDTO } from "src/dto/treatment.dto";
import { Treatment001mb } from "src/entity/Treatment001mb";
import { Repository } from "typeorm";

@Injectable()
export class TreatmentService {
    constructor(

        @InjectRepository(Treatment001mb) private readonly treatmentRepository: Repository<Treatment001mb>) {
    }
    async findAll(unitslno: any): Promise<Treatment001mb[]> {
        return await this.treatmentRepository.find({ order: { slNo: "DESC" },where: { unitslno: unitslno } })
    }

    async create(treatmenttDTO: TreatmenttDTO): Promise<Treatment001mb> {
        const treatment001mb = new Treatment001mb();
        treatment001mb.setProperties(treatmenttDTO);
        return this.treatmentRepository.save(treatment001mb);
    }
    async update(treatmenttDTO: TreatmenttDTO): Promise<Treatment001mb> {
        const treatment001mb = new Treatment001mb();
        treatment001mb.setProperties(treatmenttDTO);
        await this.treatmentRepository.update({ slNo: treatment001mb.slNo }, treatment001mb);
        return treatment001mb;
    }

    findOne(id: number): Promise<Treatment001mb> {
        return this.treatmentRepository.findOne(id);
    }
    async remove(id: string): Promise<void> {
        await this.treatmentRepository.delete(id);
    }
}