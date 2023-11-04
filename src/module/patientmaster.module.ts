import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { PatientmasterController } from "src/controller/patientmaster.controller";
import { Patientmaster001mb } from "src/entity/Patientmaster001mb";
import { User001mb } from "src/entity/User001mb";
import { PatientMasterService } from "src/service/patientmaster.service";

@Module({
    imports: [TypeOrmModule.forFeature([Patientmaster001mb, User001mb])],
    providers: [PatientMasterService],
    controllers: [PatientmasterController],
})

export class PatientMasterModule { }