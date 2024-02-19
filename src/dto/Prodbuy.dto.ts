import { Prodbuy001mb } from "src/entity/Prodbuy001mb";

export class ProdbuyDTO {
    slNo: number;
    unitslno: number;
    date: Date;
    total:string;
    proSlno: number;
    prodPrice: string;
    qty: string;
    insertUser: string;
    insertDatetime: Date;
    updatedUser: string | null;
    updatedDatetime: Date | null;

    setProperties(prodbuy001mb: Prodbuy001mb) {
        this.slNo = prodbuy001mb.slNo;
        this.unitslno = prodbuy001mb.unitslno;
        this.date =prodbuy001mb.date;
        this.total = prodbuy001mb.total;
        this.proSlno = prodbuy001mb.proSlno;
        this.prodPrice = prodbuy001mb.prodPrice;
        this.qty = prodbuy001mb.qty;
        this.insertUser = prodbuy001mb.insertUser;
        this.insertDatetime = prodbuy001mb.insertDatetime;
        this.updatedUser = prodbuy001mb.updatedUser;
        this.updatedDatetime = prodbuy001mb.updatedDatetime;
    }
}