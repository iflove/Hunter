.class final Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$5;
.super Ljava/lang/Object;
.source "UcVideoSetup.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->initVideoControl(Landroid/content/Context;ZLjava/lang/String;ZZ)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$downloadApolloIn4G:Z


# direct methods
.method constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$5;->val$downloadApolloIn4G:Z

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4

    .line 75
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$5;->val$downloadApolloIn4G:Z

    const-string v1, "H5UcService::UcVideoSetup"

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "downloadApolloIn4G config yes"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$5;->val$context:Landroid/content/Context;

    .line 80
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string v2, "WIFI"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 81
    .local v0, "isWifi":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUCPlayer isWifi "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$5;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
