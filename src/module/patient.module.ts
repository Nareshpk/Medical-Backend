import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { PatientController } from "src/controller/patient.controller";
import { Patient001mb } from "src/entity/Patient001mb";
import { User001mb } from "src/entity/User001mb";
import { PatientService } from "src/service/patient.service";

@Module({
    imports: [TypeOrmModule.forFeature([Patient001mb, User001mb])],
    providers: [PatientService],
    controllers: [PatientController],
})

export class PatientModule { }