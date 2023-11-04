import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { PatientMasterDTO } from "src/dto/patientmaster.dto";
import { Patientmaster001mb } from "src/entity/Patientmaster001mb";
import { getManager, Repository } from "typeorm";

@Injectable()
export class PatientMasterService {
    constructor(

        @InjectRepository(Patientmaster001mb) private readonly patientmasterRepository: Repository<Patientmaster001mb>) {
    }
    async findAll(unitslno: any): Promise<Patientmaster001mb[]> {
        return await this.patientmasterRepository.find({ order: { slNo: "DESC" },where: { unitslno: unitslno } })
    }

    async create(patientMasterDTO: PatientMasterDTO): Promise<Patientmaster001mb> {
        const patientmaster001mb = new Patientmaster001mb();
        patientmaster001mb.setProperties(patientMasterDTO);
        return this.patientmasterRepository.save(patientmaster001mb);
    }
    async update(patientMasterDTO: PatientMasterDTO): Promise<Patientmaster001mb> {
        const patientmaster001mb = new Patientmaster001mb();
        patientmaster001mb.setProperties(patientMasterDTO);
        await this.patientmasterRepository.update({ slNo: patientmaster001mb.slNo }, patientmaster001mb);
        return patientmaster001mb;
    }

    async getCount(): Promise<string> {
        const entityManager = getManager();
        let result = await getManager().query(
          "select count(*) as row from Patientmaster001mb",
          ["row"]
        );
        var string = JSON.stringify(result);
        return string;
      }

    findOne(id: number): Promise<Patientmaster001mb> {
        return this.patientmasterRepository.findOne(id);
    }
    async remove(id: string): Promise<void> {
        await this.patientmasterRepository.delete(id);
    }
}