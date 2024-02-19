import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { DistributionController } from "src/controller/Distribution.controller";
import { Distribution001mb } from "src/entity/Distribution001mb";
import { Prodbuy001mb } from "src/entity/Prodbuy001mb";
import { User001mb } from "src/entity/User001mb";
import { DistributionService } from "src/service/Distribution.service";



@Module({
    imports: [TypeOrmModule.forFeature([Distribution001mb, User001mb,Prodbuy001mb])],
    providers: [DistributionService],
    controllers: [DistributionController],
})

export class DistributionModule { }