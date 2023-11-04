import { Body, Controller, Delete, Get, Param, Post, Put, UseGuards } from "@nestjs/common";
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { TreatmenttDTO } from "src/dto/treatment.dto";
import { Treatment001mb } from "src/entity/Treatment001mb";
import { hasRole } from 'src/role/role.decorator';
import { Role } from 'src/role/role.enum';
import { RolesGuard } from 'src/role/role.guard';
import { TreatmentService } from "src/service/Treatment.service";

@Controller('/testandreportstudio/api/treatment')
export class TreatmentController {
    constructor(private readonly treatmentService: TreatmentService) {
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Post("save")
    create(@Body() treatmenttDTO: TreatmenttDTO): Promise<Treatment001mb> {
        return this.treatmentService.create(treatmenttDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Put("update")
    update(@Body() treatmenttDTO: TreatmenttDTO): Promise<Treatment001mb> {
        return this.treatmentService.update(treatmenttDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('findAll/:unitslno')
    findAll(@Param('unitslno') unitslno: number): Promise<Treatment001mb[]> {
        return this.treatmentService.findAll(unitslno);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('slNo')
    findOne(@Param('slNo') slNo: number): Promise<Treatment001mb> {
        return this.treatmentService.findOne(slNo);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Delete('delete/:id')
    remove(@Param('id') id: string): Promise<void> {
        return this.treatmentService.remove(id);
    }
}