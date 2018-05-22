/// <reference types="superagent" />
/*****************************AutoGenerated Code : Do not edit *******************************/
import * as superAgent from "superagent";
import { Assignment, Region, Courthouse, Sheriff, Courtroom, JailRoleCode, OtherAssignCode, WorkSectionCode, SheriffRankCode, Run, Shift, MultipleShiftUpdateRequest, DutyRecurrence, Duty, DutyImportDefaultsRequest, SheriffDuty } from "./models";
export default class Client {
    private _agent;
    errorProcessor: (error: any) => Error;
    constructor(_agent?: superAgent.SuperAgent<any>);
    readonly agent: superAgent.SuperAgent<any>;
    GetAssignments(courthouseId: string, startDate: string, endDate: string): Promise<Array<any>>;
    CreateAssignment(model: Assignment): Promise<Assignment>;
    GetAssignmentById(id: string): Promise<Assignment>;
    UpdateAssignment(id: string, model: Assignment): Promise<Assignment>;
    ExpireAssignment(id: string): Promise<void>;
    DeleteAssignment(id: string): Promise<void>;
    GetRegions(): Promise<Array<Region>>;
    CreateRegion(model: Region): Promise<Region>;
    GetRegionById(id: string): Promise<Region>;
    UpdateRegion(id: string, model: Region): Promise<Region>;
    DeleteRegion(id: string): Promise<void>;
    GetCourthouses(): Promise<Array<Courthouse>>;
    CreateCourthouse(model: Courthouse): Promise<Courthouse>;
    GetCourthouseById(id: string): Promise<Courthouse>;
    UpdateCourthouse(id: string, model: Courthouse): Promise<Courthouse>;
    DeleteCourthouse(id: string): Promise<void>;
    GetSheriffs(courthouseId: string): Promise<Array<Sheriff>>;
    CreateSheriff(model: Sheriff): Promise<Sheriff>;
    GetSheriffById(id: string): Promise<Sheriff>;
    UpdateSheriff(id: string, model: Sheriff): Promise<Sheriff>;
    DeleteSheriff(id: string): Promise<void>;
    GetCourtrooms(courthouseId: string): Promise<Array<Courtroom>>;
    CreateCourtroom(model: Courtroom): Promise<Courtroom>;
    GetCourtroomById(id: string): Promise<Courtroom>;
    UpdateCourtroom(id: string, model: Courtroom): Promise<Courtroom>;
    DeleteCourtroom(id: string): Promise<void>;
    GetJailRoleCodes(): Promise<Array<JailRoleCode>>;
    GetOtherAssignCodes(): Promise<Array<OtherAssignCode>>;
    GetWorkSectionCodes(): Promise<Array<WorkSectionCode>>;
    GetSheriffRankCodes(): Promise<Array<SheriffRankCode>>;
    GetRuns(courthouseId: string): Promise<Array<Run>>;
    CreateRun(model: Run): Promise<Run>;
    GetRunById(id: string): Promise<Run>;
    UpdateRun(id: string, model: Run): Promise<Run>;
    DeleteRun(id: string): Promise<void>;
    GetShifts(courthouseId: string): Promise<Array<Shift>>;
    CreateShift(model: Shift): Promise<Shift>;
    GetShiftById(id: string): Promise<Shift>;
    UpdateShift(id: string, model: Shift): Promise<Shift>;
    DeleteShift(id: string): Promise<void>;
    UpdateMultipleShifts(model: MultipleShiftUpdateRequest): Promise<Array<Shift>>;
    GetDutyRecurrences(startDate: string, endDate: string): Promise<Array<DutyRecurrence>>;
    CreateDutyRecurrence(model: DutyRecurrence): Promise<DutyRecurrence>;
    GetDutyRecurrenceById(id: string): Promise<DutyRecurrence>;
    UpdateDutyRecurrence(id: string, model: DutyRecurrence): Promise<DutyRecurrence>;
    ExpireDutyRecurrence(id: string): Promise<void>;
    DeleteDutyRecurrence(id: string): Promise<void>;
    GetDuties(): Promise<Array<any>>;
    CreateDuty(model: Duty): Promise<Duty>;
    GetDutyById(id: string): Promise<Duty>;
    UpdateDuty(id: string, model: Duty): Promise<Duty>;
    DeleteDuty(id: string): Promise<void>;
    ImportDefaultDuties(body: DutyImportDefaultsRequest): Promise<Array<Duty>>;
    GetSheriffDuties(): Promise<Array<SheriffDuty>>;
    CreateSheriffDuty(model: SheriffDuty): Promise<SheriffDuty>;
    GetSheriffDutyById(id: string): Promise<SheriffDuty>;
    UpdateSheriffDuty(id: string, model: SheriffDuty): Promise<SheriffDuty>;
    DeleteSheriffDuty(id: string): Promise<void>;
}
