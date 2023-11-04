import { Patientmaster001mb } from "src/entity/Patientmaster001mb";

export class PatientMasterDTO {
    slNo: number;
    unitslno: number;
    pcPatientId: string;
    pcPatientFname: string;
    pcPatientLname: string;
    displayLname: string;
    treatment: string;
    diagnosis: string;
    age: number;
    sex: string;
    address: string;
    phone: string;
    insertUser: string;
    insertDatetime: Date;
    updatedUser: string | null;
    updatedDatetime: Date | null;

    setProperties(patientmaster001mb: Patientmaster001mb) {
        this.slNo = patientmaster001mb.slNo;
        this.unitslno = patientmaster001mb.unitslno;
        this.pcPatientId = patientmaster001mb.pcPatientId;
        this.pcPatientFname = patientmaster001mb.pcPatientFname;
        this.pcPatientLname = patientmaster001mb.pcPatientLname;
        this.displayLname = patientmaster001mb.displayLname;
        this.treatment = patientmaster001mb.treatment;
        this.diagnosis = patientmaster001mb.diagnosis;
        this.age = patientmaster001mb.age;
        this.sex = patientmaster001mb.sex;
        this.address = patientmaster001mb.address;
        this.phone = patientmaster001mb.phone;
        this.insertUser = patientmaster001mb.insertUser;
        this.insertDatetime = patientmaster001mb.insertDatetime;
        this.updatedUser = patientmaster001mb.updatedUser;
        this.updatedDatetime = patientmaster001mb.updatedDatetime;
    }
}