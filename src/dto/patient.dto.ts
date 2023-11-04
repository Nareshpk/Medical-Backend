import { Patient001mb } from "src/entity/Patient001mb";

export class PatientDTO {
    slNo: number;
    unitslno: number;
    patientId: string;
    patientFname: string;
    patientLname: string;
    age: number;
    sex: string;
    address: string;
    phone: string;
    insertUser: string;
    insertDatetime: Date;
    updatedUser: string | null;
    updatedDatetime: Date | null;

    setProperties(patient001mb: Patient001mb) {
        this.slNo = patient001mb.slNo;
        this.unitslno = patient001mb.unitslno;
        this.patientId = patient001mb.patientId;
        this.patientFname = patient001mb.patientFname;
        this.patientLname = patient001mb.patientLname;
        this.age = patient001mb.age;
        this.sex = patient001mb.sex;
        this.address = patient001mb.address;
        this.phone = patient001mb.phone;
        this.insertUser = patient001mb.insertUser;
        this.insertDatetime = patient001mb.insertDatetime;
        this.updatedUser = patient001mb.updatedUser;
        this.updatedDatetime = patient001mb.updatedDatetime;
    }
}