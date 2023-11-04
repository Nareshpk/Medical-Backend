import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { PatientOpDTO } from "src/dto/PatientOp.dto";
import { Patientop001mb } from "src/entity/Patientop001mb";
import { getManager, Repository } from "typeorm";

@Injectable()
export class PatientOpService {
    constructor(

        @InjectRepository(Patientop001mb) private readonly patientopRepository: Repository<Patientop001mb>) {
    }
    async findAll(unitslno: any): Promise<Patientop001mb[]> {
        return await this.patientopRepository.find({ order: { slNo: "DESC" },relations: ["pslno2","dslno2"],where: { unitslno: unitslno } })
    }

    async create(patientOpDTO: PatientOpDTO): Promise<Patientop001mb> {
        const patientop001mb = new Patientop001mb();
        patientop001mb.setProperties(patientOpDTO);
        return this.patientopRepository.save(patientop001mb);
    }
    async update(patientOpDTO: PatientOpDTO): Promise<Patientop001mb> {
        const patientop001mb = new Patientop001mb();
        patientop001mb.setProperties(patientOpDTO);
        await this.patientopRepository.update({ slNo: patientop001mb.slNo }, patientop001mb);
        return patientop001mb;
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

    findOne(id: number): Promise<Patientop001mb> {
        return this.patientopRepository.findOne(id);
    }
    async remove(id: string): Promise<void> {
        await this.patientopRepository.delete(id);
    }
}