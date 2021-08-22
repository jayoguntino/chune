// import 'package:flutter_dotenv/flutter_dotenv.dart';
// // import 'package:pay_by_verifi/models/authentication.dart';

// class API {
//   static String _baseURL = DotEnv().env['ENDPOINT'];

//   // save firebaseNotificationToken
//   static String saveToken = _baseURL + "mobile/token";

//   // auth endpoints
//   static String login = _baseURL + "login";
//   static String validate = _baseURL + "mobile/auth";
//   static String activate = _baseURL + "mobile/setup";
//   static String reset = _baseURL + "mobile/reset";
//   static String verifyToken(token) {
//     return _baseURL + "mobile/verify-token/" + token;
//   }

//   //update jobloss claim tangerine
//   static String updateJoblossClaim(userID) {
//     return _baseURL +
//         "safeguard/jobloss/update-employee-jobloss-claim-status/" +
//         userID;
//   }

//   static String sendVerificationCode = '${_baseURL}mobile/verification-token';
//   static String verifyCode = '${_baseURL}mobile/verify-code';

//   static String changePassword(userID) {
//     return _baseURL + "mobile/change-password/" + userID;
//   }

//   static String updatePassword(userID) {
//     return _baseURL + "change-password/" + userID;
//   }

//   // savings
//   static String savingDetails = _baseURL + "savings-details";
//   static String deleteSavings(id) => _baseURL + "savings-details/$id";
//   static String createSavings = _baseURL + "create-savings";

//   // payslips
//   static String payslip(page) {
//     return _baseURL + "payslip?perPage=10&page=$page";
//   }

//   static String getPayslip(id) {
//     return _baseURL + "payslip/$id";
//   }

//   //user
//   static String updateUserDetails(id) {
//     return _baseURL + "user/$id/personal";
//   }

//   static String getUserDetails(id) {
//     return _baseURL + "user/$id/";
//   }

//   static String getAllUserDetails(id) {
//     return _baseURL + "employee/$id";
//   }

//   static String changeAvatar(id) {
//     return _baseURL + "user/$id/avatar";
//   }

//   //Loans
//   static String advances = _baseURL + "employee/";
//   static String loans = _baseURL + "loans/";
//   static String loansOffer = loans + "offer";
//   static String loansBankAccounts = loans + "account";
//   static String applyForLoan = loans + "apply";
//   static String acceptTerms = loans + "terms";

//   static String loanEligibility(id) {
//     return advances + "$id/loan-eligibility";
//   }

//   static String getAdvanceRequests(id) {
//     return advances + "$id/loan-requests";
//   }

//   static String getOtherLoanRequests(id) {
//     return advances + "$id/other-requests";
//   }

//   static String validateZedvanceOtp = advances + 'loan/validate-otp';

//   static Future<String> getLoanOffers(phonenumber) async {
//     var userData = await Authentication.getUserDetails();
//     String _baseSalary = "${userData['employee']['base_salary']}";
//     return loans + "offer?phonenumber=$phonenumber&salaryAmount=$_baseSalary";
//   }

//   static String getLoansBankAccounts(phonenumber) {
//     return "${loans}account?phonenumber=$phonenumber";
//   }

//   //pensions
//   static String pensions = _baseURL + "pension/payment/employee/";
//   static String pensionList(id) {
//     return pensions + "$id";
//   }

//   // health plans
//   static String healthPlans = _baseURL + "healthaccess/plans/";

//   static String enableHealthPlan(id) {
//     return _baseURL + "employees/$id/healthaccess";
//   }

//   static String getEmployeeDdependents =
//       '${_baseURL}healthaccess/employee/dependants';

//   static String removeDependant({String dependantId}) =>
//       '${_baseURL}healthaccess/employee/remove-dependant/$dependantId';

//   static String getEmployee(id) {
//     return _baseURL + "employee/$id";
//   }

//   //update bvn
//   static String updateBankDetails(id) {
//     return _baseURL + "employee/$id/bank-details";
//   }

//   //verify bvn
//   static String verifyBvn(bvn) {
//     return _baseURL + "employee/verify-bvn/$bvn";
//   }

//   //get Notifications
//   static String getNotifications() {
//     return _baseURL + "announcements/employee";
//   }

//   //get banks
//   static String getBanks() {
//     return _baseURL + "bank";
//   }

//   //Verify Account Number
//   static String verifyAccountNumer(accountNumber, bankCode) {
//     return _baseURL +
//         "employee/verify-account?account_number=$accountNumber&bank_code=$bankCode";
//   }

//   //getMaxAllowableFibreLoan
//   static String getMaxAllowableFibreLoan =
//       _baseURL + "bento-plus/fibre/max-eligibility";

//   //cancel Fibre
//   static String cancelFibreRentRequest = _baseURL + "bento-plus/fibre/cancel";

//   //cancel health
//   static String cancelHealth(id) {
//     return _baseURL + "healthaccess/employee/remove/$id";
//   }

//   //early Pay
//   static String getReliefs(employeeId) {
//     return _baseURL + "employee/$employeeId/relief-requests";
//   }

//   //bento Plus
//   static String bentoPlusProviders = _baseURL + 'salary-credit-provider';

//   static String getEmployeeCreditProviders(employeeId) {
//     return _baseURL + 'employee-credit-providers?employee=$employeeId';
//   }

//   static String getBentoPlusPayments(providerID) {
//     return _baseURL + "employee-credit-provider/$providerID/payments";
//   }

//   static String revokeBentoPlusAccess(providerID) {
//     return _baseURL + "employee-credit-provider/$providerID/revoke";
//   }

//   static String getSuccessfulPaymentStats(providerID) {
//     return _baseURL + "employee-credit-provider/$providerID/stats";
//   }

//   static String employeeSalaryCredit(String employeeID,
//       {String providerID, String statusFilter}) {
//     return _baseURL +
//         "employee-salary-credit?status_filter=${statusFilter ?? ''}&provider=${providerID ?? ''}&employee=$employeeID";
//   }

//   static String getEarlyPayRequests = _baseURL + "early-pay/requests";

//   static String earlyPayMandate = _baseURL + "earlypay/mandate";

//   static String makeEarlyPayRequest = "${_baseURL}early-pay/requests";

//   //Hygeia
//   static String getDependents = _baseURL + 'healthaccess/employee/dependants';

//   static String addDependents =
//       _baseURL + 'healthaccess/employee/add-dependants';

//   static String removeDependents(dependentId) {
//     return _baseURL + "healthaccess/employee/remove-dependant/$dependentId";
//   }

//   static String updateLoanNumber = _baseURL + 'employee/loannumber';

//   static String updateOrgInfo = '${_baseURL}organization/details';

//   static String downloadPayslip({String payslipId}) =>
//       '${_baseURL}payslip/download?slips=$payslipId';

//   static String getStates = '${_baseURL}state';

//   static String get getBaseUrl => _baseURL;
// }
