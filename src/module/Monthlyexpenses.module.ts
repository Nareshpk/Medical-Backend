import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { MonthlyexpensesController } from "src/controller/monthlyexpenses.controller";
import { Monthlyexpenses001mb } from "src/entity/Monthlyexpenses001mb";
import { User001mb } from "src/entity/User001mb";
import { MonthlyexpensesService } from "src/service/monthlyexpenses.service";

@Module({
    imports: [TypeOrmModule.forFeature([Monthlyexpenses001mb, User001mb])],
    providers: [MonthlyexpensesService],
    controllers: [MonthlyexpensesController],
})

export class MonthlyexpensesModule { }