import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { ProdmasterController } from "src/controller/prodmaster.controller";
import { Prodmaster001mb } from "src/entity/Prodmaster001mb";
import { User001mb } from "src/entity/User001mb";
import { ProdmasterService } from "src/service/prodmaster.service";



@Module({
    imports: [TypeOrmModule.forFeature([Prodmaster001mb, User001mb])],
    providers: [ProdmasterService],
    controllers: [ProdmasterController],
})

export class ProdmasterModule { }