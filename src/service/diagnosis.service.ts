import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { DiagnosisDTO } from "src/dto/diagnosis.dto";
import { Diagnosis001mb } from "src/entity/Diagnosis001mb";
import { Repository } from "typeorm";

@Injectable()
export class DiagnosisService {
    constructor(

        @InjectRepository(Diagnosis001mb) private readonly diagnosisRepository: Repository<Diagnosis001mb>) {
    }
    async findAll(unitslno: any): Promise<Diagnosis001mb[]> {
        return await this.diagnosisRepository.find({ order: { slNo: "DESC" },where: { unitslno: unitslno }, })
    }

    async create(diagnosisDTO: DiagnosisDTO): Promise<Diagnosis001mb> {
        const diagnosis001mb = new Diagnosis001mb();
        diagnosis001mb.setProperties(diagnosisDTO);
        return this.diagnosisRepository.save(diagnosis001mb);
    }
    async update(diagnosisDTO: DiagnosisDTO): Promise<Diagnosis001mb> {
        const diagnosis001mb = new Diagnosis001mb();
        diagnosis001mb.setProperties(diagnosisDTO);
        await this.diagnosisRepository.update({ slNo: diagnosis001mb.slNo }, diagnosis001mb);
        return diagnosis001mb;
    }

    findOne(id: number): Promise<Diagnosis001mb> {
        return this.diagnosisRepository.findOne(id);
    }
    async remove(id: string): Promise<void> {
        await this.diagnosisRepository.delete(id);
    }
}