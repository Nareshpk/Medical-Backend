import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { DistributionDTO } from "src/dto/Distribution.dto";
import { Distribution001mb } from "src/entity/Distribution001mb";
import { Repository } from "typeorm";

@Injectable()
export class DistributionService {
    constructor(
        @InjectRepository(Distribution001mb) private readonly distributionRepository: Repository<Distribution001mb>) {
    }

    async create(distributionDTO: DistributionDTO): Promise<Distribution001mb> {
        const distribution001mb = new Distribution001mb();
        distribution001mb.setProperties(distributionDTO);
        return this.distributionRepository.save(distribution001mb);
    }

    async update(distributionDTO: DistributionDTO): Promise<Distribution001mb> {
        const distribution001mb = new Distribution001mb();
        distribution001mb.setProperties(distributionDTO);
        await this.distributionRepository.update({ slNo: distribution001mb.slNo }, distribution001mb);
        return distribution001mb;
    }

    async findAll(unitslno: any): Promise<Distribution001mb[]> {
        return await this.distributionRepository.find({ order: { slNo: "DESC" },where: { unitslno: unitslno } })
    }

    findOne(id: number): Promise<Distribution001mb> {
        return this.distributionRepository.findOne(id);
    }

    async remove(id: string): Promise<void> {
        await this.distributionRepository.delete(id);
    }
}