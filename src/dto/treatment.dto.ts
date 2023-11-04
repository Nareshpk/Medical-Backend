import { Treatment001mb } from "src/entity/Treatment001mb";

export class TreatmenttDTO {
    slNo: number;
    unitslno: number;
    treatment: string;
    insertUser: string;
    insertDatetime: Date;
    updatedUser: string | null;
    updatedDatetime: Date | null;

    setProperties(treatment001mb: Treatment001mb) {
        this.slNo = treatment001mb.slNo;
        this.unitslno = treatment001mb.unitslno;
        this.treatment = treatment001mb.treatment;
        this.insertUser = treatment001mb.insertUser;
        this.insertDatetime = treatment001mb.insertDatetime;
        this.updatedUser = treatment001mb.updatedUser;
        this.updatedDatetime = treatment001mb.updatedDatetime;
    }
}