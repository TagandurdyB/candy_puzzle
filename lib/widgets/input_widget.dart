// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:candy_puzzle/services/exports.dart';
import 'package:flutter/services.dart';

class InputWidget extends StatefulWidget {
  final IconData iconD;
  final Widget? prefix;
  final Widget? suffix;
  final String label;
  final String startVal;
  final String hidden;
  final TextEditingController? controller;
  final String? Function()? validator;
  final bool readOnly;
  final EdgeInsetsGeometry? padding;
  final EdgeInsets scrollPadding;
  final void Function(String value)? onChanged;
  final void Function()? onTap;
  final void Function()? onEditingComplete;
  final TextInputType type;
  final bool autoFocus;
  final int maxLines;
  final int minLines;
  final int? maxLength;
  final List<TextInputFormatter>? formatters;
  final TextAlign? align;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final FocusNode? focusNode;
  final bool isDense;
  final bool isErrShow;
  const InputWidget({
    super.key,
    this.iconD = Icons.edit,
    this.prefix,
    this.suffix,
    this.label = "",
    this.startVal = "",
    this.hidden = "",
    this.controller,
    this.validator,
    this.readOnly = false,
    this.padding = const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
    this.scrollPadding = const EdgeInsets.all(20),
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.type = TextInputType.text,
    this.autoFocus = false,
    this.maxLines = 1,
    this.minLines = 1,
    this.maxLength,
    this.formatters,
    this.align = TextAlign.start,
    this.style,
    this.hintStyle,
    this.focusNode,
    this.isDense = false,
    this.isErrShow = false,
  });

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  String? errMessage;

  @override
  void initState() {
    super.initState();
    // RIBase.changeDate(widget.tag, TextEditingController(text: widget.startVal));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: context.t.regularText(
              widget.label,
              size: 14,
              col: context.colors.black,
            ),
          ),
        buildFormInput(),
        if (errMessage != null && widget.isErrShow)
          Padding(
            padding: const EdgeInsets.only(bottom: 8, left: 6),
            child: context.t.regularText(
              errMessage!,
              size: 12,
              col: context.colors.danger,
            ),
          ),
      ],
    );
  }

  Widget buildFormInput() {
    return TextFormField(
      scrollPadding: widget.scrollPadding,
      focusNode: widget.focusNode,
      inputFormatters: [
        if (widget.type == TextInputType.number)
          FilteringTextInputFormatter.digitsOnly,
        ...(widget.formatters ?? []),
      ],
      textCapitalization: TextCapitalization.sentences,
      autofocus: widget.autoFocus,
      readOnly: widget.readOnly,
      controller: widget.controller, // ?? RIBase.getControl(widget.tag),
      style:
          widget.style ??
          context.t.style.medium.copyWith(
            color: context.colors.white,
            fontSize: 30,
          ),
      textAlign: widget.align!,
      maxLength: widget.maxLength,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      keyboardType: widget.type,
      obscureText: widget.type == TextInputType.visiblePassword,
      obscuringCharacter: "*",
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        isDense: widget.isDense,
        suffixIcon: widget.suffix,
        // prefixIcon: widget.prefix,
        prefix: widget.prefix,
        hintText: widget.hidden,
        hintStyle:
            widget.hintStyle ?? context.t.style.regular.copyWith(fontSize: 28),
        // hintTextDirection: TextDirection.rtl,
        counter: const Offstage(),
        // un show label
        floatingLabelBehavior: FloatingLabelBehavior.never,
        // labelText: '+993 ',
        contentPadding: widget.maxLines == 1
            ? widget.padding
            : const EdgeInsets.symmetric(horizontal: 15, vertical:11),
        errorStyle: const TextStyle(fontSize: 0),
        // prefix:
        //     Texts(context).placeholder('+993 ', col: const Color(0xff2E2F37)),
        border: InputBorder.none,
      ),
      validator: (String? value) {
        if (widget.validator != null) {
          setState(() => errMessage = widget.validator!());
          return errMessage;
        }
        return null;
      },
      onChanged: widget.onChanged,
      onEditingComplete: () {
        context.closeKeyboar();
        if (widget.onEditingComplete != null) widget.onEditingComplete!();
      },
      onTap: widget.onTap,
    );
  }
}
