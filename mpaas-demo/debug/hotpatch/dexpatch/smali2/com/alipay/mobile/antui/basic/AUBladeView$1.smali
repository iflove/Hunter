.class final Lcom/alipay/mobile/antui/basic/AUBladeView$1;
.super Ljava/lang/Object;
.source "AUBladeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/basic/AUBladeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUBladeView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/basic/AUBladeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/basic/AUBladeView;

    .line 221
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUBladeView$1;->a:Lcom/alipay/mobile/antui/basic/AUBladeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView$1;->a:Lcom/alipay/mobile/antui/basic/AUBladeView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUBladeView;->mPopupWindow:Lcom/alipay/mobile/antui/basic/AUPopupWindow;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUBladeView;->access$000(Lcom/alipay/mobile/antui/basic/AUBladeView;)Lcom/alipay/mobile/antui/basic/AUPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView$1;->a:Lcom/alipay/mobile/antui/basic/AUBladeView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUBladeView;->mPopupWindow:Lcom/alipay/mobile/antui/basic/AUPopupWindow;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUBladeView;->access$000(Lcom/alipay/mobile/antui/basic/AUBladeView;)Lcom/alipay/mobile/antui/basic/AUPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUPopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AUBladeView"

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
