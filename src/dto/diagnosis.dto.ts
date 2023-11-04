import { Diagnosis001mb } from "src/entity/Diagnosis001mb";
import { Treatment001mb } from "src/entity/Treatment001mb";

export class DiagnosisDTO {
    slNo: number;
    unitslno: number;
    diagnosis: string;
    insertUser: string;
    insertDatetime: Date;
    updatedUser: string | null;
    updatedDatetime: Date | null;

    setProperties(diagnosis001mb: Diagnosis001mb) {
        this.slNo = diagnosis001mb.slNo;
        this.unitslno = diagnosis001mb.unitslno;
        this.diagnosis = diagnosis001mb.diagnosis;
        this.insertUser = diagnosis001mb.insertUser;
        this.insertDatetime = diagnosis001mb.insertDatetime;
        this.updatedUser = diagnosis001mb.updatedUser;
        this.updatedDatetime = diagnosis001mb.updatedDatetime;
    }
}