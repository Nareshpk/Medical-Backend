import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { CustomerController } from "src/controller/Customer.controller";
import { Customer001mb } from "src/entity/Customer001mb";
import { Prodbuy001mb } from "src/entity/Prodbuy001mb";
import { User001mb } from "src/entity/User001mb";
import { CustomerService } from "src/service/Customer.service";



@Module({
    imports: [TypeOrmModule.forFeature([Customer001mb, User001mb,Prodbuy001mb])],
    providers: [CustomerService],
    controllers: [CustomerController],
})

export class CustomerModule { }