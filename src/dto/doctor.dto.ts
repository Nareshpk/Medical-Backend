import { Doctor001mb } from "src/entity/Doctor001mb";

export class DoctorDTO {
    slNo: number;
    unitslno: number;
    dFirstName: string;
    dLastName: string;
    specialist: string;
    dateOfBirth: Date;
    email: string;
    contact: string;
    insertUser: string;
    insertDatetime: Date;
    updatedUser: string | null;
    updatedDatetime: Date | null;

    setProperties(doctor001mb: Doctor001mb) {
        this.slNo = doctor001mb.slNo;
        this.unitslno = doctor001mb.unitslno;
        this.dFirstName = doctor001mb.dFirstName;
        this.dLastName = doctor001mb.dLastName;
        this.specialist = doctor001mb.specialist;
        this.dateOfBirth = doctor001mb.dateOfBirth;
        this.email = doctor001mb.email;
        this.contact = doctor001mb.contact;
        this.insertUser = doctor001mb.insertUser;
        this.insertDatetime = doctor001mb.insertDatetime;
        this.updatedUser = doctor001mb.updatedUser;
        this.updatedDatetime = doctor001mb.updatedDatetime;
    }
}