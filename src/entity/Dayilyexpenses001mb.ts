import { DayilyexpensesDTO } from "src/dto/dayilyexpenses.dto";
import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity("dayilyexpenses001mb", { schema: "medical" })
export class Dayilyexpenses001mb {
  @PrimaryGeneratedColumn({ type: "int", name: "sl_no" })
  slNo: number;

  @Column("int", { name: "unitslno" })
  unitslno: number;

  @Column("varchar", { name: "name", length: 40 })
  name: string;

  @Column("varchar", { name: "notes",  length: 40 })
  notes: string;

  @Column("int", { name: "amount" })
  amount: number;

  @Column("datetime", { name: "date" })
  date: Date;

  @Column("varchar", { name: "insert_user", length: 40 })
  insertUser: string;

  @Column("datetime", { name: "insert_datetime" })
  insertDatetime: Date;

  @Column("varchar", { name: "updated_user", nullable: true, length: 40 })
  updatedUser: string | null;

  @Column("datetime", { name: "updated_datetime", nullable: true })
  updatedDatetime: Date | null;

  setProperties(dayilyexpensesDTO: DayilyexpensesDTO) {
    this.slNo = dayilyexpensesDTO.slNo;
    this.unitslno = dayilyexpensesDTO.unitslno;
    this.name = dayilyexpensesDTO.name;
    this.notes = dayilyexpensesDTO.notes;
    this.amount = dayilyexpensesDTO.amount;
    this.date = dayilyexpensesDTO.date;
    this.insertUser = dayilyexpensesDTO.insertUser;
    this.insertDatetime = dayilyexpensesDTO.insertDatetime;
    this.updatedUser = dayilyexpensesDTO.updatedUser;
    this.updatedDatetime = dayilyexpensesDTO.updatedDatetime;
  }
}
