import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { PatientOpController } from "src/controller/patientop.controller";
import { Patientop001mb } from "src/entity/Patientop001mb";
import { User001mb } from "src/entity/User001mb";
import { PatientOpService } from "src/service/patientOp.service";

@Module({
    imports: [TypeOrmModule.forFeature([Patientop001mb, User001mb])],
    providers: [PatientOpService],
    controllers: [PatientOpController],
})

export class PatientOpModule { }