.class final Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$2;
.super Landroid/os/ResultReceiver;
.source "AUNumberKeyBoardUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->hideSysKeyboard()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;

    .line 141
    iput-object p1, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$2;->a:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 144
    # getter for: Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onReceiveResult"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$2;->a:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;

    # getter for: Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->access$300(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$2$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$2$1;-><init>(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$2;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    return-void
.end method
