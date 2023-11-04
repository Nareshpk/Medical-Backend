import { Doctor001mb } from 'src/entity/Doctor001mb';
import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { Repository } from "typeorm";
import { DoctorDTO } from 'src/dto/doctor.dto';

@Injectable()
export class DoctorService {
    constructor(

        @InjectRepository(Doctor001mb) private readonly doctorRepository: Repository<Doctor001mb>) {
    }
    async findAll(unitslno: any): Promise<Doctor001mb[]> {
        return await this.doctorRepository.find({ order: { slNo: "DESC" },where: { unitslno: unitslno } })
    }

    async create(doctorDTO: DoctorDTO): Promise<Doctor001mb> {
        const doctor001mb = new Doctor001mb();
        doctor001mb.setProperties(doctorDTO);
        return this.doctorRepository.save(doctor001mb);
    }
    async update(doctorDTO: DoctorDTO): Promise<Doctor001mb> {
        const doctor001mb = new Doctor001mb();
        doctor001mb.setProperties(doctorDTO);
        await this.doctorRepository.update({ slNo: doctor001mb.slNo }, doctor001mb);
        return doctor001mb;
    }

    findOne(id: number): Promise<Doctor001mb> {
        return this.doctorRepository.findOne(id);
    }
    async remove(id: string): Promise<void> {
        await this.doctorRepository.delete(id);
    }
}