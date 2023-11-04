import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { MonthlyexpensesDTO } from "src/dto/monthlyexpenses.dto";
import { Monthlyexpenses001mb } from "src/entity/Monthlyexpenses001mb";
import { Repository } from "typeorm";


@Injectable()
export class MonthlyexpensesService {
    constructor(

        @InjectRepository(Monthlyexpenses001mb) private readonly monthlyexpensesRepository: Repository<Monthlyexpenses001mb>) {
    }
    async findAll(unitslno: any): Promise<Monthlyexpenses001mb[]> {
        return await this.monthlyexpensesRepository.find({ order: { slNo: "DESC" },where: { unitslno: unitslno } })
    }

    async create(monthlyexpensesDTO:MonthlyexpensesDTO): Promise<Monthlyexpenses001mb> {
        const monthlyexpenses001mb = new Monthlyexpenses001mb();
        monthlyexpenses001mb.setProperties(monthlyexpensesDTO);
        return this.monthlyexpensesRepository.save(monthlyexpenses001mb);
    }
    async update(monthlyexpensesDTO: MonthlyexpensesDTO): Promise<Monthlyexpenses001mb> {
        const monthlyexpenses001mb = new Monthlyexpenses001mb();Monthlyexpenses001mb
        monthlyexpenses001mb.setProperties(monthlyexpensesDTO);
        await this.monthlyexpensesRepository.update({ slNo: monthlyexpenses001mb.slNo }, monthlyexpenses001mb);
        return monthlyexpenses001mb;
    }

    findOne(id: number): Promise<Monthlyexpenses001mb> {
        return this.monthlyexpensesRepository.findOne(id);
    }
    async remove(id: string): Promise<void> {
        await this.monthlyexpensesRepository.delete(id);
    }
}