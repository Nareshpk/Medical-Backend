import { Injectable, Req, Res } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { Between, LessThanOrEqual, Repository, getManager } from "typeorm";
import { Response } from "express";
import { createReadStream } from "fs";
import { Request } from "supertest";
import { format } from "date-fns";
import { Monthlyexpenses001mb } from "src/entity/Monthlyexpenses001mb";
import { Dayilyexpenses001mb } from "src/entity/Dayilyexpenses001mb";
import { Patientpc001mb } from "src/entity/Patientpc001mb";
import { Patientop001mb } from "src/entity/Patientop001mb";
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
export class ExceldownloadService {
    constructor(
        @InjectRepository(Patientop001mb) private readonly patientopRepository: Repository<Patientop001mb>,
        @InjectRepository(Patientpc001mb) private readonly patientpcRepository: Repository<Patientpc001mb>,
        @InjectRepository(Dayilyexpenses001mb) private readonly dayilyexpensesRepository: Repository<Dayilyexpenses001mb>,
        @InjectRepository(Monthlyexpenses001mb) private readonly monthlyexpensesRepository: Repository<Monthlyexpenses001mb>
    ) {
    }

    async downloadExcel(startdate: any, enddate: any, unitslno: any, @Req() request: Request, @Res() response: Response) {
        //    gte
        // Op.lte
        // console.log("startdate", startdate);

        let patientop = await this.patientopRepository.find({ relations: ["pslno2", "dslno2"], where: { unitslno: unitslno } })
        let patientpc = await this.patientpcRepository.find({ relations: ["pcslno2", "dcslno2"], where: { unitslno: unitslno } })
        let dayilyexpenses = await this.dayilyexpensesRepository.find({ where: { unitslno: unitslno } });
        let monthlyexpenses = await this.monthlyexpensesRepository.find({ where: { unitslno: unitslno } });

        let patientopfindall = patientop.filter((item) => {
            return new Date(startdate) <= new Date(item.cdate) && new Date(enddate) >= new Date(item.cdate)
        });

        let patientpcfindall = patientpc.filter((item) => {
            return new Date(startdate) <= new Date(item.date) && new Date(enddate) >= new Date(item.date)
        });

        let dayilyfindall = dayilyexpenses.filter((item) => {
            return new Date(startdate) <= new Date(item.date) && new Date(enddate) >= new Date(item.date)
        });

        let monthlyfindall = monthlyexpenses.filter((item) => {
            return new Date(startdate) <= new Date(item.mdate) && new Date(enddate) >= new Date(item.mdate)
        });

        var array = [patientopfindall.length, patientpcfindall.length, dayilyfindall.length, monthlyfindall.length];

        let get_array = array.sort(function (a, b) { return b - a });
        let get_length = get_array[0]
        let get_oppatient_amount = 0
        let get_oppatient_balance = 0
        for (let i = 0; i < patientopfindall.length; i++) {
            get_oppatient_amount = get_oppatient_amount + patientopfindall[i].fees
            get_oppatient_balance = get_oppatient_balance + patientopfindall[i].balance
        }

        let get_pcpatient_amount = 0
        let get_pcpatient_balance = 0
        for (let i = 0; i < patientpcfindall.length; i++) {
            get_pcpatient_amount = get_pcpatient_amount + patientpcfindall[i].fees
            get_pcpatient_balance = get_pcpatient_balance + patientpcfindall[i].balance
        }

        let get_daily_expence = 0
        for (let i = 0; i < dayilyfindall.length; i++) {
            get_daily_expence = get_daily_expence + dayilyfindall[i].amount
        }

        let get_monthly_expence = 0
        for (let i = 0; i < monthlyfindall.length; i++) {
            get_monthly_expence = get_monthly_expence + monthlyfindall[i].mamount
        }

        let workbook = new excel.Workbook();

        let worksheet = workbook.addWorksheet("Purchase-Order-Reports");
        worksheet.getRow(1).height = 30;
        worksheet.getRow(2).height = 30;
        worksheet.getRow(3).height = 30;
        worksheet.getRow(4).height = 30;
        worksheet.getRow(5).height = 30;
        worksheet.getRow(6).height = 30;
        worksheet.getRow(7).height = 30;
        worksheet.getRow(8).height = 30;
        worksheet.getRow(9).height = 30;
        worksheet.getRow(10).height = 30;
        worksheet.getRow(11).height = 30;
        worksheet.getRow(12).height = 30;
        worksheet.getRow(13).height = 30;
        worksheet.getRow(14).height = 30;
        worksheet.columns = [
            { key: "A", width: 20.0 },
            { key: "B", width: 20.0 },
            { key: "C", width: 20.0 },
            { key: "D", width: 20.0 },
            { key: "E", width: 20.0 },
            { key: "F", width: 20.0 },
            { key: "G", width: 20.0 },
            { key: "H", width: 20.0 },
            { key: "I", width: 20.0 },
            { key: "J", width: 20.0 },
            { key: "K", width: 20.0 },
            { key: "L", width: 20.0 },
            { key: "M", width: 20.0 },
            { key: "N", width: 20.0 },
            { key: "O", width: 20.0 },
            { key: "P", width: 20.0 },
            { key: "Q", width: 20.0 },
            { key: "R", width: 20.0 },
            { key: "S", width: 20.0 },
            { key: "T", width: 20.0 },
            { key: "U", width: 20.0 },
        ];

        worksheet.mergeCells("A1");
        worksheet.getCell("A1").value = "SL No";
        worksheet.getCell("A1").font = {
            size: 12,
            bold: true,
        };
        worksheet.getCell("A1").alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells("B1");
        worksheet.getCell("B1").value = "Date";
        worksheet.getCell("B1").font = {
            size: 12,
            bold: true,
        };
        worksheet.getCell("B1").alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells("C1");
        worksheet.getCell("C1").value = "Doctor Name";
        worksheet.getCell("C1").font = {
            size: 12,
            bold: true,
        };
        worksheet.getCell("C1").alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells("D1");
        worksheet.getCell("D1").value = "Patient Name";
        worksheet.getCell("D1").font = {
            size: 12,
            bold: true,
        };
        worksheet.getCell("D1").alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells("E1");
        worksheet.getCell("E1").value = "Fees";
        worksheet.getCell("E1").font = {
            size: 12,
            bold: true,
        };
        worksheet.getCell("E1").alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells("F1");
        worksheet.getCell("F1").value = "Balance";
        worksheet.getCell("F1").font = {
            size: 12,
            bold: true,
        };
        worksheet.getCell("F1").alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells("G1");
        worksheet.getCell("G1").value = "Status";
        worksheet.getCell("G1").font = {
            size: 12,
            bold: true,
        };
        worksheet.getCell("G1").alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells("H1");
        worksheet.getCell("H1").value = "Date";
        worksheet.getCell("H1").font = {
            size: 12,
            bold: true,
        };
        worksheet.getCell("H1").alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells("I1");
        worksheet.getCell("I1").value = "Doctor Name";
        worksheet.getCell("I1").font = {
            size: 12,
            bold: true,
        };
        worksheet.getCell("I1").alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells("J1");
        worksheet.getCell("J1").value = "Patient Name";
        worksheet.getCell("J1").font = {
            size: 12,
            bold: true,
        };
        worksheet.getCell("J1").alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells("K1");
        worksheet.getCell("K1").value = "Fees";
        worksheet.getCell("K1").font = {
            size: 12,
            bold: true,
        };
        worksheet.getCell("K1").alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells("L1");
        worksheet.getCell("L1").value = "Balance";
        worksheet.getCell("L1").font = {
            size: 12,
            bold: true,
        };
        worksheet.getCell("L1").alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells("M1");
        worksheet.getCell("M1").value = "Status";
        worksheet.getCell("M1").font = {
            size: 12,
            bold: true,
        };
        worksheet.getCell("M1").alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells("N1");
        worksheet.getCell("N1").value = "Daily Expenses Date";
        worksheet.getCell("N1").font = {
            size: 12,
            bold: true,
        };
        worksheet.getCell("N1").alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells("O1");
        worksheet.getCell("O1").value = "Daily Expenses Person Name";
        worksheet.getCell("O1").font = {
            size: 12,
            bold: true,
        };
        worksheet.getCell("O1").alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells("P1");
        worksheet.getCell("P1").value = "Daily Expenses Name";
        worksheet.getCell("P1").font = {
            size: 12,
            bold: true,
        };
        worksheet.getCell("P1").alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells("Q1");
        worksheet.getCell("Q1").value = "Amount";
        worksheet.getCell("Q1").font = {
            size: 12,
            bold: true,
        };
        worksheet.getCell("Q1").alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells("R1");
        worksheet.getCell("R1").value = "Monthly Expenses Date";
        worksheet.getCell("R1").font = {
            size: 12,
            bold: true,
        };
        worksheet.getCell("R1").alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells("S1");
        worksheet.getCell("S1").value = "Monthly Expenses Person Name";
        worksheet.getCell("S1").font = {
            size: 12,
            bold: true,
        };
        worksheet.getCell("S1").alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells("T1");
        worksheet.getCell("T1").value = "Monthly Expenses Name";
        worksheet.getCell("T1").font = {
            size: 12,
            bold: true,
        };
        worksheet.getCell("T1").alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells("U1");
        worksheet.getCell("U1").value = "Amount";
        worksheet.getCell("U1").font = {
            size: 12,
            bold: true,
        };
        worksheet.getCell("U1").alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells(`A${get_length + 3}`);
        worksheet.getCell(`A${get_length + 3}`).value = "Total Amount";
        worksheet.getCell(`A${get_length + 3}`).font = {
            size: 14,
            bold: true,
        };
        worksheet.getCell(`A${get_length + 3}`).alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells(`E${get_length + 3}`);
        worksheet.getCell(`E${get_length + 3}`).value = get_oppatient_amount;
        worksheet.getCell(`E${get_length + 3}`).font = {
            size: 14,
            bold: true,
        };
        worksheet.getCell(`E${get_length + 3}`).alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells(`F${get_length + 3}`);
        worksheet.getCell(`F${get_length + 3}`).value = get_oppatient_balance;
        worksheet.getCell(`F${get_length + 3}`).font = {
            size: 14,
            bold: true,
        };
        worksheet.getCell(`F${get_length + 3}`).alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };


