import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { AllowanceController } from "src/controller/allowance.controller";
import { Allowance001mb } from "src/entity/Allowance001mb";
import { User001mb } from "src/entity/User001mb";
import { AllowanceService } from "src/service/allowance.service";



@Module({
    imports: [TypeOrmModule.forFeature([Allowance001mb, User001mb])],
    providers: [AllowanceService],
    controllers: [AllowanceController],
})

export class AllowanceModule { }