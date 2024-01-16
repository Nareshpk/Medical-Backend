import { Customer001mb } from "src/entity/Customer001mb";

export class CustomerDTO {
    slNo: number;
    unitslno: number;
    prodslno:number;
    customerName:string;
    customerMobile:string;
    date: Date;
    qty: string;
    retailCost:string;
    customerPrice:string;
    profit:string;
    insertUser: string;
    insertDatetime: Date;
    updatedUser: string | null;
    updatedDatetime: Date | null;

    setProperties(customer001mb: Customer001mb) {
        this.slNo = customer001mb.slNo;
        this.unitslno = customer001mb.unitslno;
        this.date =customer001mb.date;
        this.prodslno = customer001mb.prodslno;
        this.customerName = customer001mb.customerName;
        this.customerMobile = customer001mb.customerMobile;
        this.qty = customer001mb.qty;
        this.retailCost = customer001mb.retailCost;
        this.customerPrice = customer001mb.customerPrice;
        this.profit = customer001mb.profit;
        this.insertUser = customer001mb.insertUser;
        this.insertDatetime = customer001mb.insertDatetime;
        this.updatedUser = customer001mb.updatedUser;
        this.updatedDatetime = customer001mb.updatedDatetime;
    }
}