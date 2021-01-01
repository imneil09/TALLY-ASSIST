import 'package:flutter/material.dart';
import 'package:tally_assist/core/models/vouchers.dart';
import 'package:tally_assist/core/services/string_format.dart';
import 'package:tally_assist/ui/widgets/detailcard.dart';
import 'package:intl/intl.dart';
import 'package:tally_assist/ui/shared/positiveamount.dart';


var formatter = new DateFormat('dd-MM-yyyy');

 _formatDate(DateTime date) {
  if (date != null) {
    return formatter.format(date);
  }
  else {
    return 'NA';
  }

}


class SalesVoucherTile extends StatelessWidget {

    final Voucher salesVoucher;

    SalesVoucherTile({this.salesVoucher});


  @override
  Widget build(BuildContext context) {

    return Container(
      child: DetailCard(salesVoucher.partyname, '# ${salesVoucher.number}',  salesVoucher.type, formatIndianCurrency(positiveAmount(salesVoucher.amount).toString()), _formatDate(salesVoucher.date),)
      
    );
  }
}