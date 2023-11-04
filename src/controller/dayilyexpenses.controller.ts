import { Body, Controller, Delete, Get, Header, Param, Post, Put, Res ,UseGuards} from "@nestjs/common";
import { hasRole } from 'src/role/role.decorator';
import { Role } from 'src/role/role.enum';
import { RolesGuard } from 'src/role/role.guard';
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { Dayilyexpenses001mb } from "src/entity/Dayilyexpenses001mb";
import { DayilyexpensesDTO } from "src/dto/dayilyexpenses.dto";
import { DayilyexpensesService } from "src/service/dayilyexpenses.service";




@Controller('/testandreportstudio/api/dayilyexpenses')
export class DayilyexpensesController {
    constructor(private readonly dayilyexpensesService:DayilyexpensesService) {
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Post("save")
    create(@Body() dayilyexpensesDTO: DayilyexpensesDTO): Promise<Dayilyexpenses001mb> {
        return this.dayilyexpensesService.create(dayilyexpensesDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Put("update")
    update(@Body() dayilyexpensesDTO: DayilyexpensesDTO): Promise<Dayilyexpenses001mb> {
        return this.dayilyexpensesService.update(dayilyexpensesDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('findAll/:unitslno')
    findAll(@Param('unitslno') unitslno: number): Promise<Dayilyexpenses001mb[]> {
        return this.dayilyexpensesService.findAll(unitslno);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('slNo')
    findOne(@Param('slNo') slNo: number): Promise<Dayilyexpenses001mb> {
        return this.dayilyexpensesService.findOne(slNo);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Delete('delete/:id')
    remove(@Param('id') id: string): Promise<void> {
        return this.dayilyexpensesService.remove(id);
    }
}