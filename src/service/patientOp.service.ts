import { Injectable, Req, Res } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { PatientOpDTO } from "src/dto/PatientOp.dto";
import { Patientop001mb } from "src/entity/Patientop001mb";
import { getManager, Repository } from "typeorm";
import { Response } from "express";
import { Request } from "supertest";

var path = require("path");
var converter = require("number-to-words");
const moment = require("moment");
const sequelize = require('sequelize')
const Op = sequelize.Op
var path = require("path");
const excel = require("exceljs");
var converter = require("number-to-words");
let value5 = 0;


@Injectable()
export class PatientOpService {
    constructor(

        @InjectRepository(Patientop001mb) private readonly patientopRepository: Repository<Patientop001mb>) {
    }
    async findAll(unitslno: any): Promise<Patientop001mb[]> {
        return await this.patientopRepository.find({ order: { slNo: "DESC" }, relations: ["pslno2", "dslno2"], where: { unitslno: unitslno } })
    }

    async create(patientOpDTO: PatientOpDTO): Promise<Patientop001mb> {
        const patientop001mb = new Patientop001mb();
        patientop001mb.setProperties(patientOpDTO);
        return this.patientopRepository.save(patientop001mb);
    }
    async update(patientOpDTO: PatientOpDTO): Promise<Patientop001mb> {
        const patientop001mb = new Patientop001mb();
        patientop001mb.setProperties(patientOpDTO);
        await this.patientopRepository.update({ slNo: patientop001mb.slNo }, patientop001mb);
        return patientop001mb;
    }

    async getCount(): Promise<string> {
        const entityManager = getManager();
        let result = await getManager().query(
            "select count(*) as row from Patient001mb",
            ["row"]
        );
        var string = JSON.stringify(result);
        return string;
    }

    findOne(id: number): Promise<Patientop001mb> {
        return this.patientopRepository.findOne(id);
    }
    async remove(id: string): Promise<void> {
        await this.patientopRepository.delete(id);
    }

