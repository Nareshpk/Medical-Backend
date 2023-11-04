import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { TreatmentController } from "src/controller/Treatment.controller";
import { Treatment001mb } from "src/entity/Treatment001mb";
import { User001mb } from "src/entity/User001mb";
import { TreatmentService } from "src/service/Treatment.service";

@Module({
    imports: [TypeOrmModule.forFeature([Treatment001mb, User001mb])],
    providers: [TreatmentService],
    controllers: [TreatmentController],
})

export class TreatmentModule { }