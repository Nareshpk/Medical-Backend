import { Patientpc001mb } from "src/entity/Patientpc001mb";

export class PatientPcDTO {
    slNo: number;
    unitslno: number;
    pcslno: number;
    dcslno: number;
    pname: string;
    age: number;
    sex: string;
    address: string;
    phone: string;
    diagnosis: string;
    treatment: string;
    fees: number;
    balance: number;
    fstatus: string;
    date: Date;
    insertUser: string;
    insertDatetime: Date;
    updatedUser: string | null;
    updatedDatetime: Date | null;

    setProperties(patientpc001mb: Patientpc001mb) {
        this.slNo = patientpc001mb.slNo;
        this.unitslno = patientpc001mb.unitslno;
        this.dcslno = patientpc001mb.dcslno;
        this.dcslno = patientpc001mb.dcslno;
        this.pname = patientpc001mb.pname;
        this.age = patientpc001mb.age;
        this.sex = patientpc001mb.sex;
        this.address = patientpc001mb.address;
        this.phone = patientpc001mb.phone;
        this.diagnosis = patientpc001mb.diagnosis;
        this.treatment = patientpc001mb.treatment;
        this.fees = patientpc001mb.fees;
        this.balance = patientpc001mb.balance;
        this.fstatus = patientpc001mb.fstatus;
        this.date = patientpc001mb.date;
        this.insertUser = patientpc001mb.insertUser;
        this.insertDatetime = patientpc001mb.insertDatetime;
        this.updatedUser = patientpc001mb.updatedUser;
        this.updatedDatetime = patientpc001mb.updatedDatetime;
    }
}