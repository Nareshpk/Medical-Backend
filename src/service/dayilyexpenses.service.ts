import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { DayilyexpensesDTO } from "src/dto/dayilyexpenses.dto";
import { Dayilyexpenses001mb } from "src/entity/Dayilyexpenses001mb";
import { Repository } from "typeorm";


@Injectable()
export class DayilyexpensesService {
    constructor(

        @InjectRepository(Dayilyexpenses001mb) private readonly dayilyexpensesRepository: Repository<Dayilyexpenses001mb>) {
    }
    async findAll(unitslno: any): Promise<Dayilyexpenses001mb[]> {
        return await this.dayilyexpensesRepository.find({ order: { slNo: "DESC" },where: { unitslno: unitslno } })
    }

    async create(dayilyexpensesDTO:DayilyexpensesDTO): Promise<Dayilyexpenses001mb> {
        const dayilyexpenses001mb = new Dayilyexpenses001mb();
        dayilyexpenses001mb.setProperties(dayilyexpensesDTO);
        return this.dayilyexpensesRepository.save(dayilyexpenses001mb);
    }
    async update(dayilyexpensesDTO: DayilyexpensesDTO): Promise<Dayilyexpenses001mb> {
        const dayilyexpenses001mb = new Dayilyexpenses001mb();
        dayilyexpenses001mb.setProperties(dayilyexpensesDTO);
        await this.dayilyexpensesRepository.update({ slNo: dayilyexpenses001mb.slNo }, dayilyexpenses001mb);
        return dayilyexpenses001mb;
    }

    findOne(id: number): Promise<Dayilyexpenses001mb> {
        return this.dayilyexpensesRepository.findOne(id);
    }
    async remove(id: string): Promise<void> {
        await this.dayilyexpensesRepository.delete(id);
    }
}