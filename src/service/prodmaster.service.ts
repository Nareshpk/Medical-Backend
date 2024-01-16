import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { ProdmasterDTO } from "src/dto/Prodmaster.dto";
import { Prodmaster001mb } from "src/entity/Prodmaster001mb";
import { Repository, getManager } from "typeorm";

@Injectable()
export class ProdmasterService {
    constructor(
        @InjectRepository(Prodmaster001mb) private readonly  prodmasterRepository: Repository< Prodmaster001mb>) {
    }

    async create( prodmasterDTO:  ProdmasterDTO): Promise< Prodmaster001mb> {
        const  prodmaster001mb = new  Prodmaster001mb();
        prodmaster001mb.setProperties( prodmasterDTO);
        return this. prodmasterRepository.save( prodmaster001mb);
    }

    async update( prodmasterDTO:  ProdmasterDTO): Promise< Prodmaster001mb> {
        const  prodmaster001mb = new  Prodmaster001mb();
        prodmaster001mb.setProperties(prodmasterDTO);
        await this. prodmasterRepository.update({ slNo:  prodmaster001mb.slNo },  prodmaster001mb);
        return  prodmaster001mb;
    }

    async findAll(unitslno: any): Promise< Prodmaster001mb[]> {
        return await this. prodmasterRepository.find({ order: { slNo: "DESC" },where: { unitslno: unitslno } })
    }

    async getCount(): Promise<string> {
        const entityManager = getManager();
        let result = await getManager().query(
          "select count(*) as row from Prodmaster001mb",
          ["row"]
        );
        var string = JSON.stringify(result);
        return string;
      }


    findOne(id: number): Promise< Prodmaster001mb> {
        return this. prodmasterRepository.findOne(id);
    }

    async remove(id: string): Promise<void> {
        await this. prodmasterRepository.delete(id);
    }
}