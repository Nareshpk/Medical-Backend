import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { PatientDTO } from "src/dto/patient.dto";
import { Patient001mb } from "src/entity/Patient001mb";
import { getManager, Repository } from "typeorm";

@Injectable()
export class PatientService {
    constructor(

        @InjectRepository(Patient001mb) private readonly patientRepository: Repository<Patient001mb>) {
    }
    async findAll(unitslno: any): Promise<Patient001mb[]> {
        return await this.patientRepository.find({ order: { slNo: "DESC" },where: { unitslno: unitslno } })
    }

    async create(patientDTO: PatientDTO): Promise<Patient001mb> {
        const patient001mb = new Patient001mb();
        patient001mb.setProperties(patientDTO);
        return this.patientRepository.save(patient001mb);
    }
    async update(patientDTO: PatientDTO): Promise<Patient001mb> {
        const patient001mb = new Patient001mb();
        patient001mb.setProperties(patientDTO);
        await this.patientRepository.update({ slNo: patient001mb.slNo }, patient001mb);
        return patient001mb;
    }

    async getCount(): Promise<string> {
        const entityManager = getManager();
        let result = await getManager().query(
          "select count(*) as row from Patient001mb",
          ["row"]
        );
        var string = JSON.stringify(result);
        return string;
      }

    findOne(id: number): Promise<Patient001mb> {
        return this.patientRepository.findOne(id);
    }
    async remove(id: string): Promise<void> {
        await this.patientRepository.delete(id);
    }
}