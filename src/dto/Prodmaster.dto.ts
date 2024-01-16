import { Prodmaster001mb } from "src/entity/Prodmaster001mb";

export class ProdmasterDTO {
    slNo: number;
    unitslno: number;
    prodId: string;
    prodName: string;
    prodPrice: string;
    qty: string;
    insertUser: string;
    insertDatetime: Date;
    updatedUser: string | null;
    updatedDatetime: Date | null;

    setProperties(prodmaster001mb: Prodmaster001mb) {
        this.slNo = prodmaster001mb.slNo;
        this.unitslno = prodmaster001mb.unitslno;
        this.prodId = prodmaster001mb.prodId;
        this.prodName = prodmaster001mb.prodName;
        this.prodPrice = prodmaster001mb.prodPrice;
        this.qty = prodmaster001mb.qty;
        this.insertUser = prodmaster001mb.insertUser;
        this.insertDatetime = prodmaster001mb.insertDatetime;
        this.updatedUser = prodmaster001mb.updatedUser;
        this.updatedDatetime = prodmaster001mb.updatedDatetime;
    }
}