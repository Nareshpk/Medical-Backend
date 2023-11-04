import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { DoctorController } from "src/controller/doctor.controller";
import { Doctor001mb } from "src/entity/Doctor001mb";
import { User001mb } from "src/entity/User001mb";
import { DoctorService } from "src/service/doctor.service";



@Module({
    imports: [TypeOrmModule.forFeature([Doctor001mb, User001mb])],
    providers: [DoctorService],
    controllers: [DoctorController],
})

export class DoctorModule { }