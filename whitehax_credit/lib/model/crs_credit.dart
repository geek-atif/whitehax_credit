class CrsCredit {
  CrsCredit({
    required this.providerViews,
    required this.id,
    required this.reportType,
    required this.generatedDate,
  });
  late final List<ProviderViews> providerViews;
  late final String id;
  late final String reportType;
  late final int generatedDate;

  CrsCredit.fromJson(Map<String, dynamic> json) {
    providerViews = List.from(json['providerViews'])
        .map((e) => ProviderViews.fromJson(e))
        .toList();
    id = json['id'];
    reportType = json['reportType'];
    generatedDate = json['generatedDate'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['providerViews'] = providerViews.map((e) => e.toJson()).toList();
    _data['id'] = id;
    _data['reportType'] = reportType;
    _data['generatedDate'] = generatedDate;
    return _data;
  }
}

class ProviderViews {
  ProviderViews({
    required this.provider,
    required this.summary,
    required this.revolvingAccounts,
    required this.mortgageAccounts,
    required this.installmentAccounts,
    required this.otherAccounts,
    required this.inquiries,
    required this.consumerStatements,
    required this.publicRecords,
    required this.collections,
  });
  late final String provider;
  late final Summary summary;
  late final List<RevolvingAccounts> revolvingAccounts;
  late final List<MortgageAccounts> mortgageAccounts;
  late final List<InstallmentAccounts> installmentAccounts;
  late final List<OtherAccounts> otherAccounts;
  late final List<Inquiries> inquiries;
  late final List<dynamic> consumerStatements;
  late final PublicRecords publicRecords;
  late final List<Collections> collections;

  ProviderViews.fromJson(Map<String, dynamic> json) {
    provider = json['provider'];
    summary = Summary.fromJson(json['summary']);
    revolvingAccounts = List.from(json['revolvingAccounts'])
        .map((e) => RevolvingAccounts.fromJson(e))
        .toList();
    mortgageAccounts = List.from(json['mortgageAccounts'])
        .map((e) => MortgageAccounts.fromJson(e))
        .toList();
    installmentAccounts = List.from(json['installmentAccounts'])
        .map((e) => InstallmentAccounts.fromJson(e))
        .toList();
    otherAccounts = List.from(json['otherAccounts'])
        .map((e) => OtherAccounts.fromJson(e))
        .toList();
    inquiries =
        List.from(json['inquiries']).map((e) => Inquiries.fromJson(e)).toList();
    consumerStatements =
        List.castFrom<dynamic, dynamic>(json['consumerStatements']);
    publicRecords = PublicRecords.fromJson(json['publicRecords']);
    collections = List.from(json['collections'])
        .map((e) => Collections.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['provider'] = provider;
    _data['summary'] = summary.toJson();
    _data['revolvingAccounts'] =
        revolvingAccounts.map((e) => e.toJson()).toList();
    _data['mortgageAccounts'] =
        mortgageAccounts.map((e) => e.toJson()).toList();
    _data['installmentAccounts'] =
        installmentAccounts.map((e) => e.toJson()).toList();
    _data['otherAccounts'] = otherAccounts.map((e) => e.toJson()).toList();
    _data['inquiries'] = inquiries.map((e) => e.toJson()).toList();
    _data['consumerStatements'] = consumerStatements;
    _data['publicRecords'] = publicRecords.toJson();
    _data['collections'] = collections.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Summary {
  Summary({
    required this.id,
    required this.reportGenerated,
    required this.creditFileSecurityFreezeFlag,
    required this.reportType,
    required this.provider,
    required this.subject,
    required this.creditScore,
    required this.revolvingAccounts,
    required this.mortgageAccounts,
    required this.installmentAccounts,
    required this.otherAccounts,
    required this.totalOpenAccounts,
    required this.lengthOfCreditHistoryMonths,
    required this.totalNegativeAccounts,
    required this.averageAccountAgeMonths,
    required this.oldestAccountOpenDate,
    required this.oldestAccountName,
    required this.mostRecentAccountOpenDate,
    required this.mostRecentAccountName,
    required this.totalConsumerStatements,
    required this.mostRecentInquiryDate,
    required this.mostRecentInquiryName,
    required this.totalPersonalInformation,
    required this.totalInquires,
    required this.totalPublicRecords,
    required this.totalCollections,
    required this.disputeInformation,
  });
  late final String id;
  late final int reportGenerated;
  late final bool creditFileSecurityFreezeFlag;
  late final String reportType;
  late final String provider;
  late final Subject subject;
  late final CreditScore creditScore;
  late final RevolvingAccounts revolvingAccounts;
  late final MortgageAccounts mortgageAccounts;
  late final InstallmentAccounts installmentAccounts;
  late final OtherAccounts otherAccounts;
  late final TotalOpenAccounts totalOpenAccounts;
  late final int lengthOfCreditHistoryMonths;
  late final int totalNegativeAccounts;
  late final int averageAccountAgeMonths;
  late final int oldestAccountOpenDate;
  late final String oldestAccountName;
  late final int mostRecentAccountOpenDate;
  late final String mostRecentAccountName;
  late final int totalConsumerStatements;
  late final int mostRecentInquiryDate;
  late final String mostRecentInquiryName;
  late final int totalPersonalInformation;
  late final int totalInquires;
  late final int totalPublicRecords;
  late final int totalCollections;
  late final DisputeInformation disputeInformation;

  Summary.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    reportGenerated = json['reportGenerated'];
    creditFileSecurityFreezeFlag = json['creditFileSecurityFreezeFlag'];
    reportType = json['reportType'];
    provider = json['provider'];
    subject = Subject.fromJson(json['subject']);
    creditScore = CreditScore.fromJson(json['creditScore']);
    revolvingAccounts = RevolvingAccounts.fromJson(json['revolvingAccounts']);
    mortgageAccounts = MortgageAccounts.fromJson(json['mortgageAccounts']);
    installmentAccounts =
        InstallmentAccounts.fromJson(json['installmentAccounts']);
    otherAccounts = OtherAccounts.fromJson(json['otherAccounts']);
    totalOpenAccounts = TotalOpenAccounts.fromJson(json['totalOpenAccounts']);
    lengthOfCreditHistoryMonths = json['lengthOfCreditHistoryMonths'];
    totalNegativeAccounts = json['totalNegativeAccounts'];
    averageAccountAgeMonths = json['averageAccountAgeMonths'];
    oldestAccountOpenDate = json['oldestAccountOpenDate'];
    oldestAccountName = json['oldestAccountName'];
    mostRecentAccountOpenDate = json['mostRecentAccountOpenDate'];
    mostRecentAccountName = json['mostRecentAccountName'];
    totalConsumerStatements = json['totalConsumerStatements'];
    mostRecentInquiryDate = json['mostRecentInquiryDate'];
    mostRecentInquiryName = json['mostRecentInquiryName'];
    totalPersonalInformation = json['totalPersonalInformation'];
    totalInquires = json['totalInquires'];
    totalPublicRecords = json['totalPublicRecords'];
    totalCollections = json['totalCollections'];
    disputeInformation =
        DisputeInformation.fromJson(json['disputeInformation']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['reportGenerated'] = reportGenerated;
    _data['creditFileSecurityFreezeFlag'] = creditFileSecurityFreezeFlag;
    _data['reportType'] = reportType;
    _data['provider'] = provider;
    _data['subject'] = subject.toJson();
    _data['creditScore'] = creditScore.toJson();
    _data['revolvingAccounts'] = revolvingAccounts.toJson();
    _data['mortgageAccounts'] = mortgageAccounts.toJson();
    _data['installmentAccounts'] = installmentAccounts.toJson();
    _data['otherAccounts'] = otherAccounts.toJson();
    _data['totalOpenAccounts'] = totalOpenAccounts.toJson();
    _data['lengthOfCreditHistoryMonths'] = lengthOfCreditHistoryMonths;
    _data['totalNegativeAccounts'] = totalNegativeAccounts;
    _data['averageAccountAgeMonths'] = averageAccountAgeMonths;
    _data['oldestAccountOpenDate'] = oldestAccountOpenDate;
    _data['oldestAccountName'] = oldestAccountName;
    _data['mostRecentAccountOpenDate'] = mostRecentAccountOpenDate;
    _data['mostRecentAccountName'] = mostRecentAccountName;
    _data['totalConsumerStatements'] = totalConsumerStatements;
    _data['mostRecentInquiryDate'] = mostRecentInquiryDate;
    _data['mostRecentInquiryName'] = mostRecentInquiryName;
    _data['totalPersonalInformation'] = totalPersonalInformation;
    _data['totalInquires'] = totalInquires;
    _data['totalPublicRecords'] = totalPublicRecords;
    _data['totalCollections'] = totalCollections;
    _data['disputeInformation'] = disputeInformation.toJson();
    return _data;
  }
}

class Subject {
  Subject({
    required this.provider,
    required this.currentName,
    required this.aliases,
    required this.currentAddress,
    required this.previousAddresses,
    this.homePhone,
    this.mobilePhone,
    required this.nationalIdentifier,
    required this.dateOfBirth,
    this.dateOfDeath,
    required this.employmentHistory,
  });
  late final String provider;
  late final CurrentName currentName;
  late final List<dynamic> aliases;
  late final CurrentAddress currentAddress;
  late final List<PreviousAddresses> previousAddresses;
  late final Null homePhone;
  late final Null mobilePhone;
  late final String nationalIdentifier;
  late final int dateOfBirth;
  late final Null dateOfDeath;
  late final List<EmploymentHistory> employmentHistory;

  Subject.fromJson(Map<String, dynamic> json) {
    provider = json['provider'];
    currentName = CurrentName.fromJson(json['currentName']);
    aliases = List.castFrom<dynamic, dynamic>(json['aliases']);
    currentAddress = CurrentAddress.fromJson(json['currentAddress']);
    previousAddresses = List.from(json['previousAddresses'])
        .map((e) => PreviousAddresses.fromJson(e))
        .toList();
    homePhone = null;
    mobilePhone = null;
    nationalIdentifier = json['nationalIdentifier'];
    dateOfBirth = json['dateOfBirth'];
    dateOfDeath = null;
    employmentHistory = List.from(json['employmentHistory'])
        .map((e) => EmploymentHistory.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['provider'] = provider;
    _data['currentName'] = currentName.toJson();
    _data['aliases'] = aliases;
    _data['currentAddress'] = currentAddress.toJson();
    _data['previousAddresses'] =
        previousAddresses.map((e) => e.toJson()).toList();
    _data['homePhone'] = homePhone;
    _data['mobilePhone'] = mobilePhone;
    _data['nationalIdentifier'] = nationalIdentifier;
    _data['dateOfBirth'] = dateOfBirth;
    _data['dateOfDeath'] = dateOfDeath;
    _data['employmentHistory'] =
        employmentHistory.map((e) => e.toJson()).toList();
    return _data;
  }
}

class CurrentName {
  CurrentName({
    required this.lastName,
    required this.firstName,
    this.middleName,
    this.suffix,
  });
  late final String lastName;
  late final String firstName;
  late final Null middleName;
  late final Null suffix;

  CurrentName.fromJson(Map<String, dynamic> json) {
    lastName = json['lastName'];
    firstName = json['firstName'];
    middleName = null;
    suffix = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['lastName'] = lastName;
    _data['firstName'] = firstName;
    _data['middleName'] = middleName;
    _data['suffix'] = suffix;
    return _data;
  }
}

class CurrentAddress {
  CurrentAddress({
    required this.country,
    required this.line1,
    this.line2,
    required this.line3,
    required this.line4,
    required this.line5,
    required this.firstReportedDate,
    required this.lastReportedDate,
    this.phone,
  });
  late final Country country;
  late final String line1;
  late final Null line2;
  late final String line3;
  late final String line4;
  late final String line5;
  late final int firstReportedDate;
  late final int lastReportedDate;
  late final Null phone;

  CurrentAddress.fromJson(Map<String, dynamic> json) {
    country = Country.fromJson(json['country']);
    line1 = json['line1'];
    line2 = null;
    line3 = json['line3'];
    line4 = json['line4'];
    line5 = json['line5'];
    firstReportedDate = json['firstReportedDate'];
    lastReportedDate = json['lastReportedDate'];
    phone = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['country'] = country.toJson();
    _data['line1'] = line1;
    _data['line2'] = line2;
    _data['line3'] = line3;
    _data['line4'] = line4;
    _data['line5'] = line5;
    _data['firstReportedDate'] = firstReportedDate;
    _data['lastReportedDate'] = lastReportedDate;
    _data['phone'] = phone;
    return _data;
  }
}

class Country {
  Country({
    required this.code,
    this.name,
  });
  late final String code;
  late final Null name;

  Country.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['name'] = name;
    return _data;
  }
}

class PreviousAddresses {
  PreviousAddresses({
    required this.country,
    required this.line1,
    this.line2,
    required this.line3,
    required this.line4,
    required this.line5,
    required this.firstReportedDate,
    required this.lastReportedDate,
    this.phone,
  });
  late final Country country;
  late final String line1;
  late final Null line2;
  late final String line3;
  late final String line4;
  late final String line5;
  late final int firstReportedDate;
  late final int lastReportedDate;
  late final Null phone;

  PreviousAddresses.fromJson(Map<String, dynamic> json) {
    country = Country.fromJson(json['country']);
    line1 = json['line1'];
    line2 = null;
    line3 = json['line3'];
    line4 = json['line4'];
    line5 = json['line5'];
    firstReportedDate = json['firstReportedDate'];
    lastReportedDate = json['lastReportedDate'];
    phone = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['country'] = country.toJson();
    _data['line1'] = line1;
    _data['line2'] = line2;
    _data['line3'] = line3;
    _data['line4'] = line4;
    _data['line5'] = line5;
    _data['firstReportedDate'] = firstReportedDate;
    _data['lastReportedDate'] = lastReportedDate;
    _data['phone'] = phone;
    return _data;
  }
}

class EmploymentHistory {
  EmploymentHistory({
    required this.employerName,
    this.employeeTitle,
    required this.currentEmployer,
    required this.ordinal,
    this.dateOfEmployment,
    this.address,
  });
  late final String employerName;
  late final Null employeeTitle;
  late final bool currentEmployer;
  late final int ordinal;
  late final Null dateOfEmployment;
  late final Null address;

  EmploymentHistory.fromJson(Map<String, dynamic> json) {
    employerName = json['employerName'];
    employeeTitle = null;
    currentEmployer = json['currentEmployer'];
    ordinal = json['ordinal'];
    dateOfEmployment = null;
    address = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['employerName'] = employerName;
    _data['employeeTitle'] = employeeTitle;
    _data['currentEmployer'] = currentEmployer;
    _data['ordinal'] = ordinal;
    _data['dateOfEmployment'] = dateOfEmployment;
    _data['address'] = address;
    return _data;
  }
}

class CreditScore {
  CreditScore({
    required this.score,
    required this.provider,
    required this.scoreRanges,
    required this.loanRiskRanges,
    required this.scoreReasons,
  });
  late final int score;
  late final String provider;
  late final List<ScoreRanges> scoreRanges;
  late final List<LoanRiskRanges> loanRiskRanges;
  late final List<ScoreReasons> scoreReasons;

  CreditScore.fromJson(Map<String, dynamic> json) {
    score = json['score'];
    provider = json['provider'];
    scoreRanges = List.from(json['scoreRanges'])
        .map((e) => ScoreRanges.fromJson(e))
        .toList();
    loanRiskRanges = List.from(json['loanRiskRanges'])
        .map((e) => LoanRiskRanges.fromJson(e))
        .toList();
    scoreReasons = List.from(json['scoreReasons'])
        .map((e) => ScoreReasons.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['score'] = score;
    _data['provider'] = provider;
    _data['scoreRanges'] = scoreRanges.map((e) => e.toJson()).toList();
    _data['loanRiskRanges'] = loanRiskRanges.map((e) => e.toJson()).toList();
    _data['scoreReasons'] = scoreReasons.map((e) => e.toJson()).toList();
    return _data;
  }
}

class ScoreRanges {
  ScoreRanges({
    required this.low,
    required this.high,
    required this.name,
  });
  late final int low;
  late final int high;
  late final String name;

  ScoreRanges.fromJson(Map<String, dynamic> json) {
    low = json['low'];
    high = json['high'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['low'] = low;
    _data['high'] = high;
    _data['name'] = name;
    return _data;
  }
}

class LoanRiskRanges {
  LoanRiskRanges({
    required this.low,
    required this.high,
    required this.name,
  });
  late final int low;
  late final int high;
  late final String name;

  LoanRiskRanges.fromJson(Map<String, dynamic> json) {
    low = json['low'];
    high = json['high'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['low'] = low;
    _data['high'] = high;
    _data['name'] = name;
    return _data;
  }
}

class ScoreReasons {
  ScoreReasons({
    required this.code,
    required this.description,
    required this.creditScoreFactorEffect,
  });
  late final String code;
  late final String description;
  late final String creditScoreFactorEffect;

  ScoreReasons.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    description = json['description'];
    creditScoreFactorEffect = json['creditScoreFactorEffect'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['description'] = description;
    _data['creditScoreFactorEffect'] = creditScoreFactorEffect;
    return _data;
  }
}

class RevolvingAccounts {
  RevolvingAccounts({
    required this.balance,
    this.creditLimit,
    this.available,
    required this.monthlyPaymentAmount,
    required this.debtToCreditRatio,
    required this.totalAccounts,
    required this.totalNegativeAccounts,
    required this.totalAccountsWithBalance,
  });
  late final Balance balance;
  late final Null creditLimit;
  late final Null available;
  late final MonthlyPaymentAmount monthlyPaymentAmount;
  late final double debtToCreditRatio;
  late final int totalAccounts;
  late final int totalNegativeAccounts;
  late final int totalAccountsWithBalance;

  RevolvingAccounts.fromJson(Map<String, dynamic> json) {
    balance = Balance.fromJson(json['balance']);
    creditLimit = null;
    available = null;
    monthlyPaymentAmount =
        MonthlyPaymentAmount.fromJson(json['monthlyPaymentAmount']);
    debtToCreditRatio = json['debtToCreditRatio'];
    totalAccounts = json['totalAccounts'];
    totalNegativeAccounts = json['totalNegativeAccounts'];
    totalAccountsWithBalance = json['totalAccountsWithBalance'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['balance'] = balance.toJson();
    _data['creditLimit'] = creditLimit;
    _data['available'] = available;
    _data['monthlyPaymentAmount'] = monthlyPaymentAmount.toJson();
    _data['debtToCreditRatio'] = debtToCreditRatio;
    _data['totalAccounts'] = totalAccounts;
    _data['totalNegativeAccounts'] = totalNegativeAccounts;
    _data['totalAccountsWithBalance'] = totalAccountsWithBalance;
    return _data;
  }
}

class Balance {
  Balance({
    required this.amount,
    required this.currency,
  });
  late final double amount;
  late final String currency;

  Balance.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      if (json['amount'] == null) {
        amount = 0.0;
      } else {
        amount = json['amount'];
      }
      currency = json['currency'];
    }
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['amount'] = amount;
    _data['currency'] = currency;
    return _data;
  }
}

class MonthlyPaymentAmount {
  MonthlyPaymentAmount({
    required this.amount,
    required this.currency,
  });
  late final double amount;
  late final String currency;

  MonthlyPaymentAmount.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      amount = json['amount'];
      currency = json['currency'];
    }
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['amount'] = amount;
    _data['currency'] = currency;
    return _data;
  }
}

class MortgageAccounts {
  MortgageAccounts({
    required this.balance,
    this.creditLimit,
    this.available,
    required this.monthlyPaymentAmount,
    required this.debtToCreditRatio,
    required this.totalAccounts,
    required this.totalNegativeAccounts,
    required this.totalAccountsWithBalance,
  });
  late final Balance balance;
  late final Null creditLimit;
  late final Null available;
  late final MonthlyPaymentAmount monthlyPaymentAmount;
  late final double debtToCreditRatio;
  late final int totalAccounts;
  late final int totalNegativeAccounts;
  late final int totalAccountsWithBalance;

  MortgageAccounts.fromJson(Map<String, dynamic> json) {
    balance = Balance.fromJson(json['balance']);
    creditLimit = null;
    available = null;
    monthlyPaymentAmount =
        MonthlyPaymentAmount.fromJson(json['monthlyPaymentAmount']);
    debtToCreditRatio = json['debtToCreditRatio'];
    totalAccounts = json['totalAccounts'];
    totalNegativeAccounts = json['totalNegativeAccounts'];
    totalAccountsWithBalance = json['totalAccountsWithBalance'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['balance'] = balance.toJson();
    _data['creditLimit'] = creditLimit;
    _data['available'] = available;
    _data['monthlyPaymentAmount'] = monthlyPaymentAmount.toJson();
    _data['debtToCreditRatio'] = debtToCreditRatio;
    _data['totalAccounts'] = totalAccounts;
    _data['totalNegativeAccounts'] = totalNegativeAccounts;
    _data['totalAccountsWithBalance'] = totalAccountsWithBalance;
    return _data;
  }
}

class InstallmentAccounts {
  InstallmentAccounts({
    required this.balance,
    required this.creditLimit,
    required this.available,
    required this.monthlyPaymentAmount,
    required this.debtToCreditRatio,
    required this.totalAccounts,
    required this.totalNegativeAccounts,
    required this.totalAccountsWithBalance,
  });
  late final Balance balance;
  late final CreditLimit creditLimit;
  late final Available available;
  late final MonthlyPaymentAmount monthlyPaymentAmount;
  late final double debtToCreditRatio;
  late final int totalAccounts;
  late final int totalNegativeAccounts;
  late final int totalAccountsWithBalance;

  InstallmentAccounts.fromJson(Map<String, dynamic> json) {
    balance = Balance.fromJson(json['balance']);
    creditLimit = CreditLimit.fromJson(json['creditLimit']);
    available = Available.fromJson(json['available']);
    monthlyPaymentAmount =
        MonthlyPaymentAmount.fromJson(json['monthlyPaymentAmount']);
    debtToCreditRatio = json['debtToCreditRatio'];
    totalAccounts = json['totalAccounts'];
    totalNegativeAccounts = json['totalNegativeAccounts'];
    totalAccountsWithBalance = json['totalAccountsWithBalance'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['balance'] = balance.toJson();
    _data['creditLimit'] = creditLimit.toJson();
    _data['available'] = available.toJson();
    _data['monthlyPaymentAmount'] = monthlyPaymentAmount.toJson();
    _data['debtToCreditRatio'] = debtToCreditRatio;
    _data['totalAccounts'] = totalAccounts;
    _data['totalNegativeAccounts'] = totalNegativeAccounts;
    _data['totalAccountsWithBalance'] = totalAccountsWithBalance;
    return _data;
  }
}

class CreditLimit {
  CreditLimit({
    required this.amount,
    required this.currency,
  });
  late final double amount;
  late final String currency;

  CreditLimit.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      amount = json['amount'];
      currency = json['currency'];
    }
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['amount'] = amount;
    _data['currency'] = currency;
    return _data;
  }
}

class Available {
  Available({
    required this.amount,
    required this.currency,
  });
  late final double amount;
  late final String currency;

  Available.fromJson(Map<String, dynamic> json) {
    if (json != null) {
      amount = json['amount'];
      currency = json['currency'];
    }
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['amount'] = amount;
    _data['currency'] = currency;
    return _data;
  }
}

class OtherAccounts {
  OtherAccounts({
    required this.balance,
    this.creditLimit,
    this.available,
    required this.monthlyPaymentAmount,
    required this.debtToCreditRatio,
    required this.totalAccounts,
    required this.totalNegativeAccounts,
    required this.totalAccountsWithBalance,
  });
  late final Balance balance;
  late final Null creditLimit;
  late final Null available;
  late final MonthlyPaymentAmount monthlyPaymentAmount;
  late final double debtToCreditRatio;
  late final int totalAccounts;
  late final int totalNegativeAccounts;
  late final int totalAccountsWithBalance;

  OtherAccounts.fromJson(Map<String, dynamic> json) {
    balance = Balance.fromJson(json['balance']);
    creditLimit = null;
    available = null;
    monthlyPaymentAmount =
        MonthlyPaymentAmount.fromJson(json['monthlyPaymentAmount']);
    debtToCreditRatio = json['debtToCreditRatio'];
    totalAccounts = json['totalAccounts'];
    totalNegativeAccounts = json['totalNegativeAccounts'];
    totalAccountsWithBalance = json['totalAccountsWithBalance'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['balance'] = balance.toJson();
    _data['creditLimit'] = creditLimit;
    _data['available'] = available;
    _data['monthlyPaymentAmount'] = monthlyPaymentAmount.toJson();
    _data['debtToCreditRatio'] = debtToCreditRatio;
    _data['totalAccounts'] = totalAccounts;
    _data['totalNegativeAccounts'] = totalNegativeAccounts;
    _data['totalAccountsWithBalance'] = totalAccountsWithBalance;
    return _data;
  }
}

class TotalOpenAccounts {
  TotalOpenAccounts({
    required this.balance,
    required this.creditLimit,
    required this.available,
    required this.monthlyPaymentAmount,
    required this.debtToCreditRatio,
    required this.totalAccounts,
    required this.totalNegativeAccounts,
    required this.totalAccountsWithBalance,
  });
  late final Balance balance;
  late final CreditLimit creditLimit;
  late final Available available;
  late final MonthlyPaymentAmount monthlyPaymentAmount;
  late final double debtToCreditRatio;
  late final int totalAccounts;
  late final int totalNegativeAccounts;
  late final int totalAccountsWithBalance;

  TotalOpenAccounts.fromJson(Map<String, dynamic> json) {
    balance = Balance.fromJson(json['balance']);
    creditLimit = CreditLimit.fromJson(json['creditLimit']);
    available = Available.fromJson(json['available']);
    monthlyPaymentAmount =
        MonthlyPaymentAmount.fromJson(json['monthlyPaymentAmount']);
    debtToCreditRatio = json['debtToCreditRatio'];
    totalAccounts = json['totalAccounts'];
    totalNegativeAccounts = json['totalNegativeAccounts'];
    totalAccountsWithBalance = json['totalAccountsWithBalance'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['balance'] = balance.toJson();
    _data['creditLimit'] = creditLimit.toJson();
    _data['available'] = available.toJson();
    _data['monthlyPaymentAmount'] = monthlyPaymentAmount.toJson();
    _data['debtToCreditRatio'] = debtToCreditRatio;
    _data['totalAccounts'] = totalAccounts;
    _data['totalNegativeAccounts'] = totalNegativeAccounts;
    _data['totalAccountsWithBalance'] = totalAccountsWithBalance;
    return _data;
  }
}

class DisputeInformation {
  DisputeInformation({
    required this.contactName,
    required this.address,
    required this.phone,
  });
  late final String contactName;
  late final Address address;
  late final Phone phone;

  DisputeInformation.fromJson(Map<String, dynamic> json) {
    contactName = json['contactName'];
    address = Address.fromJson(json['address']);
    phone = Phone.fromJson(json['phone']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['contactName'] = contactName;
    _data['address'] = address.toJson();
    _data['phone'] = phone.toJson();
    return _data;
  }
}

class Address {
  Address({
    this.country,
    required this.line1,
    this.line2,
    required this.line3,
    required this.line4,
    required this.line5,
    this.firstReportedDate,
    this.lastReportedDate,
    this.phone,
  });
  late final Null country;
  late final String line1;
  late final Null line2;
  late final String line3;
  late final String line4;
  late final String line5;
  late final Null firstReportedDate;
  late final Null lastReportedDate;
  late final Null phone;

  Address.fromJson(Map<String, dynamic> json) {
    country = null;
    line1 = json['line1'];
    line2 = null;
    line3 = json['line3'];
    line4 = json['line4'];
    line5 = json['line5'];
    firstReportedDate = null;
    lastReportedDate = null;
    phone = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['country'] = country;
    _data['line1'] = line1;
    _data['line2'] = line2;
    _data['line3'] = line3;
    _data['line4'] = line4;
    _data['line5'] = line5;
    _data['firstReportedDate'] = firstReportedDate;
    _data['lastReportedDate'] = lastReportedDate;
    _data['phone'] = phone;
    return _data;
  }
}

class Phone {
  Phone({
    required this.countryCode,
    required this.areaCode,
    required this.exchange,
    required this.extension,
  });
  late final String countryCode;
  late final String areaCode;
  late final String exchange;
  late final String extension;

  Phone.fromJson(Map<String, dynamic> json) {
    countryCode = json['countryCode'];
    areaCode = json['areaCode'];
    exchange = json['exchange'];
    extension = json['extension'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['countryCode'] = countryCode;
    _data['areaCode'] = areaCode;
    _data['exchange'] = exchange;
    _data['extension'] = extension;
    return _data;
  }
}

class Inquiries {
  Inquiries({
    required this.provider,
    this.id,
    required this.type,
    required this.prefix,
    required this.reportedDate,
    required this.contactInformation,
  });
  late final String provider;
  late final Null id;
  late final String type;
  late final Prefix prefix;
  late final int reportedDate;
  late final ContactInformation contactInformation;

  Inquiries.fromJson(Map<String, dynamic> json) {
    provider = json['provider'];
    id = null;
    type = json['type'];
    prefix = Prefix.fromJson(json['prefix']);
    reportedDate = json['reportedDate'];
    contactInformation =
        ContactInformation.fromJson(json['contactInformation']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['provider'] = provider;
    _data['id'] = id;
    _data['type'] = type;
    _data['prefix'] = prefix.toJson();
    _data['reportedDate'] = reportedDate;
    _data['contactInformation'] = contactInformation.toJson();
    return _data;
  }
}

class Prefix {
  Prefix({
    required this.code,
    required this.description,
  });
  late final String code;
  late final String description;

  Prefix.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['description'] = description;
    return _data;
  }
}

class ContactInformation {
  ContactInformation({
    required this.contactName,
    required this.address,
    this.phone,
  });
  late final String contactName;
  late final Address address;
  late final Phone? phone;

  ContactInformation.fromJson(Map<String, dynamic> json) {
    contactName = json['contactName'];
    address = Address.fromJson(json['address']);
    phone = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['contactName'] = contactName;
    _data['address'] = address.toJson();
    _data['phone'] = phone;
    return _data;
  }
}

class PublicRecords {
  PublicRecords({
    required this.provider,
    required this.bankruptcies,
    required this.judgments,
    required this.liens,
  });
  late final String provider;
  late final List<Bankruptcies> bankruptcies;
  late final List<dynamic> judgments;
  late final List<dynamic> liens;

  PublicRecords.fromJson(Map<String, dynamic> json) {
    provider = json['provider'];
    bankruptcies = List.from(json['bankruptcies'])
        .map((e) => Bankruptcies.fromJson(e))
        .toList();
    judgments = List.castFrom<dynamic, dynamic>(json['judgments']);
    liens = List.castFrom<dynamic, dynamic>(json['liens']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['provider'] = provider;
    _data['bankruptcies'] = bankruptcies.map((e) => e.toJson()).toList();
    _data['judgments'] = judgments;
    _data['liens'] = liens;
    return _data;
  }
}

class Bankruptcies {
  Bankruptcies({
    this.id,
    required this.filedDate,
    required this.reportedDate,
    this.referenceNumber,
    required this.dispositionStatus,
    required this.courtName,
    this.liability,
    this.exemptAmount,
    this.assetAmount,
  });
  late final Null id;
  late final int filedDate;
  late final int reportedDate;
  late final Null referenceNumber;
  late final DispositionStatus dispositionStatus;
  late final String courtName;
  late final Null liability;
  late final Null exemptAmount;
  late final Null assetAmount;

  Bankruptcies.fromJson(Map<String, dynamic> json) {
    id = null;
    filedDate = json['filedDate'];
    reportedDate = json['reportedDate'];
    referenceNumber = null;
    dispositionStatus = DispositionStatus.fromJson(json['dispositionStatus']);
    courtName = json['courtName'];
    liability = null;
    exemptAmount = null;
    assetAmount = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['filedDate'] = filedDate;
    _data['reportedDate'] = reportedDate;
    _data['referenceNumber'] = referenceNumber;
    _data['dispositionStatus'] = dispositionStatus.toJson();
    _data['courtName'] = courtName;
    _data['liability'] = liability;
    _data['exemptAmount'] = exemptAmount;
    _data['assetAmount'] = assetAmount;
    return _data;
  }
}

class DispositionStatus {
  DispositionStatus({
    required this.code,
    required this.description,
  });
  late final String code;
  late final String description;

  DispositionStatus.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['description'] = description;
    return _data;
  }
}

class Collections {
  Collections({
    required this.provider,
    this.id,
    required this.reportedDate,
    required this.assignedDate,
    this.agencyClient,
    required this.agencyContactInformation,
    this.originalCreditorName,
    required this.orginalAmountOwed,
    this.accountNumber,
    required this.accountDesignatorCode,
    this.balanceDate,
    required this.statusDate,
    required this.status,
    required this.amount,
  });
  late final String provider;
  late final Null id;
  late final int reportedDate;
  late final int assignedDate;
  late final Null agencyClient;
  late final AgencyContactInformation agencyContactInformation;
  late final Null originalCreditorName;
  late final OrginalAmountOwed orginalAmountOwed;
  late final Null accountNumber;
  late final String accountDesignatorCode;
  late final Null balanceDate;
  late final int statusDate;
  late final String status;
  late final Amount amount;

  Collections.fromJson(Map<String, dynamic> json) {
    provider = json['provider'];
    id = null;
    reportedDate = json['reportedDate'];
    assignedDate = json['assignedDate'];
    agencyClient = null;
    agencyContactInformation =
        AgencyContactInformation.fromJson(json['agencyContactInformation']);
    originalCreditorName = null;
    orginalAmountOwed = OrginalAmountOwed.fromJson(json['orginalAmountOwed']);
    accountNumber = null;
    accountDesignatorCode = json['accountDesignatorCode'];
    balanceDate = null;
    statusDate = json['statusDate'];
    status = json['status'];
    amount = Amount.fromJson(json['amount']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['provider'] = provider;
    _data['id'] = id;
    _data['reportedDate'] = reportedDate;
    _data['assignedDate'] = assignedDate;
    _data['agencyClient'] = agencyClient;
    _data['agencyContactInformation'] = agencyContactInformation.toJson();
    _data['originalCreditorName'] = originalCreditorName;
    _data['orginalAmountOwed'] = orginalAmountOwed.toJson();
    _data['accountNumber'] = accountNumber;
    _data['accountDesignatorCode'] = accountDesignatorCode;
    _data['balanceDate'] = balanceDate;
    _data['statusDate'] = statusDate;
    _data['status'] = status;
    _data['amount'] = amount.toJson();
    return _data;
  }
}

class AgencyContactInformation {
  AgencyContactInformation({
    this.contactName,
    this.address,
    this.phone,
  });
  late final Null contactName;
  late final Null address;
  late final Null phone;

  AgencyContactInformation.fromJson(Map<String, dynamic> json) {
    contactName = null;
    address = null;
    phone = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['contactName'] = contactName;
    _data['address'] = address;
    _data['phone'] = phone;
    return _data;
  }
}

class OrginalAmountOwed {
  OrginalAmountOwed({
    required this.amount,
    required this.currency,
  });
  late final double amount;
  late final String currency;

  OrginalAmountOwed.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    currency = json['currency'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['amount'] = amount;
    _data['currency'] = currency;
    return _data;
  }
}

class Amount {
  Amount({
    required this.amount,
    required this.currency,
  });
  late final double amount;
  late final String currency;

  Amount.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    currency = json['currency'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['amount'] = amount;
    _data['currency'] = currency;
    return _data;
  }
}
