.class Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$8;
.super Landroid/content/BroadcastReceiver;
.source "NebulaServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    .line 1148
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$8;->a:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "h5bugMeStartUpReceiver"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$8;->a:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NebulaService"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "h5bugMeStartUp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    return-void

    .line 1158
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1159
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "h5devType"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "h5devH5App"

    .line 1158
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1160
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5NebulaDebugProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5NebulaDebugProvider;

    const/4 v2, 0x0

    .line 1161
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5NebulaDebugProvider;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 1162
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5NebulaDebugProvider;->openDebugSetting()V

    return-void

    .line 1163
    :cond_1
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1164
    const-string v0, "\u627e\u4e0d\u5230nebuladebug\u63a5\u53e3\uff0c\u8bf7\u8054\u7cfb @\u6298\u6eaa"

    const/4 v3, 0x0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1166
    .end local v2    # "provider":Lcom/alipay/mobile/nebula/provider/H5NebulaDebugProvider;
    :cond_2
    return-void

    .line 1167
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$8;->a:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->openSettingPanel(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1171
    return-void

    .line 1169
    :catch_0
    move-exception v0

    .line 1170
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1173
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method