    async downloadExcel(unitslno: any, newdate: any, @Req() request: Request, @Res() response: Response) {

        let customer = [];
        let getPatientFindall = await this.patientopRepository.find({ relations: ["pslno2", "dslno2"], where: { unitslno: unitslno } });

        for (let i = 0; i < getPatientFindall.length; i++) {
            if (newdate == moment(getPatientFindall[i].cdate).format('DD-MM-YYYY')) {
                customer.push(getPatientFindall[i])
            }

        }
        let workbook = new excel.Workbook();
        let worksheet = workbook.addWorksheet('Customer_Details_report'); // creating worksheet
        worksheet.getRow(5).height = 15;
        worksheet.getRow(6).height = 15;
        worksheet.getRow(7).height = 15;
        worksheet.getRow(8).height = 15;
        worksheet.getRow(9).height = 15;
        worksheet.getRow(10).height = 15;
        worksheet.getRow(11).height = 15;
        worksheet.getRow(12).height = 15;
        worksheet.getRow(13).height = 15;
        worksheet.getRow(14).height = 15;

        worksheet.columns = [
            { key: 'A', width: 20.0 },
            { key: 'B', width: 20.0 },
            { key: 'C', width: 20.0 },
            { key: 'D', width: 20.0 },
            { key: 'E', width: 20.0 },
            { key: 'F', width: 20.0 },
            { key: 'G', width: 20.0 },
            { key: 'H', width: 20.0 },
            { key: 'I', width: 20.0 },
            { key: 'J', width: 20.0 },
            { key: 'K', width: 20.0 },

        ];

        worksheet.columns.forEach((col) => {
            col.style.font = {
                size: 7,
                bold: true
            };
            col.style.alignment = { vertical: 'middle', horizontal: 'center' };
            col.style.border = { top: { style: 'thin' }, left: { style: 'thin' }, bottom: { style: 'thin' }, right: { style: 'thin' } };
        })

        worksheet.mergeCells('A1:A4');
        worksheet.getCell('A1:A4').value = "AM";
        worksheet.getCell('A1:A4').font = {
            size: 11,
            bold: true
        };
        worksheet.getCell('A1:A4').alignment = { vertical: 'middle', horizontal: 'center' };

        worksheet.mergeCells('B1:H2');
        worksheet.getCell('B1:H2').value = "AM CLINIC PHYSIOTHERAPY";
        worksheet.getCell('B1:H2').fgColor = { argb: 'b03600' };
        worksheet.getCell('B1:H2').font = {
            size: 11,
            bold: true
        };
        worksheet.getCell('B1:H2').alignment = { vertical: 'middle', horizontal: 'center' };

        worksheet.mergeCells('B3:H4');
        worksheet.getCell('B3:H4').value = "OP PATIENTS DETAILS";
        worksheet.getCell('B3:H4').fgColor = { argb: '00b050' };

        worksheet.getCell('B3:H4').font = {
            size: 11,
            bold: true
        };
        worksheet.getCell('B3:H4').alignment = { vertical: 'middle', horizontal: 'center' };

        worksheet.mergeCells('I1');
        worksheet.getCell('I1').value = "Format No";
        worksheet.getCell('I1').alignment = { vertical: 'left', horizontal: 'left' };
        worksheet.mergeCells('I2');
        worksheet.getCell('I2').value = `Issue Date :${moment(new Date()).format("DD-MM-YYYY")}`;
        worksheet.getCell('I2').alignment = { vertical: 'left', horizontal: 'left' };
        worksheet.mergeCells('I3');
        worksheet.getCell('I3').value = "Rev. No. 00	";
        worksheet.getCell('I3').alignment = { vertical: 'left', horizontal: 'left' };
        worksheet.mergeCells('I4');
        worksheet.getCell('I4').value = "Rev Date :";
        worksheet.getCell('I4').alignment = { vertical: 'left', horizontal: 'left' };

        worksheet.mergeCells('A5');
        worksheet.getCell('A5').value = "SL.No";
        worksheet.getCell('A5').font = {
            size: 11,
            bold: true
        };
        worksheet.mergeCells('B5');
        worksheet.getCell('B5').value = "Date";
        worksheet.getCell('B5').font = {
            size: 11,
            bold: true
        };
        worksheet.mergeCells('C5');
        worksheet.getCell('C5').value = "Docter Name";
        worksheet.getCell('C5').font = {
            size: 11,
            bold: true
        };
        worksheet.mergeCells('D5');
        worksheet.getCell('D5').value = "Patient Name";
        worksheet.getCell('D5').font = {
            size: 11,
            bold: true
        };
        worksheet.mergeCells('E5');
        worksheet.getCell('E5').value = "Age";
        worksheet.getCell('E5').font = {
            size: 11,
            bold: true
        };
        worksheet.mergeCells('F5');
        worksheet.getCell('F5').value = "Sex";
        worksheet.getCell('F5').font = {
            size: 11,
            bold: true
        };
        worksheet.mergeCells('G5');
        worksheet.getCell('G5').value = "Diagnosis";
        worksheet.getCell('G5').font = {
            size: 11,
            bold: true
        };
        worksheet.mergeCells('H5');
        worksheet.getCell('H5').value = "Treatment";
        worksheet.getCell('H5').font = {
            size: 11,
            bold: true
        };

        worksheet.mergeCells('I5');
        worksheet.getCell('I5').value = "Fees";
        worksheet.getCell('I5').font = {
            size: 11,
            bold: true
        };

        worksheet.mergeCells('J5');
        worksheet.getCell('J5').value = "Balance";
        worksheet.getCell('J5').font = {
            size: 11,
            bold: true
        };

        worksheet.mergeCells('K5');
        worksheet.getCell('K5').value = "Fees Status";
        worksheet.getCell('K5').font = {
            size: 11,
            bold: true
        };

        for (let i = 0; i < customer.length; i++) {
            let temp = i + 6;

            worksheet.mergeCells('A' + temp);
            worksheet.getCell('A' + temp).value = i + 1;

            worksheet.mergeCells('B' + temp);
            worksheet.getCell('B' + temp).value = customer[i].cdate;

            worksheet.mergeCells('C' + temp);
            worksheet.getCell('C' + temp).value = customer[i].dslno2.dFirstName;

            worksheet.mergeCells('D' + temp);
            worksheet.getCell('D' + temp).value = customer[i].pslno2.patientLname;

            worksheet.mergeCells('E' + temp);
            worksheet.getCell('E' + temp).value = customer[i].age;

            worksheet.mergeCells('F' + temp);
            worksheet.getCell('F' + temp).value = customer[i].sex;

            worksheet.mergeCells('G' + temp);
            worksheet.getCell('G' + temp).value = customer[i].diagnosis;

            worksheet.mergeCells('H' + temp);
            worksheet.getCell('H' + temp).value = "";

            worksheet.mergeCells('I' + temp);
            worksheet.getCell('I' + temp).value = customer[i].fees;

            worksheet.mergeCells('J' + temp);
            worksheet.getCell('J' + temp).value = customer[i].balance;

            worksheet.mergeCells('K' + temp);
            worksheet.getCell('K' + temp).value = customer[i].fstatus;

        }

        return workbook.xlsx.write(response).then(function () {
            response["status"](200).end();
        });
    }

