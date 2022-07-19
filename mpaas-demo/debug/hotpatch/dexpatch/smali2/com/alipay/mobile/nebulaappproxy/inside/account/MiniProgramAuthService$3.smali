.class Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$3;
.super Ljava/lang/Object;
.source "MiniProgramAuthService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->openMiniProgram(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

.field final synthetic val$params:Landroid/os/Bundle;

.field final synthetic val$sourceAppId:Ljava/lang/String;

.field final synthetic val$targetAppId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    .line 198
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$3;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$3;->val$sourceAppId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$3;->val$targetAppId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$3;->val$params:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$3;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->access$000(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$3;->val$sourceAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$3;->val$targetAppId:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$3;->val$params:Landroid/os/Bundle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->openMiniProgramByInside(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 202
    return-void
.end method
