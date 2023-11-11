import { Body, Controller, Delete, Get, Header, Param, Post, Put, Res, Req, UseGuards } from "@nestjs/common";
import { hasRole } from 'src/role/role.decorator';
import { Role } from 'src/role/role.enum';
import { RolesGuard } from 'src/role/role.guard';
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { Response } from "express";
import { ExceldownloadService } from "src/service/Exceldownload.service";



@Controller('/testandreportstudio/api/excelsheet')
export class ExceldownloadController {
    constructor(private readonly excelService: ExceldownloadService) {
    }

    @hasRole(Role.superadmin)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Get('excel/:startdate/:enddate/:unitslno')
    @Header("Content-Type",
        "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")
    @Header("Content-Disposition",
        "attachment; filename=" + "Attendace Report" + ".xlsx")
    async downloadExcel(@Param('startdate') startdate: any, @Param('enddate') enddate: any, @Param('unitslno') unitslno: any, @Req() request: any, @Res() response: any) {
        return await this.excelService.downloadExcel(startdate, enddate, unitslno, request, response);
    }
}