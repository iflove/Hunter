.class Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$2;
.super Ljava/lang/Object;
.source "CheckVersionServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->dealHasNewVersion(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$upgradeIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic val$upgradePackageState:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$2;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$2;->val$upgradePackageState:I

    iput-object p4, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$2;->val$upgradeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v0}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v0

    if-nez v0, :cond_0

    .line 204
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v0}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/SharePreferenceUtil;->setUpgradeVersion(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$2;->val$activity:Landroid/app/Activity;

    const-string v1, "CheckVersionServiceImpl"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 211
    :cond_1
    const/4 v0, 0x1

    iget v2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$2;->val$upgradePackageState:I

    if-ne v0, v2, :cond_2

    .line 212
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "\u4e0d\u5f39\u4efb\u4f55\u6846 "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_2
    const/4 v0, 0x2

    if-ne v0, v2, :cond_3

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v0}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$2;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$2;->val$upgradeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->showSilentDialog(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$2;->this$0:Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    # getter for: Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->mClientUpgradeRes:Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    invoke-static {v0}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->access$000(Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;)Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$2;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl$2;->val$upgradeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->showNormalDialog(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    .line 218
    :goto_0
    return-void

    .line 208
    :cond_4
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "activity is null or activity is finishing"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method
