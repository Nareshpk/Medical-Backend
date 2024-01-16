import { Body, Controller, Delete, Get, Header, Param, Post, Put, Res ,UseGuards} from "@nestjs/common";
import { hasRole } from 'src/role/role.decorator';
import { Role } from 'src/role/role.enum';
import { RolesGuard } from 'src/role/role.guard';
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { AllowanceService } from "src/service/allowance.service";
import { Allowance001mb } from "src/entity/Allowance001mb";
import { AllowanceDTO } from "src/dto/Allowance.dto";



@Controller('/testandreportstudio/api/allowance')
export class AllowanceController {
    constructor(private readonly allowanceService: AllowanceService) {
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Post("save")
    create(@Body() allowanceDTO: AllowanceDTO): Promise<Allowance001mb> {
        return this.allowanceService.create(allowanceDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Put("update")
    update(@Body() allowanceDTO: AllowanceDTO): Promise<Allowance001mb> {
        return this.allowanceService.update(allowanceDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('findAll/:unitslno')
    findAll(@Param('unitslno') unitslno: number): Promise<Allowance001mb[]> {
        return this.allowanceService.findAll(unitslno);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('slNo')
    findOne(@Param('slNo') slNo: number): Promise<Allowance001mb> {
        return this.allowanceService.findOne(slNo);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Delete('delete/:id')
    remove(@Param('id') id: string): Promise<void> {
        return this.allowanceService.remove(id);
    }
}