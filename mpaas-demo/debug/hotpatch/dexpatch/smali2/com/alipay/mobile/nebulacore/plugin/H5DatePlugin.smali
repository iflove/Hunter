.class public Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5DatePlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x1"    # Ljava/lang/String;
    .param p1, "x2"    # Ljava/lang/String;

    .line 30
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 27
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 55
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const-string v3, "mode"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, "mode":I
    const-string v3, "minDate"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "minDateStr":Ljava/lang/String;
    const-string v5, "maxDate"

    invoke-static {v2, v5, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 58
    .local v14, "maxDateStr":Ljava/lang/String;
    const-string v4, "beginDate"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 59
    .local v15, "beginDateStr":Ljava/lang/String;
    const-string v4, "isIDCard"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v24

    .line 61
    .local v24, "isIDCard":Z
    const/4 v4, 0x0

    .line 62
    .local v4, "format":Ljava/lang/String;
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-nez v0, :cond_0

    .line 63
    const-string v4, "HH:mm:ss"

    move-object v13, v4

    goto :goto_0

    .line 64
    :cond_0
    if-ne v0, v6, :cond_1

    .line 65
    const-string v4, "yyyy-MM-dd"

    move-object v13, v4

    goto :goto_0

    .line 66
    :cond_1
    if-ne v0, v7, :cond_2

    .line 67
    const-string v4, "yyyy-MM-dd HH:mm:ss"

    move-object v13, v4

    goto :goto_0

    .line 68
    :cond_2
    const/4 v8, 0x3

    if-ne v0, v8, :cond_3

    .line 69
    const-string v4, "yyyy-MM"

    move-object v13, v4

    goto :goto_0

    .line 70
    :cond_3
    const/4 v8, 0x4

    if-ne v0, v8, :cond_4

    .line 71
    const-string v4, "yyyy"

    move-object v13, v4

    goto :goto_0

    .line 70
    :cond_4
    move-object v13, v4

    .line 74
    .end local v4    # "format":Ljava/lang/String;
    .local v13, "format":Ljava/lang/String;
    :goto_0
    invoke-static {v3, v13}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v25

    .line 75
    .local v25, "minDate":Ljava/util/Calendar;
    invoke-static {v14, v13}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v26

    .line 77
    .local v26, "maxDate":Ljava/util/Calendar;
    if-eqz v25, :cond_6

    if-eqz v26, :cond_6

    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 78
    invoke-virtual/range {v26 .. v26}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-lez v4, :cond_5

    .line 79
    const-string v1, "H5DatePlugin"

    const-string v4, "min date should less than max date!"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    move-object/from16 v12, p2

    invoke-interface {v12, v7, v4}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 81
    return-void

    .line 78
    :cond_5
    move-object/from16 v12, p2

    goto :goto_1

    .line 77
    :cond_6
    move-object/from16 v12, p2

    .line 84
    :goto_1
    invoke-static {v15, v13}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v4

    .line 85
    .local v1, "beginDate":Ljava/util/Calendar;
    move-object v1, v4

    if-nez v4, :cond_7

    .line 86
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 101
    :cond_7
    new-instance v23, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v23 .. v23}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 102
    .local v23, "result":Lcom/alibaba/fastjson/JSONObject;
    if-nez v0, :cond_8

    .line 103
    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, v1

    move-object/from16 v19, v25

    move-object/from16 v20, v26

    move-object/from16 v21, p2

    move/from16 v22, v24

    invoke-direct/range {v16 .. v23}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZLcom/alibaba/fastjson/JSONObject;)V

    return-void

    .line 105
    :cond_8
    if-ne v0, v7, :cond_9

    const/4 v10, 0x1

    goto :goto_2

    :cond_9
    const/4 v10, 0x0

    :goto_2
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v1

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    move/from16 v9, v24

    move-object/from16 v11, p2

    move-object/from16 v12, v23

    move-object/from16 v16, v13

    .end local v13    # "format":Ljava/lang/String;
    .local v16, "format":Ljava/lang/String;
    move v13, v0

    invoke-direct/range {v4 .. v13}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;ZZLcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alibaba/fastjson/JSONObject;I)V

    .line 108
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZLcom/alibaba/fastjson/JSONObject;)V
    .locals 17
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "beginDate"    # Ljava/util/Calendar;
    .param p3, "minDate"    # Ljava/util/Calendar;
    .param p4, "maxDate"    # Ljava/util/Calendar;
    .param p5, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p6, "idCard"    # Z
    .param p7, "result"    # Lcom/alibaba/fastjson/JSONObject;

    .line 219
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move-object/from16 v13, p5

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v16, 0x0

    move-object/from16 v1, v16

    .line 220
    .local v1, "activity":Landroid/app/Activity;
    move-object v10, v0

    .end local v1    # "activity":Landroid/app/Activity;
    .local v10, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-virtual {v10}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v5, p7

    move-object v2, v13

    goto/16 :goto_1

    .line 223
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$6;

    new-instance v11, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;

    move-object v1, v11

    move-object/from16 v2, p0

    move-object/from16 v3, p7

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;)V

    const/16 v1, 0xb

    .line 282
    invoke-virtual {v15, v1}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/16 v1, 0xc

    invoke-virtual {v15, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    move-object v8, v0

    move-object/from16 v9, p0

    move-object v2, v13

    move v13, v1

    invoke-direct/range {v8 .. v13}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$6;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;II)V

    move-object/from16 v1, v16

    .line 288
    .local v1, "timeDialog":Landroid/app/TimePickerDialog;
    move-object v1, v0

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_choosetime:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/TimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 289
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/TimePickerDialog;->setCancelable(Z)V

    .line 290
    const/4 v0, -0x2

    .line 292
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_datecancel:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$7;

    invoke-direct {v4, v14, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$7;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 291
    invoke-virtual {v1, v0, v3, v4}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 301
    if-eqz p6, :cond_1

    .line 302
    const/4 v0, -0x3

    .line 303
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_datevalid:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$8;

    move-object/from16 v5, p7

    invoke-direct {v4, v14, v5, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$8;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 302
    invoke-virtual {v1, v0, v3, v4}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 301
    :cond_1
    move-object/from16 v5, p7

    .line 314
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Landroid/app/TimePickerDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    return-void

    .line 315
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "H5DatePlugin"

    const-string v4, "show time dialog exception."

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    .end local v0    # "e":Ljava/lang/Exception;
    return-void

    .line 220
    .end local v1    # "timeDialog":Landroid/app/TimePickerDialog;
    :cond_2
    move-object/from16 v5, p7

    move-object v2, v13

    .line 221
    :goto_1
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;ZZLcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alibaba/fastjson/JSONObject;I)V
    .locals 21
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "beginDate"    # Ljava/util/Calendar;
    .param p3, "minDate"    # Ljava/util/Calendar;
    .param p4, "maxDate"    # Ljava/util/Calendar;
    .param p5, "isCard"    # Z
    .param p6, "isShowTimeDialog"    # Z
    .param p7, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p8, "result"    # Lcom/alibaba/fastjson/JSONObject;
    .param p9, "mode"    # I

    move-object/from16 v15, p0

    move-object/from16 v13, p2

    move-object/from16 v12, p7

    move/from16 v11, p9

    const-string v10, "H5DatePlugin"

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v19, 0x0

    move-object/from16 v1, v19

    .line 115
    .local v1, "activity":Landroid/app/Activity;
    move-object v14, v0

    .end local v1    # "activity":Landroid/app/Activity;
    .local v14, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_6

    invoke-virtual {v14}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v6, p8

    move-object v2, v12

    move-object v3, v15

    goto/16 :goto_4

    .line 118
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$2;

    new-instance v16, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p7

    move-object/from16 v20, v10

    move/from16 v10, p5

    move/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Ljava/util/Calendar;Ljava/util/Calendar;ZLcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZI)V

    const/4 v1, 0x1

    .line 149
    invoke-virtual {v13, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v17

    const/4 v2, 0x5

    .line 150
    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v18

    move-object v2, v12

    move-object v12, v0

    move-object/from16 v13, p0

    move-object v3, v15

    move-object/from16 v15, v16

    move/from16 v16, v1

    invoke-direct/range {v12 .. v18}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    move-object/from16 v1, v19

    .line 156
    .local v1, "dateDialog":Landroid/app/DatePickerDialog;
    move-object v1, v0

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_choosedate:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/DatePickerDialog;->setCancelable(Z)V

    .line 158
    const/4 v0, -0x2

    .line 160
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_datecancel:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$3;

    invoke-direct {v5, v3, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$3;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 159
    invoke-virtual {v1, v0, v4, v5}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 169
    if-eqz p5, :cond_1

    .line 170
    const/4 v0, -0x3

    .line 171
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_datevalid:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$4;

    move-object/from16 v6, p8

    invoke-direct {v5, v3, v6, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$4;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 170
    invoke-virtual {v1, v0, v4, v5}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 169
    :cond_1
    move-object/from16 v6, p8

    .line 182
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    .line 183
    .local v0, "datePicker":Landroid/widget/DatePicker;
    if-eqz p3, :cond_2

    .line 184
    invoke-virtual/range {p3 .. p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 186
    :cond_2
    if-eqz p4, :cond_3

    .line 187
    invoke-virtual/range {p4 .. p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/widget/DatePicker;->setMaxDate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v0    # "datePicker":Landroid/widget/DatePicker;
    :cond_3
    move-object/from16 v5, v20

    goto :goto_1

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    .local v0, "t":Ljava/lang/Throwable;
    const-string v4, "set min or max date exception."

    move-object/from16 v5, v20

    invoke-static {v5, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    .local v0, "datePicker":Landroid/widget/DatePicker;
    const/4 v4, 0x3

    const-string v7, "day"

    const/16 v8, 0x8

    const-string v9, "android"

    const-string v10, "id"

    move/from16 v11, p9

    if-ne v11, v4, :cond_4

    .line 198
    :try_start_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v7, v10, v9}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 204
    .end local v0    # "datePicker":Landroid/widget/DatePicker;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 199
    .restart local v0    # "datePicker":Landroid/widget/DatePicker;
    :cond_4
    const/4 v4, 0x4

    if-ne v11, v4, :cond_5

    .line 201
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v7, v10, v9}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 202
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v7, "month"

    invoke-static {v4, v7, v10, v9}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 206
    .end local v0    # "datePicker":Landroid/widget/DatePicker;
    :cond_5
    goto :goto_3

    .line 204
    :catch_1
    move-exception v0

    move/from16 v11, p9

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string v4, "set date mode exception"

    invoke-static {v5, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 212
    return-void

    .line 210
    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 211
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "show date dialog exception."

    invoke-static {v5, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    .end local v0    # "e":Ljava/lang/Exception;
    return-void

    .line 115
    .end local v1    # "dateDialog":Landroid/app/DatePickerDialog;
    :cond_6
    move-object/from16 v6, p8

    move-object v2, v12

    move-object v3, v15

    .line 116
    :goto_4
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZLcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # Ljava/util/Calendar;
    .param p3, "x3"    # Ljava/util/Calendar;
    .param p4, "x4"    # Ljava/util/Calendar;
    .param p5, "x5"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p6, "x6"    # Z
    .param p7, "x7"    # Lcom/alibaba/fastjson/JSONObject;

    .line 30
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZLcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 6
    .param p0, "dateStr"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;

    .line 321
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 327
    .local v2, "calendar":Ljava/util/Calendar;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    nop

    .line 332
    return-object v2

    .line 328
    :catch_0
    move-exception v3

    .line 329
    .local v3, "e":Ljava/text/ParseException;
    const-string v4, "H5DatePlugin"

    const-string v5, "exception detail"

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    return-object v1

    .line 322
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v3    # "e":Ljava/text/ParseException;
    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 46
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "action":Ljava/lang/String;
    const-string v1, "datePicker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 50
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 41
    const-string v0, "datePicker"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 42
    return-void
.end method
