import { Body, Controller, Delete, Get, Param, Post, Put, UseGuards } from "@nestjs/common";
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { DiagnosisDTO } from "src/dto/diagnosis.dto";
import { TreatmenttDTO } from "src/dto/treatment.dto";
import { Diagnosis001mb } from "src/entity/Diagnosis001mb";
import { Treatment001mb } from "src/entity/Treatment001mb";
import { hasRole } from 'src/role/role.decorator';
import { Role } from 'src/role/role.enum';
import { RolesGuard } from 'src/role/role.guard';
import { TreatmentService } from "src/service/Treatment.service";
import { DiagnosisService } from "src/service/diagnosis.service";

@Controller('/testandreportstudio/api/diagnosis')
export class DiagnosisController {
    constructor(private readonly diagnosisService: DiagnosisService) {
    }

    @hasRole(Role.superadmin)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Post("save")
    create(@Body() diagnosisDTO: DiagnosisDTO): Promise<Diagnosis001mb> {
        return this.diagnosisService.create(diagnosisDTO);
    }

    @hasRole(Role.superadmin)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Put("update")
    update(@Body() diagnosisDTO: DiagnosisDTO): Promise<Diagnosis001mb> {
        return this.diagnosisService.update(diagnosisDTO);
    }

    @hasRole(Role.superadmin)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Get('findAll/:unitslno')
    findAll(@Param('unitslno') unitslno: number): Promise<Diagnosis001mb[]> {
        return this.diagnosisService.findAll(unitslno);
    }

    @hasRole(Role.superadmin)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Get('slNo')
    findOne(@Param('slNo') slNo: number): Promise<Diagnosis001mb> {
        return this.diagnosisService.findOne(slNo);
    }

    @hasRole(Role.superadmin)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Delete('delete/:id')
    remove(@Param('id') id: string): Promise<void> {
        return this.diagnosisService.remove(id);
    }
}