    async downloadHisExcel(unitslno: any, @Req() request: Request, @Res() response: Response) {

        let customer = await this.patientopRepository.find({ relations: ["pslno2", "dslno2"], where: { unitslno: unitslno } });

        
        let workbook = new excel.Workbook();
        let worksheet = workbook.addWorksheet('Customer_Details_report'); // creating worksheet
        worksheet.getRow(5).height = 15;
        worksheet.getRow(6).height = 15;
        worksheet.getRow(7).height = 15;
        worksheet.getRow(8).height = 15;
        worksheet.getRow(9).height = 15;
        worksheet.getRow(10).height = 15;
        worksheet.getRow(11).height = 15;
        worksheet.getRow(12).height = 15;
        worksheet.getRow(13).height = 15;
        worksheet.getRow(14).height = 15;

        worksheet.columns = [
            { key: 'A', width: 20.0 },
            { key: 'B', width: 20.0 },
            { key: 'C', width: 20.0 },
            { key: 'D', width: 20.0 },
            { key: 'E', width: 20.0 },
            { key: 'F', width: 20.0 },
            { key: 'G', width: 20.0 },
            { key: 'H', width: 20.0 },
            { key: 'I', width: 20.0 },
            { key: 'J', width: 20.0 },
            { key: 'K', width: 20.0 },

        ];

        worksheet.columns.forEach((col) => {
            col.style.font = {
                size: 7,
                bold: true
            };
            col.style.alignment = { vertical: 'middle', horizontal: 'center' };
            col.style.border = { top: { style: 'thin' }, left: { style: 'thin' }, bottom: { style: 'thin' }, right: { style: 'thin' } };
        })

        worksheet.mergeCells('A1:A4');
        worksheet.getCell('A1:A4').value = "AM";
        worksheet.getCell('A1:A4').font = {
            size: 11,
            bold: true
        };
        worksheet.getCell('A1:A4').alignment = { vertical: 'middle', horizontal: 'center' };

        worksheet.mergeCells('B1:H2');
        worksheet.getCell('B1:H2').value = "OP CLINIC PHYSIOTHERAPY";
        worksheet.getCell('B1:H2').fgColor = { argb: 'b03600' };
        worksheet.getCell('B1:H2').font = {
            size: 11,
            bold: true
        };
        worksheet.getCell('B1:H2').alignment = { vertical: 'middle', horizontal: 'center' };

        worksheet.mergeCells('B3:H4');
        worksheet.getCell('B3:H4').value = "PC PATIENTS DETAILS";
        worksheet.getCell('B3:H4').fgColor = { argb: '00b050' };

        worksheet.getCell('B3:H4').font = {
            size: 11,
            bold: true
        };
        worksheet.getCell('B3:H4').alignment = { vertical: 'middle', horizontal: 'center' };

        worksheet.mergeCells('I1');
        worksheet.getCell('I1').value = "Format No";
        worksheet.getCell('I1').alignment = { vertical: 'left', horizontal: 'left' };
        worksheet.mergeCells('I2');
        worksheet.getCell('I2').value = `Issue Date :${moment(new Date()).format("DD-MM-YYYY")}`;
        worksheet.getCell('I2').alignment = { vertical: 'left', horizontal: 'left' };
        worksheet.mergeCells('I3');
        worksheet.getCell('I3').value = "Rev. No. 00	";
        worksheet.getCell('I3').alignment = { vertical: 'left', horizontal: 'left' };
        worksheet.mergeCells('I4');
        worksheet.getCell('I4').value = "Rev Date :";
        worksheet.getCell('I4').alignment = { vertical: 'left', horizontal: 'left' };

        worksheet.mergeCells('A5');
        worksheet.getCell('A5').value = "SL.No";
        worksheet.getCell('A5').font = {
            size: 11,
            bold: true
        };
        worksheet.mergeCells('B5');
        worksheet.getCell('B5').value = "Date";
        worksheet.getCell('B5').font = {
            size: 11,
            bold: true
        };
        worksheet.mergeCells('C5');
        worksheet.getCell('C5').value = "Docter Name";
        worksheet.getCell('C5').font = {
            size: 11,
            bold: true
        };
        worksheet.mergeCells('D5');
        worksheet.getCell('D5').value = "Patient Name";
        worksheet.getCell('D5').font = {
            size: 11,
            bold: true
        };
        worksheet.mergeCells('E5');
        worksheet.getCell('E5').value = "Age";
        worksheet.getCell('E5').font = {
            size: 11,
            bold: true
        };
        worksheet.mergeCells('F5');
        worksheet.getCell('F5').value = "Sex";
        worksheet.getCell('F5').font = {
            size: 11,
            bold: true
        };
        worksheet.mergeCells('G5');
        worksheet.getCell('G5').value = "Diagnosis";
        worksheet.getCell('G5').font = {
            size: 11,
            bold: true
        };
        worksheet.mergeCells('H5');
        worksheet.getCell('H5').value = "Treatment";
        worksheet.getCell('H5').font = {
            size: 11,
            bold: true
        };

        worksheet.mergeCells('I5');
        worksheet.getCell('I5').value = "Fees";
        worksheet.getCell('I5').font = {
            size: 11,
            bold: true
        };

        worksheet.mergeCells('J5');
        worksheet.getCell('J5').value = "Balance";
        worksheet.getCell('J5').font = {
            size: 11,
            bold: true
        };

        worksheet.mergeCells('K5');
        worksheet.getCell('K5').value = "Fees Status";
        worksheet.getCell('K5').font = {
            size: 11,
            bold: true
        };

        for (let i = 0; i < customer.length; i++) {
            let temp = i + 6;

            worksheet.mergeCells('A' + temp);
            worksheet.getCell('A' + temp).value = i + 1;

            worksheet.mergeCells('B' + temp);
            worksheet.getCell('B' + temp).value = customer[i].cdate;

            worksheet.mergeCells('C' + temp);
            worksheet.getCell('C' + temp).value = customer[i].dslno2.dFirstName;

            worksheet.mergeCells('D' + temp);
            worksheet.getCell('D' + temp).value = customer[i].pslno2.patientLname;

            worksheet.mergeCells('E' + temp);
            worksheet.getCell('E' + temp).value = customer[i].age;

            worksheet.mergeCells('F' + temp);
            worksheet.getCell('F' + temp).value = customer[i].sex;

            worksheet.mergeCells('G' + temp);
            worksheet.getCell('G' + temp).value = customer[i].diagnosis;

            worksheet.mergeCells('H' + temp);
            worksheet.getCell('H' + temp).value = "";

            worksheet.mergeCells('I' + temp);
            worksheet.getCell('I' + temp).value = customer[i].fees;

            worksheet.mergeCells('J' + temp);
            worksheet.getCell('J' + temp).value = customer[i].balance;

            worksheet.mergeCells('K' + temp);
            worksheet.getCell('K' + temp).value = customer[i].fstatus;

        }

        return workbook.xlsx.write(response).then(function () {
            response["status"](200).end();
        });
    }
}