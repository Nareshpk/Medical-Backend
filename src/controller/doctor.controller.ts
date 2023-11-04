import { Body, Controller, Delete, Get, Header, Param, Post, Put, Res ,UseGuards} from "@nestjs/common";
import { hasRole } from 'src/role/role.decorator';
import { Role } from 'src/role/role.enum';
import { RolesGuard } from 'src/role/role.guard';
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { DoctorService } from "src/service/doctor.service";
import { DoctorDTO } from "src/dto/doctor.dto";
import { Doctor001mb } from "src/entity/Doctor001mb";



@Controller('/testandreportstudio/api/doctor')
export class DoctorController {
    constructor(private readonly doctorService: DoctorService) {
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Post("save")
    create(@Body() doctorDTO: DoctorDTO): Promise<Doctor001mb> {
        return this.doctorService.create(doctorDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Put("update")
    update(@Body() doctorDTO: DoctorDTO): Promise<Doctor001mb> {
        return this.doctorService.update(doctorDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('findAll/:unitslno')
    findAll(@Param('unitslno') unitslno: number): Promise<Doctor001mb[]> {
        return this.doctorService.findAll(unitslno);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('slNo')
    findOne(@Param('slNo') slNo: number): Promise<Doctor001mb> {
        return this.doctorService.findOne(slNo);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Delete('delete/:id')
    remove(@Param('id') id: string): Promise<void> {
        return this.doctorService.remove(id);
    }
}