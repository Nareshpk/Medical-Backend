import { Body, Controller, Delete, Get, Param, Post, Put, UseGuards } from "@nestjs/common";
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { ProdbuyDTO } from "src/dto/Prodbuy.dto";
import { Prodbuy001mb } from "src/entity/Prodbuy001mb";
import { hasRole } from 'src/role/role.decorator';
import { Role } from 'src/role/role.enum';
import { RolesGuard } from 'src/role/role.guard';
import { ProdbuyService } from "src/service/Prodbuy.service";



@Controller('/testandreportstudio/api/prodbuy')
export class  ProdbuyController {
    constructor(private readonly prodbuyService: ProdbuyService) {
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Post("save")
    create(@Body() prodbuyDTO: ProdbuyDTO): Promise<Prodbuy001mb> {
        return this.prodbuyService.create(prodbuyDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Put("update")
    update(@Body() prodbuyDTO: ProdbuyDTO): Promise<Prodbuy001mb> {
        return this.prodbuyService.update(prodbuyDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('findAll/:unitslno')
    findAll(@Param('unitslno') unitslno: number): Promise<Prodbuy001mb[]> {
        return this.prodbuyService.findAll(unitslno);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('slNo')
    findOne(@Param('slNo') slNo: number): Promise<Prodbuy001mb> {
        return this.prodbuyService.findOne(slNo);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Delete('delete/:id')
    remove(@Param('id') id: string): Promise<void> {
        return this.prodbuyService.remove(id);
    }
}