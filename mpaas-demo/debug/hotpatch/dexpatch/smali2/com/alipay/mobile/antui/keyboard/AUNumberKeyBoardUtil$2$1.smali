.class final Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$2$1;
.super Ljava/lang/Object;
.source "AUNumberKeyBoardUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$2;->onReceiveResult(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$2;

    .line 146
    iput-object p1, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$2$1;->a:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$2$1;->a:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$2;

    iget-object v0, v0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$2;->a:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;

    # getter for: Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;
    invoke-static {v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->access$200(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;)Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->show()V

    .line 150
    return-void
.end method
