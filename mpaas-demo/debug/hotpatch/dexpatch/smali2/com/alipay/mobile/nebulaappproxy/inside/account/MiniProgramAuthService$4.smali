.class Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$4;
.super Ljava/lang/Object;
.source "MiniProgramAuthService.java"

# interfaces
.implements Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->showDialog(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    .line 330
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$4;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 333
    const-string v0, "MiniProgramAuthService"

    const-string v1, "handleLoginTokenInvalid click positive"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService$4;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->closeAppAndNotify()V
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->access$300(Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;)V

    .line 335
    return-void
.end method
