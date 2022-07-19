.class Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$2;
.super Ljava/lang/Object;
.source "MiniProgramAuthService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->openMiniProgram(Ljava/lang/String;ILjava/lang/String;Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

.field final synthetic val$appIconResId:I

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$callback:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    .line 153
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$2;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$2;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$2;->val$appName:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$2;->val$callback:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;

    iput p5, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$2;->val$appIconResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$2;->val$appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$2;->val$appName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$2;->val$callback:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;

    if-nez v0, :cond_1

    .line 161
    return-void

    .line 165
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$2;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    # setter for: Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->mAuthCallback:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->access$102(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;)Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$2;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->mStorageManager:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->access$200(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;)Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;->isMiniProgramGotoAuthFirstTime()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$2;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->access$000(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 169
    .local v1, "intent":Landroid/content/Intent;
    move-object v1, v0

    const-string v2, "appName"

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$2;->val$appName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v0, "appId"

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$2;->val$appId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v0, "appIconResId"

    iget v2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$2;->val$appIconResId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$2;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->access$000(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 174
    .end local v1    # "intent":Landroid/content/Intent;
    return-void

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$2;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->mAuthCallback:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->access$100(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;)Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;->startAlipayAuth()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    return-void

    .line 178
    :catchall_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "openMiniProgram...e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiniProgramAuthService"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void

    .line 157
    :cond_3
    :goto_0
    return-void
.end method
