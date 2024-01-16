import { Body, Controller, Delete, Get, Header, Param, Post, Put, Res ,UseGuards} from "@nestjs/common";
import { hasRole } from 'src/role/role.decorator';
import { Role } from 'src/role/role.enum';
import { RolesGuard } from 'src/role/role.guard';
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { DistributionService } from "src/service/Distribution.service";
import { Distribution001mb } from "src/entity/Distribution001mb";
import { CustomerDTO } from "src/dto/Customer.dto";
import { DistributionDTO } from "src/dto/Distribution.dto";



@Controller('/testandreportstudio/api/distribution')
export class  DistributionController {
    constructor(private readonly distributionService: DistributionService) {
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Post("save")
    create(@Body() distributionDTO: DistributionDTO): Promise<Distribution001mb> {
        return this.distributionService.create(distributionDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Put("update")
    update(@Body() distributionDTO: DistributionDTO): Promise<Distribution001mb> {
        return this.distributionService.update(distributionDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('findAll/:unitslno')
    findAll(@Param('unitslno') unitslno: number): Promise<Distribution001mb[]> {
        return this.distributionService.findAll(unitslno);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('slNo')
    findOne(@Param('slNo') slNo: number): Promise<Distribution001mb> {
        return this.distributionService.findOne(slNo);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Delete('delete/:id')
    remove(@Param('id') id: string): Promise<void> {
        return this.distributionService.remove(id);
    }
}