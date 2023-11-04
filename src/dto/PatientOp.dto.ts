import { Patientop001mb } from "src/entity/Patientop001mb";

export class PatientOpDTO {
    slNo: number;
    unitslno: number;
    pslno: number;
    dslno: number;
    pname: string;
    age: number;
    sex: string;
    address: string;
    phone: string;
    diagnosis:string;
    fees:number;
    balance:number;
    fstatus:string;
    cdate: Date;
    rdate: Date;
    insertUser: string;
    insertDatetime: Date;
    updatedUser: string | null;
    updatedDatetime: Date | null;

    setProperties(patientop001mb: Patientop001mb) {
        this.slNo = patientop001mb.slNo;
    this.unitslno = patientop001mb.unitslno;
    this.pslno = patientop001mb.pslno;
    this.dslno = patientop001mb.dslno;
    this.pname = patientop001mb.pname;
    this.age = patientop001mb.age;
    this.sex = patientop001mb.sex;
    this.address = patientop001mb.address;
    this.phone = patientop001mb.phone;
    this.diagnosis = patientop001mb.diagnosis;
    this.fees = patientop001mb.fees;
    this.balance = patientop001mb.balance;
    this.fstatus = patientop001mb.fstatus;
    this.cdate = patientop001mb.cdate;
    this.rdate = patientop001mb.rdate;
    this.insertUser = patientop001mb.insertUser;
    this.insertDatetime = patientop001mb.insertDatetime;
    this.updatedUser = patientop001mb.updatedUser;
    this.updatedDatetime = patientop001mb.updatedDatetime;
    }
}