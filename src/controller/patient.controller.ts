import { Body, Controller, Delete, Get, Header, Param, Post, Put, Res ,UseGuards} from "@nestjs/common";
import { hasRole } from 'src/role/role.decorator';
import { Role } from 'src/role/role.enum';
import { RolesGuard } from 'src/role/role.guard';
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { PatientService } from "src/service/patient.service";
import { Patient001mb } from "src/entity/Patient001mb";
import { PatientDTO } from "src/dto/patient.dto";

@Controller('/testandreportstudio/api/patient')
export class PatientController {
    constructor(private readonly patientService: PatientService) {
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Post("save")
    create(@Body() patientDTO: PatientDTO): Promise<Patient001mb> {
        return this.patientService.create(patientDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Put("update")
    update(@Body() patientDTO: PatientDTO): Promise<Patient001mb> {
        return this.patientService.update(patientDTO);
    }

    @hasRole(Role.superadmin, Role.admin, Role.user, Role.guest)
	@UseGuards(JwtAuthGuard, RolesGuard)
	@Get('getCount')
	getCount(): Promise<string> {
		return this.patientService.getCount();
	}

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('findAll/:unitslno')
    findAll(@Param('unitslno') unitslno: number): Promise<Patient001mb[]> {
        return this.patientService.findAll(unitslno);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('slNo')
    findOne(@Param('slNo') slNo: number): Promise<Patient001mb> {
        return this.patientService.findOne(slNo);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Delete('delete/:id')
    remove(@Param('id') id: string): Promise<void> {
        return this.patientService.remove(id);
    }
}