        worksheet.mergeCells(`H${get_length + 3}`);
        worksheet.getCell(`H${get_length + 3}`).value = "Total Amount";
        worksheet.getCell(`H${get_length + 3}`).font = {
            size: 14,
            bold: true,
        };
        worksheet.getCell(`H${get_length + 3}`).alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells(`K${get_length + 3}`);
        worksheet.getCell(`K${get_length + 3}`).value = get_pcpatient_amount;
        worksheet.getCell(`K${get_length + 3}`).font = {
            size: 14,
            bold: true,
        };
        worksheet.getCell(`K${get_length + 3}`).alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells(`L${get_length + 3}`);
        worksheet.getCell(`L${get_length + 3}`).value = get_pcpatient_balance;
        worksheet.getCell(`L${get_length + 3}`).font = {
            size: 14,
            bold: true,
        };
        worksheet.getCell(`L${get_length + 3}`).alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };


        worksheet.mergeCells(`N${get_length + 3}`);
        worksheet.getCell(`N${get_length + 3}`).value = "Total Amount";
        worksheet.getCell(`N${get_length + 3}`).font = {
            size: 14,
            bold: true,
        };
        worksheet.getCell(`N${get_length + 3}`).alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells(`Q${get_length + 3}`);
        worksheet.getCell(`Q${get_length + 3}`).value = get_daily_expence;
        worksheet.getCell(`Q${get_length + 3}`).font = {
            size: 14,
            bold: true,
        };
        worksheet.getCell(`Q${get_length + 3}`).alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells(`R${get_length + 3}`);
        worksheet.getCell(`R${get_length + 3}`).value = "Total Amount";
        worksheet.getCell(`R${get_length + 3}`).font = {
            size: 14,
            bold: true,
        };
        worksheet.getCell(`R${get_length + 3}`).alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };

        worksheet.mergeCells(`U${get_length + 3}`);
        worksheet.getCell(`U${get_length + 3}`).value = get_monthly_expence;
        worksheet.getCell(`U${get_length + 3}`).font = {
            size: 14,
            bold: true,
        };
        worksheet.getCell(`U${get_length + 3}`).alignment = {
            vertical: "middle",
            horizontal: "center",
            wraptext: true,
        };



        for (let i = 0; i < patientopfindall?.length; i++) {
            let temp = i + 2;

            worksheet.mergeCells("A" + temp);
            worksheet.getCell("A" + temp).value =
                i + 1;
            worksheet.getCell("A" + temp).font = {
                size: 12,
                bold: true,
            };
            worksheet.getCell("A" + temp).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };


            worksheet.mergeCells("B" + temp);
            worksheet.getCell("B" + temp).value = patientopfindall[i].cdate;
            worksheet.getCell("B" + temp).font = {
                size: 12,
                bold: true,
            };
            worksheet.getCell("B" + temp).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells("C" + temp);
            worksheet.getCell("C" + temp).value =
                patientopfindall[i].dslno2.dFirstName;
            worksheet.getCell("C" + temp).font = {
                size: 12,
                bold: true,
            };
            worksheet.getCell("C" + temp).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells("D" + temp);
            worksheet.getCell("D" + temp).value =
                patientopfindall[i].pslno2.patientFname;
            worksheet.getCell("D" + temp).font = {
                size: 12,
                bold: true,
            };
            worksheet.getCell("D" + temp).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells("E" + temp);
            worksheet.getCell("E" + temp).value =
                patientopfindall[i].fees;
            worksheet.getCell("E" + temp).font = {
                size: 12,
                bold: true,
            };
            worksheet.getCell("E" + temp).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells("F" + temp);
            worksheet.getCell("F" + temp).value =
                patientopfindall[i].balance;
            worksheet.getCell("F" + temp).font = {
                size: 12,
                bold: true,
            };
            worksheet.getCell("F" + temp).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells("G" + temp);
            worksheet.getCell("G" + temp).value =
                patientopfindall[i].fstatus;
            worksheet.getCell("G" + temp).font = {
                size: 12,
                bold: true,
            };
            worksheet.getCell("G" + temp).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };
        }

        for (let i = 0; i < patientpcfindall?.length; i++) {
            let temp = i + 2;

            worksheet.mergeCells("H" + temp);
            worksheet.getCell("H" + temp).value = patientpcfindall[i].date;
            worksheet.getCell("H" + temp).font = {
                size: 12,
                bold: true,
            };
            worksheet.getCell("H" + temp).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells("I" + temp);
            worksheet.getCell("I" + temp).value =
                patientpcfindall[i].dcslno2.dFirstName;
            worksheet.getCell("I" + temp).font = {
                size: 12,
                bold: true,
            };
            worksheet.getCell("I" + temp).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells("J" + temp);
            worksheet.getCell("J" + temp).value =
                patientpcfindall[i].pcslno2.displayLname;
            worksheet.getCell("J" + temp).font = {
                size: 12,
                bold: true,
            };
            worksheet.getCell("J" + temp).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells("K" + temp);
            worksheet.getCell("K" + temp).value =
                patientpcfindall[i].fees;
            worksheet.getCell("K" + temp).font = {
                size: 12,
                bold: true,
            };
            worksheet.getCell("K" + temp).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells("L" + temp);
            worksheet.getCell("L" + temp).value =
                patientpcfindall[i].balance;
            worksheet.getCell("L" + temp).font = {
                size: 12,
                bold: true,
            };
            worksheet.getCell("L" + temp).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells("M" + temp);
            worksheet.getCell("M" + temp).value =
                patientpcfindall[i].fstatus;
            worksheet.getCell("M" + temp).font = {
                size: 12,
                bold: true,
            };
            worksheet.getCell("M" + temp).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };
        }

        for (let i = 0; i < dayilyfindall.length; i++) {
            let temp = i + 2;

            worksheet.mergeCells("N" + temp);
            worksheet.getCell("N" + temp).value = dayilyfindall[i].date;
            worksheet.getCell("N" + temp).font = {
                size: 12,
                bold: true,
            };
            worksheet.getCell("N" + temp).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells("O" + temp);
            worksheet.getCell("O" + temp).value =
                dayilyfindall[i].name;
            worksheet.getCell("O" + temp).font = {
                size: 12,
                bold: true,
            };
            worksheet.getCell("O" + temp).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells("P" + temp);
            worksheet.getCell("P" + temp).value =
                dayilyfindall[i].notes;
            worksheet.getCell("P" + temp).font = {
                size: 12,
                bold: true,
            };
            worksheet.getCell("P" + temp).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells("Q" + temp);
            worksheet.getCell("Q" + temp).value =
                dayilyfindall[i].amount;
            worksheet.getCell("Q" + temp).font = {
                size: 12,
                bold: true,
            };
            worksheet.getCell("Q" + temp).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };
        }

        for (let i = 0; i < monthlyfindall.length; i++) {
            let temp = i + 2;

            worksheet.mergeCells("N" + temp);
            worksheet.getCell("N" + temp).value = monthlyfindall[i].mdate;
            worksheet.getCell("N" + temp).font = {
                size: 12,
                bold: true,
            };
            worksheet.getCell("N" + temp).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells("O" + temp);
            worksheet.getCell("O" + temp).value =
                monthlyfindall[i].mname;
            worksheet.getCell("O" + temp).font = {
                size: 12,
                bold: true,
            };
            worksheet.getCell("O" + temp).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells("P" + temp);
            worksheet.getCell("P" + temp).value =
                monthlyfindall[i].mnotes;
            worksheet.getCell("P" + temp).font = {
                size: 12,
                bold: true,
            };
            worksheet.getCell("P" + temp).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells("Q" + temp);
            worksheet.getCell("Q" + temp).value =
                monthlyfindall[i].mamount;
            worksheet.getCell("Q" + temp).font = {
                size: 12,
                bold: true,
            };
            worksheet.getCell("Q" + temp).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };
        }

        return workbook.xlsx.write(response).then(function () {
            response["status"](200).end();
        });

    }
}