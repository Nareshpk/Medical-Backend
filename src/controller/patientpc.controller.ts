import { Body, Controller, Delete, Get, Header, Param, Post, Put, Req, Res ,UseGuards} from "@nestjs/common";
import { hasRole } from 'src/role/role.decorator';
import { Role } from 'src/role/role.enum';
import { RolesGuard } from 'src/role/role.guard';
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { PatientPCService } from "src/service/patientpc.service";
import { PatientPcDTO } from "src/dto/PatientPc.dto";
import { Patientpc001mb } from "src/entity/Patientpc001mb";
import { Request } from "supertest";
import { Response } from "express";



@Controller('/testandreportstudio/api/patientpc')
export class PatientPcController {
    constructor(private readonly patientPCService: PatientPCService) {
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Post("save")
    create(@Body() patientPcDTO: PatientPcDTO[]): Promise<Patientpc001mb> {
        return this.patientPCService.create(patientPcDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Put("update")
    update(@Body() patientPcDTO: PatientPcDTO[]): Promise<Patientpc001mb> {
        return this.patientPCService.update(patientPcDTO);
    }

    @hasRole(Role.superadmin, Role.admin, Role.user, Role.guest)
	@UseGuards(JwtAuthGuard, RolesGuard)
	@Get('getCount')
	getCount(): Promise<string> {
		return this.patientPCService.getCount();
	}

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('findAll/:unitslno')
    findAll(@Param('unitslno') unitslno: number): Promise<Patientpc001mb[]> {
        return this.patientPCService.findAll(unitslno);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get(':id')
    findOne(@Param('id') id: number): Promise<Patientpc001mb> {        
        return this.patientPCService.findOne(id);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Delete('delete/:id')
    remove(@Param('id') id: string): Promise<void> {
        return this.patientPCService.remove(id);
    }

    @hasRole(Role.superadmin)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Get('excel/:unitslno/:newdate')
    @Header("Content-Type",
        "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")
    @Header("Content-Disposition",
        "attachment; filename=" + "Attendace Report" + ".xlsx")
    async downloadExcel(@Param('unitslno') unitslno: number, @Param('newdate') newdate: any, @Req() request: Request, @Res() response: Response) {
        return await this.patientPCService.downloadExcel(unitslno, newdate, request, response);
    }

    @hasRole(Role.superadmin)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Get('excelhis/:unitslno')
    @Header("Content-Type",
        "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")
    @Header("Content-Disposition",
        "attachment; filename=" + "Attendace Report" + ".xlsx")
    async downloadHisExcel(@Param('unitslno') unitslno: number, @Req() request: Request, @Res() response: Response) {
        return await this.patientPCService.downloadHisExcel(unitslno,  request, response);
    }
}

   