.class final Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$2;
.super Ljava/lang/Object;
.source "NwSharedSwitchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->removeSwitch(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$2;->val$context:Landroid/content/Context;

    .line 257
    const-string/jumbo v1, "sdkSharedSwitch"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 258
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    .line 259
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    move-object v1, v0

    const-string/jumbo v2, "netsdk_normal_switch"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 260
    const-string v0, "android_network_core"

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 261
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    const-string v4, "NwSharedSwitchUtil"

    if-eqz v3, :cond_0

    .line 262
    const-string/jumbo v3, "removeSwitch commit success!"

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_0
    const-string/jumbo v3, "removeSwitch commit fail!"

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->getInstance()Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->deleteConfig(Ljava/lang/String;)I

    .line 268
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->getInstance()Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transport/config/db/NetworkConfigDAO;->deleteConfig(Ljava/lang/String;)I

    .line 269
    return-void
.end method
