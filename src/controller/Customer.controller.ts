import { Body, Controller, Delete, Get, Header, Param, Post, Put, Res ,UseGuards} from "@nestjs/common";
import { hasRole } from 'src/role/role.decorator';
import { Role } from 'src/role/role.enum';
import { RolesGuard } from 'src/role/role.guard';
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { CustomerService } from "src/service/Customer.service";
import { Customer001mb } from "src/entity/Customer001mb";
import { CustomerDTO } from "src/dto/Customer.dto";



@Controller('/testandreportstudio/api/Customer')
export class CustomerController {
    constructor(private readonly customerService: CustomerService) {
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Post("save")
    create(@Body() customerDTO: CustomerDTO): Promise<Customer001mb> {
        return this.customerService.create(customerDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Put("update")
    update(@Body() customerDTO: CustomerDTO): Promise<Customer001mb> {
        return this.customerService.update(customerDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('findAll/:unitslno')
    findAll(@Param('unitslno') unitslno: number): Promise<Customer001mb[]> {
        return this.customerService.findAll(unitslno);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('slNo')
    findOne(@Param('slNo') slNo: number): Promise<Customer001mb> {
        return this.customerService.findOne(slNo);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Delete('delete/:id')
    remove(@Param('id') id: string): Promise<void> {
        return this.customerService.remove(id);
    }
}