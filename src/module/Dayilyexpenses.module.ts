import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { DayilyexpensesController } from "src/controller/dayilyexpenses.controller";
import { Dayilyexpenses001mb } from "src/entity/Dayilyexpenses001mb";
import { User001mb } from "src/entity/User001mb";
import { DayilyexpensesService } from "src/service/dayilyexpenses.service";

@Module({
    imports: [TypeOrmModule.forFeature([Dayilyexpenses001mb, User001mb])],
    providers: [DayilyexpensesService],
    controllers: [DayilyexpensesController],
})

export class DayilyexpensesModule { }