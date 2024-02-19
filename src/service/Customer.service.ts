import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { AllowanceDTO } from "src/dto/Allowance.dto";
import { CustomerDTO } from "src/dto/Customer.dto";
import { Customer001mb } from "src/entity/Customer001mb";
import { Prodbuy001mb } from "src/entity/Prodbuy001mb";
import { Repository } from "typeorm";

@Injectable()
export class CustomerService {
    constructor(
        @InjectRepository(Customer001mb) private readonly customerRepository: Repository<Customer001mb>,
        @InjectRepository(Prodbuy001mb) private readonly prodbuyRepository: Repository<Prodbuy001mb>) {
    }

    async create(customerDTO: CustomerDTO): Promise<Customer001mb> {
        const customer001mb = new Customer001mb();
        customer001mb.setProperties(customerDTO);
        let Prodbuy = new Prodbuy001mb();
        let ProdbuySlNo = new Prodbuy001mb();
        Prodbuy = await this.prodbuyRepository.findOne({ where: { proSlno: customerDTO.prodslno } });
        ProdbuySlNo = await this.prodbuyRepository.findOne({ where: { slNo: Prodbuy?.slNo } });
       
        if (customerDTO.prodslno ? (parseInt(ProdbuySlNo.qty) >= parseInt(customer001mb.qty) && parseInt(ProdbuySlNo?.qty) > 0) : false) {
            ProdbuySlNo.qty = (parseInt(ProdbuySlNo.qty) - parseInt(customer001mb.qty)).toString();
            await this.prodbuyRepository.update({ slNo: ProdbuySlNo.slNo }, ProdbuySlNo);
            return this.customerRepository.save(customer001mb);
        }
        
    }

    async update(customerDTO: CustomerDTO): Promise<Customer001mb> {
        const customer001mb = new Customer001mb();
        customer001mb.setProperties(customerDTO);
        await this.customerRepository.update({ slNo: customer001mb.slNo }, customer001mb);
        return customer001mb;
    }

    async findAll(unitslno: any): Promise<Customer001mb[]> {
        return await this.customerRepository.find({ order: { slNo: "DESC" },where: { unitslno: unitslno } })
    }

    findOne(id: number): Promise<Customer001mb> {
        return this.customerRepository.findOne(id);
    }

    async remove(id: string): Promise<void> {
        await this.customerRepository.delete(id);
    }
}