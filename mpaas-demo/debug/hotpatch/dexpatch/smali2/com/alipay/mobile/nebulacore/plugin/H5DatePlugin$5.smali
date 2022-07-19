.class Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;
.super Ljava/lang/Object;
.source "H5DatePlugin.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZLcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic c:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic d:Ljava/util/Calendar;

.field final synthetic e:Ljava/util/Calendar;

.field final synthetic f:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    .line 224
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->f:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->a:Lcom/alibaba/fastjson/JSONObject;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->c:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->d:Ljava/util/Calendar;

    iput-object p6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->e:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 17
    .param p1, "timePicker"    # Landroid/widget/TimePicker;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->a:Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "date"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v3

    .line 228
    .local v4, "date":Ljava/lang/String;
    move-object v4, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    const-string v4, ""

    .line 232
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v3

    .line 233
    .local v5, "builder":Ljava/lang/StringBuilder;
    move-object v5, v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p3

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ":00"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    nop

    .line 236
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "HH:mm:ss"

    goto :goto_0

    :cond_1
    const-string v6, "yyyy/MM/dd HH:mm:ss"

    :goto_0
    invoke-static {v1, v6}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 238
    .local v3, "selectedDate":Ljava/util/Calendar;
    move-object v3, v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    if-eqz v1, :cond_2

    .line 239
    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->c:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v6, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v1, v2, v6}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 240
    return-void

    .line 243
    :cond_2
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->d:Ljava/util/Calendar;

    const-string v6, "H5DatePlugin"

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 244
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v1, v11, v13

    if-lez v1, :cond_3

    .line 245
    const-string v1, "set selected date as min date"

    invoke-static {v6, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->d:Ljava/util/Calendar;

    .line 249
    :cond_3
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->e:Ljava/util/Calendar;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 250
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v1, v11, v13

    if-gez v1, :cond_4

    .line 251
    const-string v1, "set selected date as max date"

    invoke-static {v6, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->e:Ljava/util/Calendar;

    .line 254
    :cond_4
    if-nez v3, :cond_5

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    if-eqz v1, :cond_5

    .line 255
    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->c:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v6, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v1, v2, v6}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 256
    return-void

    .line 259
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v1, "dateResult":Ljava/lang/StringBuilder;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v12, "0"

    const/16 v13, 0xa

    if-nez v11, :cond_8

    .line 261
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 262
    .local v11, "year":I
    const/4 v14, 0x2

    invoke-virtual {v3, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 263
    .local v14, "month":I
    const/4 v15, 0x5

    invoke-virtual {v3, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 264
    .local v15, "day":I
    move-object/from16 v16, v4

    .end local v4    # "date":Ljava/lang/String;
    .local v16, "date":Ljava/lang/String;
    add-int/lit8 v4, v14, 0x1

    if-ge v4, v13, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    add-int/lit8 v13, v14, 0x1

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, "monthStr":Ljava/lang/String;
    const/16 v13, 0xa

    if-ge v15, v13, :cond_7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_7
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 267
    .local v13, "dayStr":Ljava/lang/String;
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 260
    .end local v11    # "year":I
    .end local v13    # "dayStr":Ljava/lang/String;
    .end local v14    # "month":I
    .end local v15    # "day":I
    .end local v16    # "date":Ljava/lang/String;
    .local v4, "date":Ljava/lang/String;
    :cond_8
    move-object/from16 v16, v4

    .line 270
    .end local v4    # "date":Ljava/lang/String;
    .restart local v16    # "date":Ljava/lang/String;
    :goto_3
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 271
    .end local p2    # "hour":I
    .local v4, "hour":I
    const/16 v7, 0xc

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 273
    .end local p3    # "minute":I
    .local v7, "minute":I
    const/16 v9, 0xa

    if-ge v4, v9, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_9
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 274
    .local v9, "hourStr":Ljava/lang/String;
    :goto_4
    const/16 v11, 0xa

    if-ge v7, v11, :cond_a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_a
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 275
    .local v11, "minuteStr":Ljava/lang/String;
    :goto_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget-object v8, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v2, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$5;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v2, v6}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 280
    return-void
.end method
