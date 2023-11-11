import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { PatientPcDTO } from "src/dto/PatientPc.dto";
import { Patientpc001mb } from "src/entity/Patientpc001mb";
import { getManager, Repository } from "typeorm";

@Injectable()
export class PatientPCService {
    constructor(

        @InjectRepository(Patientpc001mb) private readonly patientpcRepository: Repository<Patientpc001mb>) {
    }
    async findAll(unitslno: any): Promise<Patientpc001mb[]> {
        return await this.patientpcRepository.find({ order: { slNo: "DESC" }, relations: ["pcslno2", "dcslno2"], where: { unitslno: unitslno } })
    }

    async create(patientpcDTO: PatientPcDTO[]): Promise<Patientpc001mb> {
        let new_data = patientpcDTO
        let Patientpc001mbs: Patientpc001mb[] = [];
        for (let i = 0; i < patientpcDTO.length; i++) {
            const patientpc001mb = new Patientpc001mb();
            patientpc001mb.pcslno = patientpcDTO[i].pcslno ? patientpcDTO[i].pcslno : null;
            patientpc001mb.dcslno = patientpcDTO[i].dcslno ? patientpcDTO[i].dcslno : null;
            patientpc001mb.pname = patientpcDTO[i].pname ? patientpcDTO[i].pname : null;
            patientpc001mb.age = patientpcDTO[i].age ? patientpcDTO[i].age : null;
            patientpc001mb.sex = patientpcDTO[i].sex ? patientpcDTO[i].sex : null;
            patientpc001mb.treatment = patientpcDTO[i].treatment ? patientpcDTO[i].treatment : null;
            patientpc001mb.address = patientpcDTO[i].address ? patientpcDTO[i].address : null;
            patientpc001mb.phone = patientpcDTO[i].phone ? patientpcDTO[i].phone : null;
            patientpc001mb.diagnosis = patientpcDTO[i].diagnosis ? patientpcDTO[i].diagnosis : null;
            patientpc001mb.fees = patientpcDTO[i].fees ? patientpcDTO[i].fees : null;
            patientpc001mb.balance = patientpcDTO[i].balance ? patientpcDTO[i].balance : null;
            patientpc001mb.fstatus = patientpcDTO[i].fstatus ? patientpcDTO[i].fstatus : null;
            patientpc001mb.date = patientpcDTO[i].date ? patientpcDTO[i].date : null;
            patientpc001mb.unitslno = patientpcDTO[i].unitslno;
            patientpc001mb.insertUser = patientpcDTO[i].insertUser;
            patientpc001mb.insertDatetime = patientpcDTO[i].insertDatetime;
            patientpc001mb.updatedUser = null;
            patientpc001mb.updatedDatetime = null;
            let orderitem = await this.patientpcRepository.save(patientpc001mb);
            // patientpc001mb.setProperties(patientpcDTO[i]);

        }
        return
    }
    async update(patientpcDTO: PatientPcDTO[]): Promise<Patientpc001mb> {
        let Patientpc001mbs: Patientpc001mb[] = [];
        for (let i = 0; i < patientpcDTO.length; i++) {

            if (patientpcDTO[i]?.slNo) {
                const patientpc001mb = new Patientpc001mb();
                patientpc001mb.slNo = patientpcDTO[i].slNo ? patientpcDTO[i].slNo : null;
                patientpc001mb.pcslno = patientpcDTO[i].pcslno ? patientpcDTO[i].pcslno : null;
                patientpc001mb.dcslno = patientpcDTO[i].dcslno ? patientpcDTO[i].dcslno : null;
                patientpc001mb.pname = patientpcDTO[i].pname ? patientpcDTO[i].pname : null;
                patientpc001mb.age = patientpcDTO[i].age ? patientpcDTO[i].age : null;
                patientpc001mb.sex = patientpcDTO[i].sex ? patientpcDTO[i].sex : null;
                patientpc001mb.treatment = patientpcDTO[i].treatment ? patientpcDTO[i].treatment : null;
                patientpc001mb.address = patientpcDTO[i].address ? patientpcDTO[i].address : null;
                patientpc001mb.phone = patientpcDTO[i].phone ? patientpcDTO[i].phone : null;
                patientpc001mb.diagnosis = patientpcDTO[i].diagnosis ? patientpcDTO[i].diagnosis : null;
                patientpc001mb.fees = patientpcDTO[i].fees ? patientpcDTO[i].fees : null;
                patientpc001mb.balance = patientpcDTO[i].balance ? patientpcDTO[i].balance : null;
                patientpc001mb.fstatus = patientpcDTO[i].fstatus ? patientpcDTO[i].fstatus : null;
                patientpc001mb.date = patientpcDTO[i].date ? patientpcDTO[i].date : null;
                patientpc001mb.unitslno = patientpcDTO[i].unitslno;
                patientpc001mb.insertUser = patientpcDTO[i].insertUser;
                patientpc001mb.insertDatetime = patientpcDTO[i].insertDatetime;
                patientpc001mb.updatedUser = null;
                patientpc001mb.updatedDatetime = null;                
                await this.patientpcRepository.update({ slNo: patientpc001mb.slNo }, patientpc001mb);
            } else {
                const patientpc001mb = new Patientpc001mb();
                patientpc001mb.pcslno = patientpcDTO[i].pcslno ? patientpcDTO[i].pcslno : null;
                patientpc001mb.dcslno = patientpcDTO[i].dcslno ? patientpcDTO[i].dcslno : null;
                patientpc001mb.pname = patientpcDTO[i].pname ? patientpcDTO[i].pname : null;
                patientpc001mb.age = patientpcDTO[i].age ? patientpcDTO[i].age : null;
                patientpc001mb.sex = patientpcDTO[i].sex ? patientpcDTO[i].sex : null;
                patientpc001mb.treatment = patientpcDTO[i].treatment ? patientpcDTO[i].treatment : null;
                patientpc001mb.address = patientpcDTO[i].address ? patientpcDTO[i].address : null;
                patientpc001mb.phone = patientpcDTO[i].phone ? patientpcDTO[i].phone : null;
                patientpc001mb.diagnosis = patientpcDTO[i].diagnosis ? patientpcDTO[i].diagnosis : null;
                patientpc001mb.fees = patientpcDTO[i].fees ? patientpcDTO[i].fees : null;
                patientpc001mb.balance = patientpcDTO[i].balance ? patientpcDTO[i].balance : null;
                patientpc001mb.fstatus = patientpcDTO[i].fstatus ? patientpcDTO[i].fstatus : null;
                patientpc001mb.date = patientpcDTO[i].date ? patientpcDTO[i].date : null;
                patientpc001mb.unitslno = patientpcDTO[i].unitslno;
                patientpc001mb.insertUser = patientpcDTO[i].insertUser;
                patientpc001mb.insertDatetime = patientpcDTO[i].insertDatetime;
                patientpc001mb.updatedUser = null;
                patientpc001mb.updatedDatetime = null;
                await this.patientpcRepository.save(patientpc001mb);
            }

        }
        // const patientpc001mb = new Patientpc001mb();
        // patientpc001mb.setProperties(patientpcDTO);
        // await this.patientpcRepository.update({ slNo: patientpc001mb.slNo }, patientpc001mb);
        // return patientpc001mb;
        return
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

    findOne(id: number): Promise<Patientpc001mb> {
        return this.patientpcRepository.findOne(id);
    }
    async remove(id: string): Promise<void> {
        await this.patientpcRepository.delete(id);
    }
}