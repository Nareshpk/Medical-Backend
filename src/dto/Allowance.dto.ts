import { Allowance001mb } from "src/entity/Allowance001mb";

export class AllowanceDTO {
    slNo: number;
    unitslno: number;
    sslno: number;
    staffName: string;
    bikeNo: string;
    travelDurection: string;
    km: string;
    petrolePaidAmount: string;
    byingPetroleAmount: string;
    balance: string;
    reBalanceAmount: string;
    date: Date;
    insertUser: string;
    insertDatetime: Date;
    updatedUser: string | null;
    updatedDatetime: Date | null;

    setProperties(allowance001mb: Allowance001mb) {
        this.slNo = allowance001mb.slNo;
        this.unitslno = allowance001mb.unitslno;
        this.sslno = allowance001mb.sslno;
        this.staffName = allowance001mb.staffName;
        this.bikeNo = allowance001mb.bikeNo;
        this.travelDurection = allowance001mb.travelDurection;
        this.km = allowance001mb.km;
        this.petrolePaidAmount = allowance001mb.petrolePaidAmount;
        this.byingPetroleAmount = allowance001mb.byingPetroleAmount;
        this.balance = allowance001mb.balance;
        this.reBalanceAmount = allowance001mb.reBalanceAmount;
        this.date = allowance001mb.date;
        this.insertUser = allowance001mb.insertUser;
        this.insertDatetime = allowance001mb.insertDatetime;
        this.updatedUser = allowance001mb.updatedUser;
        this.updatedDatetime = allowance001mb.updatedDatetime;
    }
}