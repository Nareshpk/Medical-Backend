import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { DiagnosisController } from "src/controller/diagnosis.controller";
import { Diagnosis001mb } from "src/entity/Diagnosis001mb";
import { User001mb } from "src/entity/User001mb";
import { DiagnosisService } from "src/service/diagnosis.service";


@Module({
    imports: [TypeOrmModule.forFeature([Diagnosis001mb, User001mb])],
    providers: [DiagnosisService],
    controllers: [DiagnosisController],
})

export class DiagnosisModule { }