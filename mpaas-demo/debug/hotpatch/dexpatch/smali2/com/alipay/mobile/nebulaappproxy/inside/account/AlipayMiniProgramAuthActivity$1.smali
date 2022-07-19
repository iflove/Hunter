.class Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity$1;
.super Ljava/lang/Object;
.source "AlipayMiniProgramAuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->openMiniProgramOrDoAuth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;

    .line 102
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity$1;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity$1;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->isLogined()Z
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->access$000(Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity$1;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->mAuthCallback:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->access$100(Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;)Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity$1;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->mAuthCallback:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->access$100(Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;)Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;->startAlipayAuth()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    return-void

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "openMiniProgramOrDoAuth...e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlipayMiniProgramAuthActivity"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
