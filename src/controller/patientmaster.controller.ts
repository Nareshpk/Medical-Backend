import { Body, Controller, Delete, Get, Header, Param, Post, Put, Res ,UseGuards} from "@nestjs/common";
import { hasRole } from 'src/role/role.decorator';
import { Role } from 'src/role/role.enum';
import { RolesGuard } from 'src/role/role.guard';
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { PatientMasterService } from "src/service/patientmaster.service";
import { PatientMasterDTO } from "src/dto/patientmaster.dto";
import { Patientmaster001mb } from "src/entity/Patientmaster001mb";

@Controller('/testandreportstudio/api/Patientmaster')
export class PatientmasterController {
    constructor(private readonly patientMasterService: PatientMasterService) {
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Post("save")
    create(@Body() patientMasterDTO: PatientMasterDTO): Promise<Patientmaster001mb> {
        return this.patientMasterService.create(patientMasterDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Put("update")
    update(@Body() patientMasterDTO: PatientMasterDTO): Promise<Patientmaster001mb> {
        return this.patientMasterService.update(patientMasterDTO);
    }

    @hasRole(Role.superadmin, Role.admin, Role.user, Role.guest)
	@UseGuards(JwtAuthGuard, RolesGuard)
	@Get('getCount')
	getCount(): Promise<string> {
		return this.patientMasterService.getCount();
	}

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('findAll/:unitslno')
    findAll(@Param('unitslno') unitslno: number): Promise<Patientmaster001mb[]> {
        return this.patientMasterService.findAll(unitslno);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('slNo')
    findOne(@Param('slNo') slNo: number): Promise<Patientmaster001mb> {
        return this.patientMasterService.findOne(slNo);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Delete('delete/:id')
    remove(@Param('id') id: string): Promise<void> {
        return this.patientMasterService.remove(id);
    }
}