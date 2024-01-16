import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { ProdbuyController } from "src/controller/Prodbuy.controller";
import { Prodbuy001mb } from "src/entity/Prodbuy001mb";
import { User001mb } from "src/entity/User001mb";
import { ProdbuyService } from "src/service/Prodbuy.service";



@Module({
    imports: [TypeOrmModule.forFeature([Prodbuy001mb, User001mb])],
    providers: [ProdbuyService],
    controllers: [ProdbuyController],
})

export class ProdbuyModule { }