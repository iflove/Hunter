.class Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;
.super Ljava/lang/Object;
.source "MPaaSCheckVersionServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->dealHasNewVersion(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$upgradePackageState:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;Landroid/app/Activity;I)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->val$upgradePackageState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v0}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$100(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v0}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$100(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/SharePreferenceUtil;->setUpgradeVersion(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->val$activity:Landroid/app/Activity;

    const-string v1, "MPaaSCheckVersionServiceImpl"

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 132
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->val$upgradePackageState:I

    const/4 v2, 0x1

    if-ne v2, v0, :cond_2

    .line 133
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "\u4e0d\u5f39\u4efb\u4f55\u6846 "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 134
    :cond_2
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xce

    const/16 v5, 0xcb

    if-ne v1, v0, :cond_5

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mPaaSCheckCallBack:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;
    invoke-static {v0}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mPaaSCheckCallBack:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;
    invoke-static {v0}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->val$activity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    .line 138
    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v6}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$100(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    .line 139
    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v7}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$100(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v7

    iget-object v7, v7, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v5, :cond_4

    iget-object v5, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v5}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$100(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v5

    iget-object v5, v5, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 137
    :cond_4
    :goto_0
    invoke-interface {v0, v1, v6, v2}, Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;->alreadyDownloaded(Landroid/app/Activity;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Z)V

    goto/16 :goto_3

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mPaaSCheckCallBack:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;
    invoke-static {v0}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 147
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 146
    const-string v1, "mpaas_upgrade"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 149
    const-wide/16 v6, -0x1

    const-string v1, "last_showdialog_time"

    invoke-virtual {v0, v1, v6, v7}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    .line 152
    iget-object v6, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v6}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$100(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v7

    # invokes: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->getIntervalTime(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)J
    invoke-static {v6, v7}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$500(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)J

    move-result-wide v6

    .line 153
    iget-object v10, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v10}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$100(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v10

    iget-object v10, v10, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0xca

    if-ne v10, v11, :cond_7

    iget-object v10, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    .line 154
    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v10}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$100(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v10

    iget-object v10, v10, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v11, :cond_6

    cmp-long v10, v8, v6

    if-lez v10, :cond_6

    goto :goto_1

    .line 160
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last show dialog time is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". realIntervalTime is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", interval time is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " , realIntervalTime < intervalTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    const-string v1, "com.alipay.mobile.android.security.upgrade.BuildConfig"

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/api/utils/SdkVersionUtil;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 167
    const-string v3, "msg"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/logging/api/BizType;->UPGRADE:Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v5, "Upgrade_onLimit"

    invoke-interface {v3, v5, v4, v1, v2}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;Ljava/util/Map;)V

    .line 170
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mPaaSCheckCallBack:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;
    invoke-static {v1}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v3}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$100(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;->onLimit(Landroid/app/Activity;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Ljava/lang/String;)V

    goto :goto_3

    .line 155
    :cond_7
    :goto_1
    iget-object v6, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mPaaSCheckCallBack:Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;
    invoke-static {v6}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->val$activity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v8}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$100(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v8

    iget-object v9, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    .line 156
    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v9}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$100(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v9

    iget-object v9, v9, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v5, :cond_9

    iget-object v5, p0, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v5}, Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;->access$100(Lcom/alipay/mobile/upgrade/service/mpaas/impl/MPaaSCheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v5

    iget-object v5, v5, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_8

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    .line 155
    :cond_9
    :goto_2
    invoke-interface {v6, v7, v8, v2}, Lcom/alipay/mobile/upgrade/service/mpaas/MPaaSCheckVersionService$MPaaSCheckCallBack;->showUpgradeDialog(Landroid/app/Activity;Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Z)V

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putLong(Ljava/lang/String;J)Z

    .line 158
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 175
    :cond_a
    :goto_3
    return-void

    .line 129
    :cond_b
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "activity is null or activity is finishing"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method
