import { Monthlyexpenses001mb } from "src/entity/Monthlyexpenses001mb";


export class MonthlyexpensesDTO {
    slNo:number;
    unitslno:number;
    mname:string;
    mamount:number;
    mnotes:string;
    mdate:Date;
    insertUser: string;
    insertDatetime: Date;
    updatedUser: string | null;
    updatedDatetime: Date | null;

    setProperties(monthlyexpenses: Monthlyexpenses001mb) {
        this.slNo = monthlyexpenses.slNo;
        this.unitslno = monthlyexpenses.unitslno;
        this.mname = monthlyexpenses.mname;
        this.mnotes = monthlyexpenses.mnotes;
        this.mamount = monthlyexpenses.mamount;
        this.mdate = monthlyexpenses.mdate;
        this.insertUser = monthlyexpenses.insertUser;
        this.insertDatetime = monthlyexpenses.insertDatetime;
        this.updatedUser = monthlyexpenses.updatedUser;
        this.updatedDatetime = monthlyexpenses.updatedDatetime;
      }
}