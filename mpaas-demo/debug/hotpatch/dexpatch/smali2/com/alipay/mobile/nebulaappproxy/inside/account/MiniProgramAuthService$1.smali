.class Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$1;
.super Ljava/lang/Object;
.source "MiniProgramAuthService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->openMiniProgram(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$params:Landroid/os/Bundle;

.field final synthetic val$sourceAppId:Ljava/lang/String;

.field final synthetic val$targetAppId:Ljava/lang/String;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    .line 105
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$1;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$1;->val$targetAppId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$1;->val$appName:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$1;->val$userId:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$1;->val$token:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$1;->val$sourceAppId:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$1;->val$params:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$1;->val$targetAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$1;->val$appName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$1;->val$userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$1;->val$token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 129
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$1;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->access$000(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$1;->val$sourceAppId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$1;->val$targetAppId:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$1;->val$userId:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$1;->val$token:Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$1;->val$params:Landroid/os/Bundle;

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->openMiniProgramByInside(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "openMiniProgram...e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiniProgramAuthService"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void

    .line 113
    :cond_2
    :goto_0
    return-void

    .line 109
    :cond_3
    :goto_1
    return-void
.end method
