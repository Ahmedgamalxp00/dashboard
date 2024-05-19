import 'package:dashboard/widgets/custom_botton.dart';
import 'package:dashboard/widgets/last_transaction.dart';
import 'package:dashboard/widgets/quick_invoice_header.dart';
import 'package:dashboard/widgets/title_with_formfiled.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          LastTransaction(),
          Divider(
            color: Color(0xffF1F1F1),
            height: 40,
          ),
          Row(
            children: [
              Expanded(
                child: TitleWithformFiled(
                    title: 'Customer name', hint: 'Type customer name'),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: TitleWithformFiled(
                    title: 'Customer Email', hint: 'Type customer email'),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: TitleWithformFiled(
                    title: 'Item name', hint: 'Type customer name'),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: TitleWithformFiled(title: 'Customer Email', hint: 'USD'),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: CustomBottn(
                    title: 'Add more details',
                    color: Color(0xff4EB7F2),
                    backgroundColor: Colors.white),
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                child: CustomBottn(
                    title: 'Send Money',
                    backgroundColor: Color(0xff4EB7F2),
                    color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }
}
