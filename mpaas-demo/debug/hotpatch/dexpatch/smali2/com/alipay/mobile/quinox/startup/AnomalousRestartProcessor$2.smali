.class Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$2;
.super Ljava/lang/Object;
.source "AnomalousRestartProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    .line 127
    iput-object p1, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$2;->this$0:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 130
    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 131
    .local v1, "currentStartTime":J
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$2;->this$0:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    # getter for: Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->e:Landroid/content/Context;
    invoke-static {v4}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->access$100(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "framework_preferences"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, 0x0

    .line 132
    .local v4, "sp":Landroid/content/SharedPreferences;
    move-object v4, v3

    const-string v5, "processStartTimesPush"

    const-string v7, ""

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "historyStartTimes":Ljava/lang/String;
    iget-object v8, v0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$2;->this$0:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    # invokes: Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a(Ljava/lang/String;J)Ljava/util/List;
    invoke-static {v8, v3, v1, v2}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->access$200(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v8

    .line 134
    .local v8, "startTimeList":Ljava/util/List;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    iget-object v10, v0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$2;->this$0:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    const/4 v11, 0x5

    # invokes: Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a(Ljava/util/List;I)Ljava/lang/String;
    invoke-static {v10, v8, v11}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->access$300(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v5, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-gtz v9, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lt v9, v11, :cond_3

    .line 141
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v11, 0x4

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long/2addr v9, v11

    const-wide/32 v11, 0xea60

    div-long/2addr v9, v11

    .line 143
    .local v9, "gapMinutes":J
    const-wide/16 v11, 0x0

    cmp-long v13, v11, v9

    if-gtz v13, :cond_2

    const-wide/16 v13, 0x3c

    cmp-long v15, v9, v13

    if-gez v15, :cond_2

    .line 145
    iget-object v11, v0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$2;->this$0:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    # invokes: Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a(J)Z
    invoke-static {v11, v12, v13}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->access$500(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;J)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 146
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v12, "ClientAnomalousRestart"

    const-string v13, "PushProcess Restart 5 Times In 60 Minutes."

    invoke-static/range {v12 .. v17}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 147
    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 150
    :cond_1
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 151
    :cond_2
    cmp-long v6, v9, v11

    if-gez v6, :cond_3

    .line 153
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    .end local v9    # "gapMinutes":J
    :cond_3
    return-void

    .line 137
    :cond_4
    :goto_0
    return-void
.end method
