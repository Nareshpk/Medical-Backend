import { Body, Controller, Delete, Get, Header, Param, Post, Put, Res ,UseGuards} from "@nestjs/common";
import { hasRole } from 'src/role/role.decorator';
import { Role } from 'src/role/role.enum';
import { RolesGuard } from 'src/role/role.guard';
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { PatientOpService } from "src/service/patientOp.service";
import { Patientop001mb } from "src/entity/Patientop001mb";
import { PatientOpDTO } from "src/dto/PatientOp.dto";


@Controller('/testandreportstudio/api/patientop')
export class PatientOpController {
    constructor(private readonly patientOpService: PatientOpService) {
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Post("save")
    create(@Body() patientOpDTO: PatientOpDTO): Promise<Patientop001mb> {
        return this.patientOpService.create(patientOpDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Put("update")
    update(@Body() patientOpDTO: PatientOpDTO): Promise<Patientop001mb> {
        return this.patientOpService.update(patientOpDTO);
    }

    @hasRole(Role.superadmin, Role.admin, Role.user, Role.guest)
	@UseGuards(JwtAuthGuard, RolesGuard)
	@Get('getCount')
	getCount(): Promise<string> {
		return this.patientOpService.getCount();
	}

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('findAll/:unitslno')
    findAll(@Param('unitslno') unitslno: number): Promise<Patientop001mb[]> {
        return this.patientOpService.findAll(unitslno);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get(':id')
    findOne(@Param('id') id: number): Promise<Patientop001mb> {
        return this.patientOpService.findOne(id);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Delete('delete/:id')
    remove(@Param('id') id: string): Promise<void> {
        return this.patientOpService.remove(id);
    }
}