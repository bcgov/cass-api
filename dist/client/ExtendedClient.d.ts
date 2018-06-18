/// <reference types="superagent" />
import moment from 'moment';
import * as SA from 'superagent';
import Client from './Client';
import { Assignment, Courthouse, Courtroom, Duty, DutyRecurrence, Region, Run, Sheriff, Shift, DutyImportDefaultsRequest, MultipleShiftUpdateRequest } from './models';
export declare type DateType = string | Date | moment.Moment | number;
export declare type SuperAgentRequestInterceptor = (req: SA.SuperAgentRequest) => SA.SuperAgentRequest;
export default class ExtendedClient extends Client {
    private _requestInterceptor?;
    private timezoneOffset?;
    constructor(baseUrl: string);
    private interceptRequest(req);
    requestInterceptor: SuperAgentRequestInterceptor;
    protected processError(err: any): Error;
    private nullOn404<T>(method);
    GetRegionById(id: string): Promise<Region>;
    GetCourthouseById(id: string): Promise<Courthouse>;
    GetSheriffById(id: string): Promise<Sheriff>;
    GetSheriffs(courthouseId?: string): Promise<Sheriff[]>;
    GetCourtroomById(id: string): Promise<Courtroom>;
    GetCourtrooms(courthouseId?: string): Promise<Courtroom[]>;
    GetAssignmentById(id: string): Promise<Assignment>;
    GetAssignments(courthouseId?: string, startDate?: DateType, endDate?: DateType): Promise<Assignment[]>;
    GetRuns(courthouseId?: string): Promise<Run[]>;
    GetRunById(id: string): Promise<Run>;
    GetShifts(courthouseId?: string): Promise<Shift[]>;
    GetShiftById(id: string): Promise<Shift>;
    GetDutyRecurrenceById(id: string): Promise<DutyRecurrence>;
    GetDutyRecurrences(startDate?: DateType, endDate?: DateType): Promise<DutyRecurrence[]>;
    GetDutyById(id: string): Promise<Duty>;
    GetSheriffDutyById(id: string): Promise<Duty>;
    private ensureTimeZone(...dutyRecurrences);
    CreateDutyRecurrence(model: DutyRecurrence): Promise<DutyRecurrence>;
    UpdateDutyRecurrence(id: string, model: DutyRecurrence): Promise<DutyRecurrence>;
    CreateAssignment(model: Assignment): Promise<Assignment>;
    UpdateAssignment(id: string, model: Assignment): Promise<Assignment>;
    UpdateMultipleShifts(model: MultipleShiftUpdateRequest): Promise<Shift[]>;
    ImportDefaultDuties(request: DutyImportDefaultsRequest): Promise<Duty[]>;
}