import { Dayilyexpenses001mb } from "src/entity/Dayilyexpenses001mb";

export class DayilyexpensesDTO {
    slNo:number;
    unitslno:number;
    name:string;
    amount:number;
    notes:string;
    date:Date;
    insertUser: string;
    insertDatetime: Date;
    updatedUser: string | null;
    updatedDatetime: Date | null;

    setProperties(dayilyexpenses001mb: Dayilyexpenses001mb) {
        this.slNo = dayilyexpenses001mb.slNo;
        this.unitslno = dayilyexpenses001mb.unitslno;
        this.name = dayilyexpenses001mb.name;
        this.notes = dayilyexpenses001mb.notes;
        this.amount = dayilyexpenses001mb.amount;
        this.date = dayilyexpenses001mb.date;
        this.insertUser = dayilyexpenses001mb.insertUser;
        this.insertDatetime = dayilyexpenses001mb.insertDatetime;
        this.updatedUser = dayilyexpenses001mb.updatedUser;
        this.updatedDatetime = dayilyexpenses001mb.updatedDatetime;
      }
}