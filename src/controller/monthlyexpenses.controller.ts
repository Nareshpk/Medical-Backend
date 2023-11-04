import { Body, Controller, Delete, Get, Header, Param, Post, Put, Res ,UseGuards} from "@nestjs/common";
import { hasRole } from 'src/role/role.decorator';
import { Role } from 'src/role/role.enum';
import { RolesGuard } from 'src/role/role.guard';
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { Monthlyexpenses001mb } from "src/entity/Monthlyexpenses001mb";
import { MonthlyexpensesService } from "src/service/monthlyexpenses.service";
import { MonthlyexpensesDTO } from "src/dto/monthlyexpenses.dto";





@Controller('/testandreportstudio/api/monthlyexpenses')
export class MonthlyexpensesController {
    constructor(private readonly monthlyexpensesService:MonthlyexpensesService) {
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Post("save")
    create(@Body() monthlyexpensesDTO: MonthlyexpensesDTO): Promise<Monthlyexpenses001mb> {
        return this.monthlyexpensesService.create(monthlyexpensesDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Put("update")
    update(@Body() monthlyexpensesDTO:MonthlyexpensesDTO): Promise<Monthlyexpenses001mb> {
        return this.monthlyexpensesService.update(monthlyexpensesDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('findAll/:unitslno')
    findAll(@Param('unitslno') unitslno: number): Promise<Monthlyexpenses001mb[]> {
        return this.monthlyexpensesService.findAll(unitslno);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('slNo')
    findOne(@Param('slNo') slNo: number): Promise<Monthlyexpenses001mb> {
        return this.monthlyexpensesService.findOne(slNo);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Delete('delete/:id')
    remove(@Param('id') id: string): Promise<void> {
        return this.monthlyexpensesService.remove(id);
    }
}