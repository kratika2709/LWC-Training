declare module "@salesforce/apex/AccountList.getAccount" {
  export default function getAccount(): Promise<any>;
}
declare module "@salesforce/apex/AccountList.getAccountByParams" {
  export default function getAccountByParams(param: {PickRate: any}): Promise<any>;
}
declare module "@salesforce/apex/AccountList.getAccountBySearch" {
  export default function getAccountBySearch(param: {accName: any}): Promise<any>;
}
