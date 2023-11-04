import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { PatientPcController } from "src/controller/patientpc.controller";
import { Patientpc001mb } from "src/entity/Patientpc001mb";
import { User001mb } from "src/entity/User001mb";
import { PatientPCService } from "src/service/patientpc.service";


@Module({
    imports: [TypeOrmModule.forFeature([Patientpc001mb, User001mb])],
    providers: [PatientPCService],
    controllers: [PatientPcController],
})

export class PatientPcModule { }