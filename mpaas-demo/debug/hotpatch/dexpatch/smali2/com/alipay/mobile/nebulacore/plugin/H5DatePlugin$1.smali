.class Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;
.super Ljava/lang/Object;
.source "H5DatePlugin.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;ZZLcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alibaba/fastjson/JSONObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Calendar;

.field final synthetic b:Ljava/util/Calendar;

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic e:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic f:Ljava/util/Calendar;

.field final synthetic g:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic h:Z

.field final synthetic i:I

.field final synthetic j:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Ljava/util/Calendar;Ljava/util/Calendar;ZLcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    .line 119
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->j:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->a:Ljava/util/Calendar;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->b:Ljava/util/Calendar;

    iput-boolean p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->c:Z

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->d:Lcom/alibaba/fastjson/JSONObject;

    iput-object p6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->e:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->f:Ljava/util/Calendar;

    iput-object p8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->g:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iput-boolean p9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->h:Z

    iput p10, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 16
    .param p1, "datePicker"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .line 123
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->a:Ljava/util/Calendar;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->b:Ljava/util/Calendar;

    if-eqz v3, :cond_2

    .line 124
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-gt v3, v1, :cond_0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->b:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->a:Ljava/util/Calendar;

    .line 125
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-lt v3, v1, :cond_1

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->a:Ljava/util/Calendar;

    .line 126
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    move v1, v3

    .line 129
    .end local p2    # "year":I
    .local v1, "year":I
    :cond_2
    add-int/lit8 v3, p3, 0x1

    const-string v4, "0"

    const/16 v5, 0xa

    if-ge v3, v5, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    add-int/lit8 v6, p3, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "monthStr":Ljava/lang/String;
    if-ge v2, v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "dayStr":Ljava/lang/String;
    :goto_2
    iget-boolean v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->c:Z

    const-string v6, "date"

    const-string v7, "/"

    if-eqz v5, :cond_5

    .line 134
    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->d:Lcom/alibaba/fastjson/JSONObject;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v8, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->j:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->e:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->f:Ljava/util/Calendar;

    iget-object v11, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->a:Ljava/util/Calendar;

    iget-object v12, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->b:Ljava/util/Calendar;

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->g:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-boolean v14, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->h:Z

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->d:Lcom/alibaba/fastjson/JSONObject;

    invoke-static/range {v8 .. v15}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZLcom/alibaba/fastjson/JSONObject;)V

    return-void

    .line 138
    :cond_5
    iget v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->i:I

    const/4 v8, 0x4

    if-ne v5, v8, :cond_6

    .line 139
    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->d:Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 140
    :cond_6
    const/4 v8, 0x3

    if-ne v5, v8, :cond_7

    .line 141
    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->d:Lcom/alibaba/fastjson/JSONObject;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 143
    :cond_7
    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->d:Lcom/alibaba/fastjson/JSONObject;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :goto_3
    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->g:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$1;->d:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v5, v6}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 147
    return-void
.end method
