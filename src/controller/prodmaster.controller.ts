import { Body, Controller, Delete, Get, Header, Param, Post, Put, Res, UseGuards } from "@nestjs/common";
import { hasRole } from 'src/role/role.decorator';
import { Role } from 'src/role/role.enum';
import { RolesGuard } from 'src/role/role.guard';
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { Prodmaster001mb } from "src/entity/Prodmaster001mb";
import { ProdmasterDTO } from "src/dto/Prodmaster.dto";
import { ProdmasterService } from "src/service/prodmaster.service";




@Controller('/testandreportstudio/api/Prodmaster')
export class ProdmasterController {
    constructor(private readonly prodmasterService: ProdmasterService) {
    }

    @hasRole(Role.superadmin)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Post("save")
    create(@Body() prodmasterDTO: ProdmasterDTO): Promise<Prodmaster001mb> {
        return this.prodmasterService.create(prodmasterDTO);
    }

    @hasRole(Role.superadmin)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Put("update")
    update(@Body() prodmasterDTO: ProdmasterDTO): Promise<Prodmaster001mb> {
        return this.prodmasterService.update(prodmasterDTO);
    }

    @hasRole(Role.superadmin, Role.admin, Role.user, Role.guest)
	@UseGuards(JwtAuthGuard, RolesGuard)
	@Get('getCount')
	getCount(): Promise<string> {
		return this.prodmasterService.getCount();
	}

    @hasRole(Role.superadmin)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Get('findAll/:unitslno')
    findAll(@Param('unitslno') unitslno: number): Promise<Prodmaster001mb[]> {
        return this.prodmasterService.findAll(unitslno);
    }

    @hasRole(Role.superadmin)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Get('slNo')
    findOne(@Param('slNo') slNo: number): Promise<Prodmaster001mb> {
        return this.prodmasterService.findOne(slNo);
    }

    @hasRole(Role.superadmin)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Delete('delete/:id')
    remove(@Param('id') id: string): Promise<void> {
        return this.prodmasterService.remove(id);
    }
}