.class final Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$3;
.super Ljava/lang/Object;
.source "AUNumberKeyBoardUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->stateChange(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;

    .line 211
    iput-object p1, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$3;->b:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;

    iput p2, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 214
    # getter for: Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mScrollView to  = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$3;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$3;->b:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;

    # getter for: Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->access$400(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;)Landroid/widget/ScrollView;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$3;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 216
    return-void
.end method
