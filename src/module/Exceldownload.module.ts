import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { ExceldownloadController } from "src/controller/Exceldownload.controller";
import { Dayilyexpenses001mb } from "src/entity/Dayilyexpenses001mb";
import { Monthlyexpenses001mb } from "src/entity/Monthlyexpenses001mb";
import { Patientop001mb } from "src/entity/Patientop001mb";
import { Patientpc001mb } from "src/entity/Patientpc001mb";
import { User001mb } from "src/entity/User001mb";
import { ExceldownloadService } from "src/service/Exceldownload.service";



@Module({
    imports: [TypeOrmModule.forFeature([Patientop001mb, Patientpc001mb, Dayilyexpenses001mb, User001mb, Monthlyexpenses001mb])],
    providers: [ExceldownloadService],
    controllers: [ExceldownloadController],
})

export class ExceldownloadModule { }