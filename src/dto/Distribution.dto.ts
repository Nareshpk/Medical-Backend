import { Distribution001mb } from "src/entity/Distribution001mb";

export class DistributionDTO {
    slNo: number;
    unitslno: number;
    prodslno:number;
    clinicslno:number;
    date: Date;
    qty: string;
    insertUser: string;
    insertDatetime: Date;
    updatedUser: string | null;
    updatedDatetime: Date | null;

    setProperties(distribution001mb: Distribution001mb) {
        this.slNo = distribution001mb.slNo;
        this.unitslno = distribution001mb.unitslno;
        this.date =distribution001mb.date;
        this.prodslno = distribution001mb.prodslno;
        this.clinicslno = distribution001mb.clinicslno;
        this.qty = distribution001mb.qty;
        this.insertUser = distribution001mb.insertUser;
        this.insertDatetime = distribution001mb.insertDatetime;
        this.updatedUser = distribution001mb.updatedUser;
        this.updatedDatetime = distribution001mb.updatedDatetime;
    }
}